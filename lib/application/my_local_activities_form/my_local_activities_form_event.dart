part of 'my_local_activities_form_bloc.dart';

@freezed
class MyLocalActivitiesFormEvent with _$MyLocalActivitiesFormEvent {
  const factory  MyLocalActivitiesFormEvent.initialize(Option<LocalActivity> initialActivityOption) = Initialize;
  const factory  MyLocalActivitiesFormEvent.nameChanged(String name) = NameChanged;
  const factory  MyLocalActivitiesFormEvent.locationChanged(String location) = LocationChanged;
  const factory  MyLocalActivitiesFormEvent.priceChanged(double price) = PriceChanged;
  const factory  MyLocalActivitiesFormEvent.contactChanged(int contact) = ContactChanged;
  const factory  MyLocalActivitiesFormEvent.submit() = Submit;
}