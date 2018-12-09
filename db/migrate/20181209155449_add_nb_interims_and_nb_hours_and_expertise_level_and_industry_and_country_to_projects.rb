class AddNbInterimsAndNbHoursAndExpertiseLevelAndIndustryAndCountryToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :nb_hours, :integer
    add_column :projects, :expertise_level, :string
    add_column :projects, :industry, :string
    add_column :projects, :country, :string
  end
end
