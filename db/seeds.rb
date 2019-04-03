# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
Category:
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
  end
=end


category_abstracts = Category.create([name:'Abstracts', top_category:'Research', sub_category:nil, order:1])
category_published_peer_review = Category.create([name:'Published Peer-Reviewed Manuscripts  ', top_category:'Research', sub_category:nil, order:2])

question_abstract_text = Question.create([
    category:category_abstracts.first,
    text:'abstracts text',
    helper_text:'Include Authors, Presentation Title, Presentation Date, City, State or Country',
    required:true,
    order:1,
    question_type:'text area'])
