Cookbook.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

u1 = User.create(:name => 'Bob', :email => 'b@email.com', :password => 'a')
u2 = User.create(:name => 'Admin', :email => 'admin@email.com', :password => 'admin', :is_admin => true)

c1 = Cookbook.create(:title => 'The Joy of Cooking', :image => 'http://1.bp.blogspot.com/_Oj8-dSOGoOA/TD9TBp_BW2I/AAAAAAAAAVc/oh3I-gPCpTo/s1600/joy-of-cooking.jpg')
c2 = Cookbook.create(:title => 'Another Cookbook')

r1 = Recipe.create(:title => 'Smoked Salmon', :duration => 90, :serving_size => 2, :instructions => 'Smoke some salmon!', :image => 'http://img4-3.myrecipes.timeinc.net/i/recipes/ck/04/06/smoked-salmon-ck-642269-l.jpg')
r2 = Recipe.create(:title => 'Salmon Omelettes', :duration => 15, :serving_size => 2, :instructions => 'Put some eggs on a salmon!', :image => 'http://4.bp.blogspot.com/_OeYjtwwIWv8/S_ewgNaKNgI/AAAAAAAAETY/Cw0bvFi_hLo/s1600/IMG_0566.jpg')
r3 = Recipe.create(:title => 'Salmon Sandwich', :duration => 10, :serving_size => 2, :instructions => 'Squish fish between bread!', :image => 'http://myrecipes.ucoz.com/_pu/1/65741974.jpg')

i1 = Ingredient.create(:name => 'Salmon')
i2 = Ingredient.create(:name => 'Eggs')
i3 = Ingredient.create(:name => 'Tortillas')
i4 = Ingredient.create(:name => 'Wheat Bread')
i5 = Ingredient.create(:name => 'Lemon')
i6 = Ingredient.create(:name => 'Butter')

m1 = Measurement.create(:unit => 'pound', :amount => 6)
m2 = Measurement.create(:unit => '-', :amount => 4)
m3 = Measurement.create(:unit => '-', :amount => 2)
m4 = Measurement.create(:unit => 'slice', :amount => 3)
m5 = Measurement.create(:unit => '-', :amount => 1)
m6 = Measurement.create(:unit => 'ounce', :amount => 2)


u1.cookbooks = [c1, c2]

c1.recipes = [r1, r2]
c2.recipes << r3

r1.ingredients = [i1, i2]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i5, i6]

i1.measurements << m1
i2.measurements << m2
i3.measurements << m3
i4.measurements << m4
i5.measurements << m5
i6.measurements << m6





