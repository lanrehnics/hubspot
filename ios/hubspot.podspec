#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint hubspot.podspec` to validate before publishing.
#

Pod::Spec.new do |s|
  s.name             = 'hubspot'
  s.version          = '0.1.0'
  s.summary          = 'Hubspot mobile chat sdk beta for flutter'
  s.description      = <<-DESC
Hubspot mobile chat sdk beta for flutter.
  DESC

  s.homepage         = 'http://github.com/mastersam07/hubspot'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ShuttlersHQ' => 'abadasamuelosp@gmail.com' }
  s.source           = { :path => '.' }

  # iOS deployment target
  s.platform         = :ios, '15.0'

  # Flutter dependency
  s.dependency       'Flutter'

  # Pick up your Swift/ObjC plugin sources
  # Your structure is: hubspot/Sources/hubspot/HubspotPlugin.swift
  s.source_files     = 'hubspot/Sources/hubspot/**/*.{swift,h,m}'
  s.vendored_frameworks = 'Frameworks/HubspotMobileSDKWrapper.xcframework'


  # Swift settings
  s.swift_version    = '5.0'

  # Make sure CocoaPods builds a module so `@import hubspot;` works
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    # Flutter.framework doesn't contain i386 slice (older simulators)
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  # Helps avoid some integration issues with Swift-only pods in Flutter plugins
  s.static_framework = true

  # --- Optional: Privacy Manifest bundle (uncomment if you actually bundle resources) ---
  # If your plugin needs to ship a privacy manifest file, you typically place it under
  # hubspot/Resources/PrivacyInfo.xcprivacy and then enable this:
  #
  # s.resource_bundles = {
  #   'hubspot_privacy' => ['hubspot/Resources/PrivacyInfo.xcprivacy']
  # }
end
