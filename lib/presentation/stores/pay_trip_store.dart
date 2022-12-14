import 'package:jadu_ride_driver/core/common/navigation_option.dart';
import 'package:jadu_ride_driver/core/common/screen.dart';
import 'package:jadu_ride_driver/core/common/screen_wtih_extras.dart';
import 'package:jadu_ride_driver/core/common/socket_events.dart';
import 'package:jadu_ride_driver/core/domain/response/total_ride_fare_response.dart';
import 'package:jadu_ride_driver/core/domain/ride_ids.dart';
import 'package:jadu_ride_driver/presentation/stores/navigator.dart';
import 'package:jadu_ride_driver/utills/socket_io.dart';
import 'package:mobx/mobx.dart';

part 'pay_trip_store.g.dart';

class PayTripStore = IPayTripStore with _$PayTripStore;

abstract class IPayTripStore extends AppNavigator with Store {
  @observable
  TotalRideFareResponse? totalRideFareResponse;

  RideIds ids;

  IPayTripStore(this.ids);

  @action
  initiateRideFare(TotalRideFareResponse response) {
    totalRideFareResponse = response;
  }

  @action
  amountCollected() {
    SocketIO.client.emit(SocketEvents.completeRidePayment.value, ids.rideId);
  }

  navigateToReviewCustomer() {
    onChange(ScreenWithExtras(
        screen: Screen.rateCustomer,
        argument: ids,
        option: NavigationOption(option: Option.popPrevious)));
  }
}
