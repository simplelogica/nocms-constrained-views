class NoCms::ConstrainedViews::ConstrainedViewModelGenerator < Rails::Generators::NamedBase
  def create_model
    # First we create the model
    generate "model", "#{class_name}ConstrainedView #{singular_name}:belongs_to"

    # And then we inherit from our base model
    gsub_file "app/models/#{singular_name}_constrained_view.rb", /ActiveRecord::Base/, 'NoCms::ConstrainedViews::Base'
  end
end
