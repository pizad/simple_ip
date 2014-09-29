class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|
      t.string :pat_record

      t.timestamps
    end
  end
end
