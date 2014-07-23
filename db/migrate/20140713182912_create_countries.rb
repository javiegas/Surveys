class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries, :id => false do |t|
      t.column :id, "char(3)", :primary_key => true
      t.string :name, :limit => 100;
      t.string :alias
      t.string :who_region_rf
      t.string :who_subregion_rf
      t.column :who_code, "char(3)"
      t.integer :country_phone_code_rf
      t.string :official_language_rf, :limit => 4
      t.string :currency_code_rf
      t.date :begin_dt
      t.date :end_dt
      t.datetime :create_dt
      t.string :create_by
      t.datetime :modify_dt
      t.string :modify_by
    end
  end
end
