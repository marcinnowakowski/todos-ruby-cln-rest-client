# TodosClient

## Create gem (init project)

```
$ bundle gem todos-ruby-cln-rest-client
```

Command follows with some questions which have to be answered:
```
Creating gem 'todos-ruby-cln-rest-client'...
Do you want to generate tests with your gem?
Type 'rspec' or 'minitest' to generate those test files now and in the future. rspec/minitest/(none): rspec
Do you want to license your code permissively under the MIT license?
This means that any other developer or company will be legally allowed to use your code for free as long as they admit you created it. You can read more about the MIT license at https://choosealicense.com/licenses/mit. y/(n): n
Do you want to include a code of conduct in gems you generate?
Codes of conduct can increase contributions to your project by contributors who prefer collaborative, safe spaces. You can read more about the code of conduct at contributor-covenant.org. Having a code of conduct means agreeing to the responsibility of enforcing it, so be sure that you are prepared to do that. Be sure that your email address is specified as a contact in the generated code of conduct so that people know who to contact in case of a violation. For suggestions about how to enforce codes of conduct, see https://bit.ly/coc-enforcement. y/(n): n
      create  todos-ruby-cln-rest-client/Gemfile
      create  todos-ruby-cln-rest-client/lib/payu/ruby/simple/payment/use/case.rb
      create  todos-ruby-cln-rest-client/lib/payu/ruby/simple/payment/use/case/version.rb
      create  todos-ruby-cln-rest-client/todos-ruby-cln-rest-client.gemspec
      create  todos-ruby-cln-rest-client/Rakefile
    conflict  todos-ruby-cln-rest-client/README.md
Overwrite /home/mnowakowski/work/lech/todos-ruby-cln-rest-client/README.md? (enter "h" for help) [Ynaqdh] Y
       force  todos-ruby-cln-rest-client/README.md
      create  todos-ruby-cln-rest-client/bin/console
      create  todos-ruby-cln-rest-client/bin/setup
      create  todos-ruby-cln-rest-client/.gitignore
      create  todos-ruby-cln-rest-client/.travis.yml
      create  todos-ruby-cln-rest-client/.rspec
      create  todos-ruby-cln-rest-client/spec/spec_helper.rb
      create  todos-ruby-cln-rest-client/spec/payu/ruby/simple/payment/use/case_spec.rb
Initializing git repo in /home/mnowakowski/work/lech/todos-ruby-cln-rest-client
Gem 'todos-ruby-cln-rest-client' was successfully created. For more information on making a RubyGem visit https://bundler.io/guides/creating_gem.html
```
Finally gem is succesfully created.

## Refactoring

By default package structure is different then structure we want some parts have to be refactored. Check git history to see what changes have been made.

## Branching strategy

As branching strategy we use git flow. See reference here:

https://datasift.github.io/gitflow/IntroducingGitFlow.html

## Installation

Remove old version of gem - optional
```
gem uninstall todos-client
```

Install gem
```
rake install
```

## Usage

todo_client \<method\> \<id\> \<body_file_name\>

## Contributing

Bug reports and pull requests are welcome: https://github.com/marcinnowakowski/todos-ruby-cln-rest-client/issues.