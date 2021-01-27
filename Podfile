# Uncomment the next line to define a global platform for your project
platform :ios, '11.3'

use_frameworks!

workspace 'iOSModulesApp'

target 'Presentation' do
  
  xcodeproj 'Presentation/Presentation.xcodeproj'

  # Pods for Presentation
  pod 'Swinject'

  target 'PresentationTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PresentationUITests' do
    # Pods for testing
  end

end

target 'DataAccessLocal' do
  
  xcodeproj 'DataAccessLocal/DataAccessLocal.xcodeproj'

  # Pods for DataAccessLocal
  pod 'RealmSwift'

end

target 'DataAccessRemote' do
  
  xcodeproj 'DataAccessRemote/DataAccessRemote.xcodeproj'

  # Pods for DataAccessRemote

end

target 'DeviceHardware' do
  
  xcodeproj 'DeviceHardware/DeviceHardware.xcodeproj'

  # Pods for DeviceHardware

end

target 'Domain' do
  
  xcodeproj 'Domain/Domain.xcodeproj'

  # Pods for Domain

  target 'DomainTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'MockingbirdFramework'
    pod 'Cuckoo'
  end

end
