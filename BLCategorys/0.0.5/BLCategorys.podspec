

Pod::Spec.new do |s|
  # 该库名, 要严格与外部的目录名称一致, 防止podspec找不到对应的资源
  s.name             = 'BLCategorys'
  

  # 要与github上打的标签一致
  s.version          = '0.0.5'
  

  # 该库的总结概要
  s.summary          = '私有组件, 基础分类'


  # 该库的描述信息
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  # 该库介绍时的来源主页
  s.homepage         = 'https://github.com/gushengya/iOS_BasicComponents'

  
  # 版权声明文件，可不要
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }


  # 该库的所有人
  s.author           = { '谷胜亚' => '15100991731@163.com' }


  # 该库的资源主页, 非常重要
  s.source           = { :git => 'git@github.com:gushengya/iOS_BasicComponents.git', :tag => s.version.to_s }


  # 该库在ios上最低支持的系统版本号, 非常重要
  s.ios.deployment_target = '13.0'


  # 该字段含义是资源文件路径是相对于.podspec文件所在目录而言的，最终会将这个路径内的文件导入到Pods内, 该字段与s.default_subspec互斥, 写了s.default_subspec就不要在加上该字段了，否则从cocoapods拉下来的代码不会区分子目录
  # s.source_files = 'BLCategorys/Core/**/*'
  

  # 该库的资源文件路径, 依旧时相对路径
  # s.resource_bundles = {
  #   'BLCategorys' => ['BLCategorys/Assets/*.png']
  # }


  # 该库暴露给外部使用的.h文件集合
  # s.public_header_files = 'Pod/Classes/**/*.h'

  # 集成该库的Pod内可划分为多个子目录, 以逗号分隔例如: 'Foundation', 'UIKit'
  s.default_subspec = 'Foundation', 'UIKit'
  # 为子目录设置源文件, 路径是相对于.podspec文件所在目录
  s.subspec 'Foundation' do |ss|
     ss.source_files = 'BLCategorys/Core/Foundation/**/*'
  end

  s.subspec 'UIKit' do |ss|
     ss.source_files = 'BLCategorys/Core/UIKit/**/*'
  end


  # 该库所依赖的frameworks
  # s.frameworks = 'UIKit', 'MapKit'


  # 该库所依赖的第三方库
  # s.dependency 'AFNetworking', '~> 2.3'
end
