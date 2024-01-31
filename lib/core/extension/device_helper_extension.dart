
import 'package:flutter_responsive_framework/flutter_responsive_framework.dart';

extension DeviceHelperExtension on DeviceHelper {

  bool get isMobile => !isTablet && !isLargeScreen;

} 