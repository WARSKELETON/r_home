var admin = require("firebase-admin");
const { getFirestore, Timestamp } = require('firebase-admin/firestore');
const { v1: uuidv1 } = require('uuid');

var serviceAccount = require("./r-home-9fda6-firebase-adminsdk-55bt8-ad13f1ee24.json");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

var disputeQueue = [];

const db = getFirestore();

const query = db.collection('disputes');

const observer = query.onSnapshot(querySnapshot => {
    docs = querySnapshot.docs.map(doc => doc.data()).filter(doc => (new Date(doc.creationDate.toDate().getTime() + 30000) - Date.now() > 0) && !disputeQueue.includes(doc.uuid));
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
                await transactionIssuerDocRef.set({
                    amount: initialStake + ((usersVotedIrrelevent.length * 10 + usersVotedAgainst.length * 10) / (usersVotedInFavour.length + 1)),
                    paymentMethod: "token",
                    receiverId: data.issuerUuid,
                    receiverUsername: data.issuerUsername,
                    senderId: "",
                    senderUsername: "",
                    type: "close_dispute",
                    uuid: uuidIssuer,
                    ts: Timestamp.fromDate(new Date())
                });

                usersVotedInFavour.forEach(user => {
                    const uuid = uuidv1();
                    const transactionDocRef = db.collection('user-data').doc(user).collection('transactions').doc(uuid);
                    await transactionDocRef.set({
                        amount: 10 + ((usersVotedIrrelevent.length * 10 + usersVotedAgainst.length * 10) / (usersVotedInFavour.length + 1)),
                        paymentMethod: "token",
                        receiverId: user,
                        receiverUsername: "",
                        senderId: "",
                        senderUsername: "",
                        type: "close_dispute",
                        uuid: uuid,
                        ts: Timestamp.fromDate(new Date())
                    });
                });
            } else if (usersVotedIrrelevent.length > usersVotedInFavour.length && usersVotedIrrelevent.length > usersVotedAgainst.length) {
                usersVotedIrrelevent.forEach(user => {
                    const uuid = uuidv1();
                    const transactionDocRef = db.collection('user-data').doc(user).collection('transactions').doc(uuid);
                    await transactionDocRef.set({
                        amount: 10 + ((initialStake + usersVotedInFavour.length * 10 + usersVotedAgainst.length * 10) / usersVotedIrrelevent.length),
                        paymentMethod: "token",
                        receiverId: user,
                        receiverUsername: "",
                        senderId: "",
                        senderUsername: "",
                        type: "close_dispute",
                        uuid: uuid,
                        ts: Timestamp.fromDate(new Date())
                    });
                });
            } else {
                usersVotedAgainst.forEach(user => {
                    const uuid = uuidv1();
                    const transactionDocRef = db.collection('user-data').doc(user).collection('transactions').doc(uuid);
                    await transactionDocRef.set({
                        amount: 10 + ((initialStake + usersVotedInFavour.length * 10 + usersVotedIrrelevent.length * 10) / usersVotedAgainst.length),
                        paymentMethod: "token",
                        receiverId: user,
                        receiverUsername: "",
                        senderId: "",
                        senderUsername: "",
                        type: "close_dispute",
                        uuid: uuid,
                        ts: Timestamp.fromDate(new Date())
                    });
                });
            }

            console.log(`dispute with id ${doc.uuid} resolved`);
            disputeQueue.pop(doc.uuid);
        }, new Date(doc.creationDate.toDate().getTime() + 30000) - Date.now())
    });
    console.log(`Received query snapshot of size ${querySnapshot.size}`);
}, err => {
  console.log(`Encountered error: ${err}`);
});
