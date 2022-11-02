import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:plebo_india_project/custom_widgets/custom_text.dart';
import 'package:plebo_india_project/custom_widgets/custom_widget.dart';
import 'package:plebo_india_project/provider/location_provider.dart';
import 'package:plebo_india_project/utils/color_utils.dart';

import '../database/database.dart';
import '../provider/utils/provider_utility.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  Timer? timer;
  List<LocationModelData> listOfLocation = [];
  late final _locationProvider = ref.watch<LocationProvider>(locationProvider);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _locationProvider.getCurrentLocation();
      timer = Timer.periodic(const Duration(minutes: 30),
              (Timer t) => _locationProvider.getCurrentLocation());
      _locationProvider.getAddress().listen((event) {
        listOfLocation = event;
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.greyButtonBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0.0,
        leading: _appBarIcon(),
        title: CustomText.textBlackColorBold(
          context,
          'LocateMe',
          textSize: 22.0,
        ),
      ),
      body: ListView.builder(
          itemCount: listOfLocation.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = listOfLocation[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: _mainWidgetUI(item),
            );
          }),
    );
  }

  Widget _appBarIcon() {
    return Container(
      padding: const EdgeInsets.all(6.0),
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(
          color: ColorUtils.darkBlackColor,
          width: 2.0,
        ),
      ),
      child: Image.asset(
        'assets/location.png',
      ),
    );
  }

  Widget _mainWidgetUI(LocationModelData item) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: ColorUtils.whiteColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: _locationIconUI(),
          ),
          CustomWidget.getDefaultWidthSizedBox(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _sectorLocalityUI(item),
                CustomWidget.getHalfHeightSizedBox(),
                _countryAndTimeUI(item),
                CustomWidget.getHalfHeightSizedBox(),
                _latLongUI(item),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _locationIconUI(){
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.primaries[Random().nextInt(
              Colors.primaries.length) ]
      ),
      child: Center(
        child: Icon(
          Icons.location_on_outlined,
          color: ColorUtils.whiteColor,
          size: 30.0,
        ),
      ),
    );
  }

  Widget _sectorLocalityUI(LocationModelData item){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText.textBlackColorBold(
          context,
          '${item.sector},' ?? '',
          textSize: 19.0,
        ),
        CustomWidget.getHalfWidthSizedBox(),
        CustomText.textBlackColorBold(
            context, '${item.locality},' ?? ''),
        CustomWidget.getHalfWidthSizedBox(),
        CustomText.textBlackColorBold(
            context, '${item.state},' ?? ''),
      ],
    );
  }

  Widget _countryAndTimeUI(LocationModelData item){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText.textBlackColorRegular(
            context, '${item.pinCode},' ?? ''),
        CustomWidget.getHalfWidthSizedBox(),
        CustomText.textBlackColorRegular(
            context, '${item.country},' ?? ''),
        CustomWidget.getHalfWidthSizedBox(),
        CustomText.textBlackColorRegular(context, item.date ?? ''),
      ],
    );
  }

  Widget _latLongUI(LocationModelData item){
    return Row(
      children: [
        CustomText.textBlackColorRegular(
            context, 'Lat: ${item.lat}' ?? ''),
        CustomWidget.getHalfWidthSizedBox(),
        CustomText.textBlackColorRegular(
            context, 'Long: ${item.long}' ?? ''),
      ],
    );
  }
}
