import 'exception_utils.dart';

class SizeUtils {
  static final instance = SizeUtils();

  final deviceSize = _DeviceSize();

  final double appDefaultSpacing = 16.0;
  final double appDefaultSpacingSemiHalf = 12.0;
  final double appDefaultSpacingHalf = 8.0;
  final double appDefaultSpacingQuarter = 4.0;

  final double appDefaultSpacing20 = 20.0;
  final double appDefaultSpacing30 = 30.0;
  final double appDefaultSpacing40 = 40.0;

  final double appListSeparatorHeight = 6.0;
  final double appIconSize = 22.0;
  final double cardRadius = 4.0;

  SizeUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }
}

class _DeviceSize {}
