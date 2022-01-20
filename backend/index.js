var admin = require("firebase-admin");
const { getFirestore, Timestamp, FieldValue } = require('firebase-admin/firestore');
const { v1: uuidv1 } = require('uuid');

var serviceAccount = require("./r-home-9fda6-firebase-adminsdk-55bt8-ad13f1ee24.json");

const express = require("express");
const app = express();

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

var disputeQueue = [];

const db = getFirestore();

const query = db.collection('disputes');

const timeWindowMs = 60000;

const observer = query.onSnapshot(querySnapshot => {
    docs = querySnapshot.docs.map(doc => doc.data()).filter(doc => (new Date(doc.creationDate.toDate().getTime() + timeWindowMs) - Date.now() > 0) && !disputeQueue.includes(doc.uuid));
    docs.forEach(doc => {
        console.log(`dispute with id ${doc.uuid} entered the system`);
        disputeQueue.push(doc.uuid);
        setTimeout(async function() {
            console.log(`dispute with id ${doc.uuid} is being verified`);
            const updatedDocRef = db.collection('disputes').doc(doc.uuid);
            const updatedDoc = await updatedDocRef.get();
            const data = updatedDoc.data();
            const usersVotedAgainst = data.usersVotedAgainst;
            const usersVotedIrrelevent = data.usersVotedIrrelevent;
            const usersVotedInFavour = data.usersVotedInFavour;
            const initialStake = data.initialStake; 
            
            if (usersVotedInFavour.length > usersVotedIrrelevent.length && usersVotedInFavour.length > usersVotedAgainst.length) {
                const uuidIssuer = uuidv1();
                const transactionIssuerDocRef = db.collection('user-data').doc(data.issuerUuid).collection('transactions').doc(uuidIssuer);
                const issuerAmount = initialStake + ((usersVotedIrrelevent.length * 10 + usersVotedAgainst.length * 10) / (usersVotedInFavour.length + 1));
                await transactionIssuerDocRef.set({
                    amount: issuerAmount,
                    paymentMethod: "token",
                    receiverId: data.issuerUuid,
                    receiverUsername: data.issuerUsername,
                    senderId: "",
                    senderUsername: "",
                    type: "close_dispute",
                    uuid: uuidIssuer,
                    ts: Timestamp.fromDate(new Date())
                });

                await db.collection('user-data').doc(data.issuerUuid).update({numTokens: FieldValue.increment(issuerAmount)})

                usersVotedInFavour.forEach(async user => {
                    const uuid = uuidv1();
                    const transactionDocRef = db.collection('user-data').doc(user).collection('transactions').doc(uuid);
                    const amount = 10 + ((usersVotedIrrelevent.length * 10 + usersVotedAgainst.length * 10) / (usersVotedInFavour.length + 1));
                    await transactionDocRef.set({
                        amount: amount,
                        paymentMethod: "token",
                        receiverId: user,
                        receiverUsername: "",
                        senderId: "",
                        senderUsername: "",
                        type: "close_dispute",
                        uuid: uuid,
                        ts: Timestamp.fromDate(new Date())
                    });

                    await db.collection('user-data').doc(user).update({numTokens: FieldValue.increment(amount)})
                });
            } else if (usersVotedIrrelevent.length > usersVotedInFavour.length && usersVotedIrrelevent.length > usersVotedAgainst.length) {
                const amount = 10 + ((initialStake + usersVotedInFavour.length * 10 + usersVotedAgainst.length * 10) / usersVotedIrrelevent.length);
                usersVotedIrrelevent.forEach(async user => {
                    const uuid = uuidv1();
                    const transactionDocRef = db.collection('user-data').doc(user).collection('transactions').doc(uuid);
                    await transactionDocRef.set({
                        amount: amount,
                        paymentMethod: "token",
                        receiverId: user,
                        receiverUsername: "",
                        senderId: "",
                        senderUsername: "",
                        type: "close_dispute",
                        uuid: uuid,
                        ts: Timestamp.fromDate(new Date())
                    });

                    await db.collection('user-data').doc(user).update({numTokens: FieldValue.increment(amount)})
                });
            } else {
                const amount = 10 + ((initialStake + usersVotedInFavour.length * 10 + usersVotedIrrelevent.length * 10) / usersVotedAgainst.length);
                usersVotedAgainst.forEach(async user => {
                    const uuid = uuidv1();
                    const transactionDocRef = db.collection('user-data').doc(user).collection('transactions').doc(uuid);
                    await transactionDocRef.set({
                        amount: amount,
                        paymentMethod: "token",
                        receiverId: user,
                        receiverUsername: "",
                        senderId: "",
                        senderUsername: "",
                        type: "close_dispute",
                        uuid: uuid,
                        ts: Timestamp.fromDate(new Date())
                    });

                    await db.collection('user-data').doc(user).update({numTokens: FieldValue.increment(amount)})
                });
            }

            console.log(`dispute with id ${doc.uuid} resolved`);
            disputeQueue.pop(doc.uuid);
        }, new Date(doc.creationDate.toDate().getTime() + timeWindowMs) - Date.now())
    });
    console.log(`Received query snapshot of size ${querySnapshot.size}`);
}, err => {
  console.log(`Encountered error: ${err}`);
});


const port = 8080;

app.get('/', function(req, res) {
  console.log("received ping");
  res.send('Hello World!')
});

app.listen(port, function() {
  console.log(`Example app listening on port ${port}!`)
});
