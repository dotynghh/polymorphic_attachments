# PolymorphicAttachments

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

