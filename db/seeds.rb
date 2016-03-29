# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = [{title: "JavaScript",
              description: " прототипно-ориентированный
              сценарный язык программирования.
              Является реализацией языка ECMAScript (стандарт ECMA-262[6]).",
              price: 32,
              img_url: "js.png",
              category_id: 1},
            {title: "Ruby",
              description: "Updated for Ruby 2.2, this handy reference offers
              brief yet clear explanations of Ruby’s core elements—from operators
              to blocks to documentation creation—and highlights the key features
              you may work with every day. Need to know the correct syntax for a conditional?
              Forgot the name of that String method? This book is organized.",
              price: 12.99,
              img_url: "ruby.jpg",
              category_id: 2},
            {title: "PHP Web Services",
              description: "Learn how to build web services with PHP and exchange
              data across applications. In this video course, web development
              consultant Lorna Jane Mitchell provides real-world examples and
              advice based on her extensive experience to guide you through the
              key API concepts.
              In an increasingly interconnected world, you need to be able to",
              price:99.99,
              img_url: "php.jpg",
              category_id: 1}]

categories = [{name: "Backend"},
              {name: "Frontend"}]

categories.each do |category|
  Category.create(name: category[:name])
end

products.each do |product|
  Product.create(title: product[:title],
                  description: product[:description],
                  price: product[:price],
                  img_url: product[:img_url],
                  category_id: product[:category_id])
end
