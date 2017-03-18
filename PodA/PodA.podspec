#
# Be sure to run `pod lib lint PodA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodA'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PodA.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/RishatShamsutdinov/PodA'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RishatShamsutdinov' => 'dichat.dark@gmail.com' }
  s.source           = { :git => 'https://github.com/RishatShamsutdinov/PodsXconfigMergeDemo-PodA.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |sp|
    sp.source_files = 'PodA/Classes/CoreA.*'

    sp.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'POD_A_DEFINE_CORE' }
    sp.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'POD_A_DEFINE_CORE' }
  end

  s.subspec 'Extra' do |sp|
    sp.dependency 'PodA/Core'

    sp.source_files = 'PodA/Classes/ExtraA.*'
    sp.pod_target_xcconfig = { 
      'APPLICATION_EXTENSION_API_ONLY' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => 'POD_A_DEFINE_EXTRA' 
    }
    sp.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'POD_A_DEFINE_EXTRA' }
  end

  s.default_subspec = 'Core'
end
