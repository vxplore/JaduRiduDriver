import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:jadu_ride_driver/core/common/lat_long.dart';
import 'package:jadu_ride_driver/core/common/socket_events.dart';
import 'package:jadu_ride_driver/core/domain/ride_canceled_response.dart';
import 'package:jadu_ride_driver/core/domain/ride_location_response.dart';
import 'package:jadu_ride_driver/core/repository/ride_navigation_repository.dart';

import '../core/domain/cilent_waiting_response.dart';
import '../utills/socket_io.dart';

class RideNavigationRepositoryImpl implements RideNavigationRepository {
  /*@override
  StreamController<Object> ride(RideNavigationData ids) {
    StreamController<Object> sender = StreamController();
    SocketIO.client.on(SocketEvents.rideNavigation.value, (data) {
      debugPrint("rideInitiateData $data");
      sender.add(RideInitiateData.fromJson(data));
    });

    return sender;
  }*/

  @override
  updateCurrentLocation(String rideId,LatLong latLong, String customerId, String userId) {
    debugPrint("liveLocation");
    SocketIO.client.emit(SocketEvents.updateCurrentLocation.value, {
      "rideId":rideId,
      "currentLocation": latLong.toJson(),
      "customerId": customerId,
      "driverId": userId
    });
  }

  @override
  StreamController<RideCanceledResponse> onCancelRide() {
    StreamController<RideCanceledResponse> controller = StreamController();

    SocketIO.client.on(SocketEvents.rideCanceled.value, (data) {
      debugPrint("rideCanceled $data");
      controller.add(RideCanceledResponse.fromJson(data));
    });

    return controller;
  }

  @override
  StreamController clientLocated() {
    StreamController<dynamic> listener = StreamController();

    /*listener.add(ClientWaitingResponse(
        clientTimer: CustomerWaitingTimer(min: 1, second: 0),
        rideStage: RideStages.waiting.key));*/

    SocketIO.client.on(SocketEvents.clientLocated.value, (data) {
      debugPrint("clientLocated $data");
      var response = ClientWaitingResponse.fromJson(data);
      listener.add(response);
    });

    return listener;
  }

  @override
  onRide(String rideInstruction, String rideId) {
    SocketIO.client.emit(
        SocketEvents.onRide.value, {"rideId": rideId, "type": rideInstruction});
  }
}
