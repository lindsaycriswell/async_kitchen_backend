RECIPES = [
  {name: 'Creamy Tuscan Garlic Chicken',
  course: 'main',
  servings: '4-6',
  prep_time: 10,
  cook_time: 15,
  total_time: 25,
  url: 'https://therecipecritic.com/2016/05/creamy-tuscan-garlic-chicken/?utm_campaign=yummly&utm_medium=yummly&utm_source=yummly',
  ingredients: [
    {description: '1½ pounds boneless skinless chicken breasts, thinly sliced', search_name: 'chicken'},
    {description: '2 Tablespoons olive oil', search_name: 'olive oil'},
    {description: '1 cup heavy cream', search_name: 'heavy cream'},
    {description: '½ cup chicken broth', search_name: 'chicken broth'},
    {description: '1 teaspoon garlic powder', search_name: 'garlic powder'},
    {description: '½ cup parmesan cheese', search_name: 'parmesan'},
    {description: '1 cup spinach, chopped', search_name: 'spinach'},
    {description: '½ cup sun dried tomatoes', search_name: 'sun dried tomatoes'}
  ],
  directions: [
    {description: 'Chop chicken', time: 5, do_ahead: true},
    {description: 'Chop spinach', time: 5, do_ahead: true},
    {description: 'In a large skillet add olive oil and cook the chicken on medium high heat for 3-5 minutes on each side or until brown on each side and cooked until no longer pink in center. Remove chicken and set aside on a plate.', time: 5, do_ahead: false},
    {description: 'Add the heavy cream, chicken broth, garlic powder, italian seasoning, and parmesan cheese. Whisk over medium high heat until it starts to thicken. Add the spinach and sundried tomatoes and let it simmer until the spinach starts to wilt. Add the chicken back to the pan and serve over pasta if desired.', time: 10, do_ahead: false}
    ]
  },

  {name: 'Avocado and Tomato Salad',
  course: 'side',
  servings: '6',
  prep_time: 10,
  cook_time: 0,
  total_time: 10,
  url: 'https://www.tasteandtellblog.com/avocado-tomato-salad/?utm_campaign=yummly&utm_medium=yummly&utm_source=yummly',
  ingredients: [
    {description: '2 large tomatoes, cut into a large dice', search_name: 'tomato'},
    {description: '2 avocados, cut into a large dice', search_name: 'avocado'},
    {description: '1 small red onion (or half of a medium red onion), thinly sliced', search_name: 'onion'},
    {description: '2 tablespoons chopped cilantro', search_name: 'cilantro'},
    {description: 'juice of 2 limes', search_name: 'lime'},
    {description: 'extra virgin olive oil', search_name: 'olive oil'},
    {description: 'salt', search_name: 'salt'}
  ],
  directions: [
    {description: 'Chop tomatoes', time: 2, do_ahead: true},
    {description: 'Chop avocados', time: 2, do_ahead: true},
    {description: 'Chop onion', time: 3, do_ahead: true},
    {description: 'In a large bowl, combine the tomatoes, avocados, red onions and cilantro. Squeeze the lime juice over the top and drizzle with extra virgin olive oil. Gently stir. Taste and add salt as needed.', time: 3, do_ahead: true}
    ]
  },

  {name: 'Easy Oven Roasted Potatoes',
  course: 'side',
  servings: '8',
  prep_time: 10,
  cook_time: 40,
  total_time: 50,
  url: 'https://www.yummly.com/#recipe/Easy-Oven-Roasted-Potatoes---A-simple-side-dish-to-love-2241306',
  ingredients: [
    {description: '2 pounds potatoes - any kind will do', search_name: 'potato'},
    {description: '1 package Lipton Onion Soup Mix', search_name: 'onion soup mix'},
    {description: '1/4 cup of olive oil, you can use olive, or even plain vegetable oil', search_name: 'olive oil'},
    {description: '1 red bell pepper chopped - optional', search_name: 'bell pepper'},
    {description: '1 medium sized onion chopped - optional', search_name: 'onion'}
  ],
  directions: [
    {description: 'Preheat oven to 450 degrees.', time: 1, do_ahead: true},
    {description: 'Cube potatoes into small bite sized pieces, place potatoes into a gallon sized ziplock bag, pour oil over potatoes, and mix well. Add in optional ingredients if you like. Sprinkle in dry onion soup mix, and shake the back so the soup mix coats the potatoes.', time: 9, do_ahead: true},
    {description: 'Place potatoes into a 13 x 9 inch baking dish. Bake for approximately 40 minutes.', time: 40, do_ahead: false}
    ]
  }
]




def createRecipes
  recID = 1

  RECIPES.each do |rec|
    name = rec[:name]
    course = rec[:course]
    servings = rec[:servings]
    prep_time = rec[:prep_time]
    cook_time = rec[:cook_time]
    total_time = rec[:total_time]
    url = rec[:url]

    Recipe.create(name: name, course: course, servings: servings, prep_time: prep_time, cook_time: cook_time, total_time: total_time, url: url, )

    rec[:ingredients].each do |ing|
      description = ing[:description]
      search_name = ing[:search_name]

      Ingredient.create(recipe_id: recID, description: description, search_name: search_name)
    end

    rec[:directions].each do |dir|
      description = dir[:description]
      time = dir[:time]
      do_ahead = dir[:do_ahead]

      Direction.create(recipe_id: recID, description: description, time: time, do_ahead: do_ahead)
    end

    recID += 1
  end
end

createRecipes
