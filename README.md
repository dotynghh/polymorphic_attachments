# PolymorphicAttachments

Rails多附件上传功能, 
依赖:
- 'simple_form', "~> 3.2.1"
- 'carrierwave', "~> 0.10"
- 'mini_magick'
- 'jquery-fileupload-rails'

## Installation

1. 修改 Gemfile 增加:

```bash
# Gemfile
gem 'polymorphic_attachments'
    
$ bundle
```

2. 生成基本配置文件：


```bash
$ rails g polymorphic_attachments:install

then, add js file included 
    
//= require polymorphic_attachments/application

add css file included 

*= require polymorphic_attachments/application
```

3. 自定义配置

```ruby

modify config/initializes/polymorphic_attachments.rb

PolymorphicAttachments.configure do
  self.upload_limit_nubmer = 3
end
```


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

