Pod::Spec.new do |s|
  s.name     = 'TWUtils'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = '常用的工具类，宏定义，分类等，用户组件化.'
  s.description = <<-DESC
                     自己常用的工具类，宏定义，分类等，后续会不断增加
                   DESC
  s.homepage = 'https://github.com/TWVision/TWUtils'
  s.authors  = { 'TWVision' => 'skytang1988@qq.com' }
  s.source   = { :git => 'https://github.com/TWVision/TWUtils.git', :tag => s.version }

  s.platform  = :ios, '9.0'

  s.source_files = 'TWUtils/Classes/TWUtils.h'

  s.requires_arc = true

  s.subspec 'Base' do |ss|
    ss.platform  = :ios, '9.0'

    ss.dependency 'SVProgressHUD', '~> 2.2.5'

    ss.source_files = 'TWUtils/Classes/Base/*.{h,m}'
  end

  s.subspec 'Categories' do |ss|
    ss.platform  = :ios, '9.0'

    ss.source_files = 'TWUtils/Classes/Categories/*.{h,m}'
  end

  s.subspec 'API' do |ss|
    ss.platform  = :ios, '9.0'

    ss.dependency 'AFNetworking', '~> 4.0'
    ss.dependency 'TWUtils/Base'
    ss.dependency 'TWUtils/Categories'

    ss.source_files = 'TWUtils/Classes/API/*.{h,m}'
  end
end
