# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create!(username: "sandzu")
user2 = User.create!(username: "farahyq")
user3 = User.create!(username: "sandzus_alt")
user4 = User.create!(username: "sandzus_other_alt")

Poll.destroy_all
p1 = Poll.create!(user_id: user1.id, title: "Favorites")
p2 = Poll.create!(user_id: user2.id, title: "Coding Style")


Question.destroy_all
q1_1 = Question.create!(poll_id: p1.id, body: "What is favorite color?")
q1_2 = Question.create!(poll_id: p1.id, body: "What is your favorite food?")
q1_3 = Question.create!(poll_id: p1.id, body: "What is your favorite hobby?")

q2_1 = Question.create!(poll_id: p2.id, body: "What is our favorite language?")
q2_2 = Question.create!(poll_id: p2.id, body: "Backend or Frontend?")
q2_3 = Question.create!(poll_id: p2.id, body: "OOP or Fuctional?")


AnswerChoice.destroy_all
a1_1_1 = AnswerChoice.create!(question_id: q1_1.id, answer_text: "Red")
a1_1_2 = AnswerChoice.create!(question_id: q1_1.id, answer_text: "Green")
a1_1_3 = AnswerChoice.create!(question_id: q1_1.id, answer_text: "Blue")
a1_1_4 = AnswerChoice.create!(question_id: q1_1.id, answer_text: "Periwinkle")

a1_2_1 = AnswerChoice.create!(question_id: q1_2.id, answer_text: "Pizza")
a1_2_2 = AnswerChoice.create!(question_id: q1_2.id, answer_text: "Ice Cream")
a1_2_3 = AnswerChoice.create!(question_id: q1_2.id, answer_text: "Sushi")

a1_3_1 = AnswerChoice.create!(question_id: q1_3.id, answer_text: "Reading")
a1_3_2 = AnswerChoice.create!(question_id: q1_3.id, answer_text: "Painting")
a1_3_3 = AnswerChoice.create!(question_id: q1_3.id, answer_text: "Ping Pong")


a2_1_1 = AnswerChoice.create!(question_id: q2_1.id, answer_text: "R000000bie")
a2_1_2 = AnswerChoice.create!(question_id: q2_1.id, answer_text: "python")
a2_1_3 = AnswerChoice.create!(question_id: q2_1.id, answer_text: "linux")

a2_2_1 = AnswerChoice.create!(question_id: q2_2.id, answer_text: "backend! i like serverszzz")
a2_2_2 = AnswerChoice.create!(question_id: q2_2.id, answer_text: "frontend! i like websiteszzž")

a2_3_1 = AnswerChoice.create!(question_id: q2_3.id, answer_text: "OOP ALL THE WAY!!!!")
a2_3_2 = AnswerChoice.create!(question_id: q2_3.id, answer_text: "FUNCTIONAL ALL DAY!!!!")


r1 = Response.create!(user_id: user2.id, answer_id: a1_1_3.id)
r2 = Response.create!(user_id: user2.id, answer_id: a1_2_3.id)
r3 = Response.create!(user_id: user2.id, answer_id: a1_3_2.id)


r4 = Response.create!(user_id: user1.id, answer_id: a2_1_1.id)
r5 = Response.create!(user_id: user1.id, answer_id: a2_2_1.id)
r6 = Response.create!(user_id: user1.id, answer_id: a2_3_1.id)




