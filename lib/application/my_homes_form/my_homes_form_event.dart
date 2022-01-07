part of 'my_homes_form_bloc.dart';

@freezed
class MyHomesFormEvent with _$MyHomesFormEvent {
  const factory MyHomesFormEvent.initialize() = Initialize;
  const factory MyHomesFormEvent.nameChanged(String name) = NameChanged;
  const factory MyHomesFormEvent.locationChanged(String location) = LocationChanged;
  const factory MyHomesFormEvent.priceChanged(double price) = PriceChanged;
  const factory MyHomesFormEvent.adultsChange(int numberAdults) = AdultsChange;
  const factory MyHomesFormEvent.adultsAdd(int increment) = AdultsAdd;
  const factory MyHomesFormEvent.adultsRemove(int decrement) = AdultsRemove;
  const factory MyHomesFormEvent.childrenAdd(int increment) = ChildrenAdd;
  const factory MyHomesFormEvent.childrenChange(int numberChilds) = ChildrenChange;
  const factory MyHomesFormEvent.childrenRemove(int decrement) = ChildrenRemove;
  const factory MyHomesFormEvent.petsChange(int numberPets) = PetsChange;
  const factory MyHomesFormEvent.petsAdd(int increment) = PetsAdd;
  const factory MyHomesFormEvent.petsRemove(int decrement) = PetsRemove;
  const factory MyHomesFormEvent.onCreate() = Create;
  const factory MyHomesFormEvent.onUpdate(String docId) = Update;
}