require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'RNXMPP'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/reylen/react-native-xmpp-z.git', :tag => s.version }

  s.requires_arc        = true
  s.platform            = :ios, '10.0'

  s.dependency 'React-Core'
  s.dependency 'XMPPFramework'
  s.preserve_paths      = 'package.json', 'index.js'
  s.source_files        = 'ios/RNXMPP/XMPPFramework.h', 'ios/RNXMPP/RNXMPPService.m', 'ios/RNXMPP/RNXMPPService.h', 'ios/RNXMPP/RNXMPPConstants.h', 'ios/RNXMPP/RNXMPPConstants.m', 'ios/RNXMPP/RNXMPP.h', 'ios/RNXMPP/RNXMPP.m'
end
