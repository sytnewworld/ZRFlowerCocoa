Pod::Spec.new do |s|

  s.name         = "ZRFlowerCocoa"
  s.version      = "0.0.7"
  s.summary      = "A framework for editting code expediently."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                   A framework for editting code expediently.
                   
                   * use UIKit framework more convenient.
                   * contain a series of practical and efficient objects.
                   * create a few extensions and constant files.                                                                                                              
                   DESC

  s.homepage     = "https://github.com/sytnewworld/ZRFlowerCocoa"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "sytnewworld" => "sytnewworld@gmail.com" }
  # Or just: s.author    = "sytnewworld"
  # s.authors            = { "sytnewworld" => "sytnewworld@gmail.com" }
  # s.social_media_url   = "http://twitter.com/sytnewworld"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "6.0"

  #  When using multiple platforms
  s.ios.deployment_target = "6.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/sytnewworld/ZRFlowerCocoa.git", :tag => "0.0.7" }

  # Exclude optional Search and Testing modules
  s.default_subspec = "Core"

  ### Subspecs
  
  s.subspec 'Core' do |cs|
    cs.dependency "ZRFlowerCocoa/ZRConstant"
    cs.dependency "ZRFlowerCocoa/ZRFoundation"
    cs.dependency "ZRFlowerCocoa/ZRKit"
  end 

  s.subspec 'ZRConstant' do |css|
    css.source_files = "ZRFlowerCocoa/ZRConstant.h", "ZRFlowerCocoa/ZRConstant/**/*.{h,m}"
  end

  s.subspec 'ZRFoundation' do |fds|
    fds.source_files  = "ZRFlowerCocoa/ZRFoundation.h", "ZRFlowerCocoa/ZRFoundation/**/*.{h,m}"
    fds.ios.framework = "Foundation"
  end

  s.subspec 'ZRKit' do |ks|
    ks.source_files = "ZRFlowerCocoa/ZRKit.h", "ZRFlowerCocoa/ZRKit/**/*.{h,m}"
    ks.ios.frameworks = "UIKit", "CoreImage"
    ks.dependency "ZRFlowerCocoa/ZRConstant"
  end

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # s.source_files  = "ZRFlowerCocoa", "ZRFlowerCocoa/**/*.{h,m}"
  # s.exclude_files = "ZRFlowerCocoa/Exclude"

  # s.public_header_files = "ZRFlowerCocoa/ZRFlowerCocoa.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "CoreImage", "UIKit"

  
  

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
