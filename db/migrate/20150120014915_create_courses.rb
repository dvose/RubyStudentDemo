class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :number
      t.string :name

      t.references :student, index: true

      t.timestamps
    end
  end
end
