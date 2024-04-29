Pod::Spec.new do |s|
  s.name             = 'TMGParseCore'
  s.version          = '1.19.7'
  s.license          =  { :type => 'BSD', :file => 'LICENSE' }
  s.homepage         = 'http://parseplatform.org/'
  s.summary          = 'A library that gives you access to the powerful Parse cloud platform from your iOS/OS X/watchOS/tvOS app.'
  s.authors          = 'Parse Community'
  s.social_media_url = 'https://twitter.com/ParsePlatform'

  s.source           = { :git => 'https://github.com/themeetgroup/Parse-SDK-iOS-OSX.git', :tag => s.version.to_s }

  s.platform = :ios
  s.ios.deployment_target = '13.0'

  s.module_name = 'TMGParseCore'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |s|
    s.requires_arc = true

    s.source_files = 'Parse/Parse/*.{h,m}',
                     'Parse/Parse/Internal/**/*.{h,m}'
    s.public_header_files = 'Parse/Parse/*.h'
    s.private_header_files = 'Parse/Parse/Internal/**/*.h'

    s.ios.exclude_files = 'Parse/Parse/Internal/PFMemoryEventuallyQueue.{h,m}'
    s.osx.exclude_files = 'Parse/Parse/PFNetworkActivityIndicatorManager.{h,m}',
                          'Parse/Parse/PFProduct.{h,m}',
                          'Parse/Parse/PFPurchase.{h,m}',
                          'Parse/Parse/Internal/PFAlertView.{h,m}',
                          'Parse/Parse/Internal/Product/**/*.{h,m}',
                          'Parse/Parse/Internal/Purchase/**/*.{h,m}',
                          'Parse/Parse/Internal/PFMemoryEventuallyQueue.{h,m}'
    s.tvos.exclude_files = 'Parse/Parse/PFNetworkActivityIndicatorManager.{h,m}',
                           'Parse/Parse/Internal/PFAlertView.{h,m}'
    s.watchos.exclude_files = 'Parse/Parse/PFNetworkActivityIndicatorManager.{h,m}',
                              'Parse/Parse/PFProduct.{h,m}',
                              'Parse/Parse/PFPurchase.{h,m}',
                              'Parse/Parse/PFPush.{h,m}',
                              'Parse/Parse/PFPush+Synchronous.{h,m}',
                              'Parse/Parse/PFPush+Deprecated.{h,m}',
                              'Parse/Parse/PFInstallation.{h,m}',
                              'Parse/Parse/Internal/PFAlertView.{h,m}',
                              'Parse/Parse/Internal/PFReachability.{h,m}',
                              'Parse/Parse/Internal/Product/**/*.{h,m}',
                              'Parse/Parse/Internal/Purchase/**/*.{h,m}',
                              'Parse/Parse/Internal/Push/**/*.{h,m}',
                              'Parse/Parse/Internal/Installation/Controller/*.{h,m}',
                              'Parse/Parse/Internal/Installation/Constants/*.{h,m}',
                              'Parse/Parse/Internal/Installation/CurrentInstallationController/*.{h,m}',
                              'Parse/Parse/Internal/Installation/PFInstallationPrivate.h',
                              'Parse/Parse/Internal/Commands/PFRESTPushCommand.{h,m}',
                              'Parse/Parse/Internal/PFMemoryEventuallyQueue.{h,m}'

    s.resource_bundle = { 'Parse' => 'Parse/Parse/Resources/en.lproj' }

    s.ios.frameworks = 'AudioToolbox',
                       'CFNetwork',
                       'CoreGraphics',
                       'CoreLocation',
                       'QuartzCore',
                       'Security',
                       'StoreKit',
                       'SystemConfiguration'
    s.ios.weak_frameworks = 'Accounts',
                            'Social'
    s.osx.frameworks = 'ApplicationServices',
                       'CFNetwork',
                       'CoreGraphics',
                       'CoreLocation',
                       'QuartzCore',
                       'Security',
                       'SystemConfiguration'
    s.tvos.frameworks = 'CoreLocation',
                        'StoreKit',
                        'SystemConfiguration',
                        'Security'

    s.libraries        = 'z', 'sqlite3'

    s.dependency 'Bolts/Tasks', '1.9.1'
  end

end
