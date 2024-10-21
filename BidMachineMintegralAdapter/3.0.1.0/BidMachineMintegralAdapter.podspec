Pod::Spec.new do |spec|
  sourceName               = "BidMachineMintegralAdapter"
  adapterPath              = "0"
  sdkPath                  = "3.0.1"
  networkVersion           = "7.7.2"

  spec.name                = "#{sourceName}"
  spec.version             = "#{sdkPath}.#{adapterPath}"
  spec.summary             = "Bidmachine adapter for Mintegral"

  spec.homepage            = "https://bidmachine.io"
  spec.license             = { :type => 'Commercial', :text => 'https://bidmachine.io/sdk-license-agreement/' }
  spec.author              = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform            = :ios, "12.0"
  spec.swift_version       = "5.1"

  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.source = { :http => "https://bidmachine-ios.s3.amazonaws.com/BidMachineAdapters/#{sourceName}/#{spec.version}/#{sourceName}.zip" }
  spec.vendored_frameworks = "#{sourceName}-#{sdkPath}.#{adapterPath}/#{sourceName}.xcframework"

  spec.dependency "BidMachine", "~> #{sdkPath}"
  spec.dependency "MintegralAdSDK", "#{networkVersion}"
end
