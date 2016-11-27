class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :user_name
      t.string :user_phone
      t.string :user_email
      t.string :job_objective
      t.string :user_skills
      t.string :employment_history_1
      t.string :employment_history_2
      t.string :education

      t.timestamps
    end
  end
end
