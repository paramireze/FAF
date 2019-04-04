=begin

"Category"
  name:text
  description:text
  top_category:text
  sub_category:text
  order:integer

"questions"
    "category_id"
    "text"
    "required"
    "order"
    "question_type"
    "created_at", null: false
    "updated_at", null: false
    t.index ["category_id"], name: "index_questions_on_category_id"

"users"
  t.text :first_name
  t.text :last_name
  t.boolean :active
  t.text :email
  t.text :user_name

=end

category_abstracts = Category.create([name:'Abstracts', top_category:'Research', sub_category:nil, order:1])
category_published_peer_review = Category.create([name:'Published Peer-Reviewed Manuscripts  ', top_category:'Research', sub_category:nil, order:2])
question_abstract_text = Question.create([category:category_abstracts.first, text:'abstracts text', helper_text:'Include Authors, Presentation Title, Presentation Date, City, State or Country', required:true, order:1, question_type:'text area'])
user_paul = User.create([first_name:'Paul', last_name:'Ramirez', active:true, email:'pramirez@uwhealth.org', user_name:'per245'])
