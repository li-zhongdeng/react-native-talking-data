require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-talking-data'
  s.version        = package['version'].gsub(/v|-beta/, '')
  s.summary        = package['description']
  s.author         = package['author']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/li-zhongdeng/react-native-talking-data.git', :tag => "v#{s.version}"}
  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'
  s.source_files = 'ios/RCTTalkingData/*.{h,m}'
  s.vendored_libraries = 'ios/RCTTalkingData/libTalkingData.a'
  s.dependency 'React-Core'
end