# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.


Pod::Spec.new do |spec|
  spec.name = 'Yoga'
  spec.version = '2.0.0-beta.1'
  spec.license =  { :type => 'MIT', :file => "LICENSE" }
  spec.homepage = 'https://yogalayout.com/'
  spec.documentation_url = 'https://yogalayout.com/docs'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.authors = 'Facebook'
  spec.source = {
    :git => 'https://github.com/facebook/yoga.git',
    :tag => "v#{spec.version.to_s}",
  }

  spec.ios.deployment_target = "13.4"

  spec.module_name = 'yoga'
  spec.requires_arc = false
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  spec.compiler_flags = [
      '-fno-omit-frame-pointer',
      '-fexceptions',
      '-Wall',
      '-Werror',
      '-Wextra',
      '-std=c++14',
      '-fPIC'
  ]
  spec.source_files = 'yoga/**/*.{h,cpp}'
  spec.public_header_files = 'yoga/{Yoga,YGEnums,YGMacros,YGValue}.h'
  spec.swift_version = '5.1'
  spec.exclude_files = 'yoga/swiftpm-support/*.h'
end
