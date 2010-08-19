require 'require_all'
require 'code-spec'

require_all File.dirname(__FILE__) + '/forms-spec'

module FormHelperMacro  
  def with_form_helper name
    class_eval do
      include get_form_matcher(name)
    end
  end
  
  protected

  def get_form_matcher name
    case name
    when :formtastic
      Erb::Formtastic::ContentMatchers
    when :simpleform
      Erb::SimpleForm::ContentMatchers
    else
      Erb::RailsForm::ContentMatchers
    end    
  end  
end
 

RSpec.configure do |config|
  config.extend(FormHelperMacro) 
end
