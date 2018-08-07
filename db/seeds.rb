#user seeds
p "Users"
User.destroy_all

user1 = User.create(
  :first_name => "Shelley",
  :last_name => "Zhang",
  :password => "chicken",
  :interests => "edit these!",
  :email => "shelley@ga.co",
  :gender => "female",
  :dob => '1991-11-04',
  :location => "Sydney",
  :bio => "Edit this",

)

user2 = User.create(
  :first_name => "Sherine",
  :last_name => "Foo",
  :password => "chicken",
  :interests => "edit these!",
  :email => "sherine@ga.co",
  :gender => "female",
  :dob => '1979-06-05',
  :location => "Sydney",
  :bio => "Edit this",

)

user3 = User.create(
  :first_name => "Zabrina",
  :last_name => "Lagamayo",
  :password => "chicken",
  :interests => "edit these!",
  :email => "zabrina@ga.co",
  :gender => "female",
  :dob => '1993-08-29',
  :location => "Sydney",
  :bio => "Edit this",
)

user4 = User.create(
  :first_name => "EJ",
  :last_name => "Willard",
  :password => "chicken",
  :interests => "Japan",
  :email => "ej@ga.co",
  :gender => "female",
  :dob => '1987-01-15',
  :location => "Sydney",
  :bio => "Don't worry - I'm not crazy about me either.",

)

p "Conversations"
Conversation.destroy_all

message1 = Conversation.create(
  :sender_id => 1,
  :receiver_id => 3
)
message2 = Conversation.create(
  :sender_id => 3,
  :receiver_id => 1
)

p "Mailboxes"
Mailbox.destroy_all

mailbox1 = Mailbox.create(
  :sender_id => 1,
  :content => "Love you bb",
  :conversation_id => message1.id
)

mailbox2 = Mailbox.create(
  :sender_id => 3,
  :content => "Me too",
  :conversation_id => message1.id
)

mailbox3 = Mailbox.create(
  :sender_id => 3,
  :content => "hello dude",
  :conversation_id => message2.id
)


p "Relationships"
Relationship.destroy_all
relationship1 = Relationship.create(
  :liker_id => user1.id,
  :likee_id => user2.id
)

relationship2 = Relationship.create(
  :liker_id => user2.id,
  :likee_id => user1.id
)

relationship3 = Relationship.create(
  :liker_id => user1.id,
  :likee_id => user4.id
)

relationship4 = Relationship.create(
  :liker_id => user4.id,
  :likee_id => user2.id
)

# relationship5 = Relationship.create(
#   :liker_id => user2.id,
#   :likee_id => user3.id
# )

# relationship6 = Relationship.create(
#   :liker_id => user4.id,
#   :likee_id => user3.id
# )

Question.destroy_all

q1 = Question.create(
  :category_id => 9,
  :category => "General Knowledge"
)
q2 = Question.create(
  :category_id => 10,
  :category => "Entertainment: Books"
)
q3 = Question.create(
  :category_id => 11,
  :category => "Entertainment: Films"
)
q4 = Question.create(
  :category_id => 12,
  :category => "Entertainment: Music"
)
q5 = Question.create(
  :category_id => 13,
  :category => "Entertainment: Musicals & Theatres"
)
q6 = Question.create(
  :category_id => 14,
  :category => "Television"
)
q7 = Question.create(
  :category_id => 15,
  :category => "Video Games"
)
q8 = Question.create(
  :category_id => 16,
  :category => "Board Games"
)
q9 = Question.create(
  :category_id => 17,
  :category => "Science & Nature"
)
q10 = Question.create(
  :category_id => 18,
  :category => "Science: Computers"
)
q11 = Question.create(
  :category_id => 19,
  :category => "Science: Mathematics"
)
q12 = Question.create(
  :category_id => 20,
  :category => "Mythology"
)
q13 = Question.create(
  :category_id => 21,
  :category => "Sports"
)
q14 = Question.create(
  :category_id => 22,
  :category => "Geography"
)
q15 = Question.create(
  :category_id => 23,
  :category => "History"
)
q16 = Question.create(
  :category_id => 24,
  :category => "Politics"
)
q17 = Question.create(
  :category_id => 25,
  :category => "Arts"
)
q18 = Question.create(
  :category_id => 26,
  :category => "Celebrities"
)
q19 = Question.create(
  :category_id => 27,
  :category => "Animals"
)
q20 = Question.create(
  :category_id => 28,
  :category => "Vehicles"
)
q21 = Question.create(
  :category_id => 29,
  :category => "Entertainment: Comics"
)
q22 = Question.create(
  :category_id => 30,
  :category => "Science: Gadgets"
)
q23 = Question.create(
  :category_id => 31,
  :category => "Entertainment: Japanese Anime & Manga"
)
q13 = Question.create(
  :category_id => 32,
  :category => "Entertainment: Cartoon and Animations"
)
