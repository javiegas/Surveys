class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries, :id => false do |t|
      t.column :id, "char(3)", :primary_key => true
      t.string :name
      t.string :alias
      t.string :who_region_rf
      t.string :who_subregion_rf
      t.string :who_code
      t.integer :country_phone_code_rf
      t.string :official_language_rf
      t.string :currency_code_rf
      t.date :begin_dt
      t.date :end_dt
      t.date :create_dt
      t.string :create_by
      t.date :modify_dt
      t.string :modify_by
      t.timestamps
    end
  end
end
