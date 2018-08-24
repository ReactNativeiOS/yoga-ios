


#
#  Be sure to run `s.dependency spec lint AFNetworking_PinLib.s.dependencyspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "yoga-ios"
  s.version      = "0.56.1"
  s.summary      = "yoga Source for React Native iOS"
  s.homepage     = "https://github.com/ReactNativeiOS/yoga-ios"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }

  s.author             = { "wade0317" => "weishqdev@gmail.com" }
  

  s.ios.deployment_target = '9.0'


  s.source       = {:git => "https://github.com/ReactNativeiOS/yoga-ios.git", :tag => "#{s.version}"}

  s.source_files  = "yoga/**/*.{cpp,h}"
  
  s.public_header_files  = 'yoga/{Yoga,YGEnums,YGMacros}.h'


  s.module_name = 'yoga'
  s.requires_arc = false
  s.compiler_flags = [
      '-fno-omit-frame-pointer',
      '-fexceptions',
      '-Wall',
      '-Werror',
      '-std=c++1y',
      '-fPIC'
  ]

  s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/yoga-ios/**"', 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/yoga-ios/**"'}


end
