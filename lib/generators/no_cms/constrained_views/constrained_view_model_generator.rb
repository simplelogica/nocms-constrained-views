class NoCms::ConstrainedViews::ConstrainedViewModelGenerator < Rails::Generators::NamedBase
  def create_model
    # First we create the model
    generate "model", "#{class_name}ConstrainedView #{class_name.underscore.gsub('/', '_')}:belongs_to internal_name"

    # Then we create the no_cms_blocks migrations
    rake "no_cms_blocks:install:migrations"

    generate "nocms:blocks:skeleton_migration", "#{class_name}ConstrainedView"

    # And then we inherit from our base model
    gsub_file "app/models/#{class_name.underscore}_constrained_view.rb", /ActiveRecord::Base/, 'NoCms::ConstrainedViews::Base'

    # And create the has_many relationship into the "parent" model
    gsub_file "app/models/#{class_name.underscore}.rb", /ActiveRecord::Base/, "ActiveRecord::Base\n\n  has_many :constrained_views, class_name: \"#{class_name}ConstrainedView\"\n"

  end
end
