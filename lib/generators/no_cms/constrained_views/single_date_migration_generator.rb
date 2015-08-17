class NoCms::ConstrainedViews::SingleDateMigrationGenerator < Rails::Generators::NamedBase
  def create_miration
    # First we create the model
    generate "acts_as_constrained:single_date_migration", "#{singular_name}_constrained_view"
  end
end
