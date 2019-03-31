# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
Category:
  name:text
  top_category:text
  sub_category:text
  order:integer
=end


category_abstracts = Category.create([
 { name:'Abstracts', top_category:'Research', sub_category:nil, order:1},
 { name:'Published Peer-Reviewed Manuscripts', top_category:'Research', sub_category:nil, order:2}
                                     ])