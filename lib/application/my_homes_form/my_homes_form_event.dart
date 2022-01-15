part of 'my_homes_form_bloc.dart';

@freezed
class MyHomesFormEvent with _$MyHomesFormEvent {
  const factory MyHomesFormEvent.initialize(Option<Home> initialHomeOption) = Initialize;
  const factory MyHomesFormEvent.localActivitiesChanged(List<LocalActivity> localActivities) = LocalActivitiesChanged;
  const factory MyHomesFormEvent.categoryChanged(ActivityCategory? activityCategory) = CategoryChanged;
  const factory MyHomesFormEvent.changeLocalActivity(LocalActivity localActivity) = LocalActivityReceived;
  const factory MyHomesFormEvent.nameChanged(String name) = NameChanged;
  const factory MyHomesFormEvent.locationChanged(String location) = LocationChanged;
  const factory MyHomesFormEvent.priceChanged(double price) = PriceChanged;
  const factory MyHomesFormEvent.adultsAdd(int increment) = AdultsAdd;
  const factory MyHomesFormEvent.adultsRemove(int decrement) = AdultsRemove;
  const factory MyHomesFormEvent.childrenAdd(int increment) = ChildrenAdd;
  const factory MyHomesFormEvent.childrenRemove(int decrement) = ChildrenRemove;
  const factory MyHomesFormEvent.petsAdd(int increment) = PetsAdd;
  const factory MyHomesFormEvent.petsRemove(int decrement) = PetsRemove;
  const factory MyHomesFormEvent.submit() = Submit;
}