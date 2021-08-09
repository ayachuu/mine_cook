class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: "Main-dish" },
    { id: 3, name: "Side_dish" },
    { id: 4, name: "Side_dish_two" },
    { id: 5, name: "Soup" },
    { id: 6, name: "Dessert" }
  ]
  include ActiveHash::Associations
  has_many :posts
end