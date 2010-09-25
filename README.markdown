# Forms spec

Assists in writing RSpec 2 expectations for Rails view code that include web form logic. 

## Template languages

Currently there is support for the following template languages:

* erb

## Rails form helper DSLs

Currently there is support for the following Rails form helper DSLs:

* Standard Rails forms
* Simpleform
* Formtastic 

## Install

<code>gem install forms-spec</code>

### Main gem dependencies

* code-spec

## Usage

Use the method 'erb_code' to extract only the ERB code from a view. 
You want to ignore all the static in the view!

<pre>
require 'forms-spec'

describe 'Formtastic form matcher' do      
  with_form_helper :formtastic
  
  context "Formtastic example 1 view file" do
    let(:form_file) { File.join erb_fixtures_dir, 'formtastic-ex1.erb' }
    
    it "content should match form expectations" do      
      form_file.should have_content do |content|
        content.erb_code.should have_semantic_form_for '@article' do |form|
          form.should have_inputs "Basic"
        end
      end
    end
  end
end

</pre>   


## TODO

* Add support for HAML template language
* Create more comprehensive test suite

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Kristian Mandrup. See LICENSE for details.
