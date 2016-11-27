# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Resume.destroy_all

seed_resume = File.read("./sample_resume.txt").split(/\n/)

Resume.create([
  {
    user_name: seed_resume[0].gsub(/Name: /,''),
    user_phone: seed_resume[1].gsub(/Phone: /,''),
    user_email: seed_resume[2].gsub(/Email: /,''),
    job_objective: seed_resume[5],
    user_skills: "#{seed_resume[8].to_s}  #{seed_resume[9].to_s}",
    employment_history_1: "#{seed_resume[12]}, #{seed_resume[13]}, #{seed_resume[14]}, #{seed_resume[15]}, #{seed_resume[16]}, #{seed_resume[17]}",
    employment_history_2: "#{seed_resume[19]}, #{seed_resume[20]}, #{seed_resume[21]}, #{seed_resume[22]}, #{seed_resume[23]}, #{seed_resume[24]}",
    education: "#{seed_resume[27]}, #{seed_resume[28]}, #{seed_resume[29]}, #{seed_resume[30]}, #{seed_resume[31]}"
  }
])
