# encoding: UTF-8

User.destroy_all
Cookbook.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Measurement.destroy_all
RecipeIngredient.destroy_all

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

"abalone,absinthe,achar,acidulated water,ackee,acorn squash,adobo,advieh,African birdseye chile peppers,agar,aioli,Ajowan,al dente,ale,aleppo pepper,alfalfa sprouts,alfredo sauce,Alitame,alize liqueur,alligator,allspice,almonds,Almond Bark,almond butter,almond extract,almond paste,alum,amaranth,amarena cherries,amaretti,amaretto,amarula cream liqueur,amchoor powder,amla,ammonium bicarbonate,ancho chile peppers,anchovette,anchovies,anchovy paste,andouille sausage,angelica,anise,annatto seeds,apples,apple butter,apple pie spice,applesauce,apricots,aquavit,arak,arborio rice,argan oil,arrowroot,artichokes,artificial sweetener,arugula,asadero,asafetida,asiago cheese,asparagus,aspic,avocados,azuki beans,baba,baba ghanoush,babaco,babka,baby kiwi,baby marrows,bacon,bacon grease,bagels,bagna cauda,bagoong,baguette,baharat,bake blind,baking powder,baking soda,baklava,Balmain Bug,balsamic vinegar,bamboo shoots,bananas,bangers,bannocks,banon cheese,barbecue sauce,barberries,bard,barley,barley sugar,baron,basil,Basket Cheese,basmati rice,bass,bay leaves,beans,bean sauce,bean sprouts,bean threads,beat,bechamel,beef,Beef Round Cuts,beer,beer cheese,beer sticks,beets,bel paese,bento,berbere,berries,beurre blanc,beurre manie,beurre manie,biltong,biscuit mix,bisque,bitter melon,black beans,black kale,black olives,black-eyed peas,blackberries,blanch,blue cheese,blueberries,boerewors,boil,bok choy,Bombay duck,borage,borscht,bottarga,bouillon,bouquet garni,bourbon,boursin cheese,braai,braise,brandy,brazil nuts,breadcrumbs,breadfruit,bresaola,brewer's yeast,brick cheese,broccoli,broccoli raab,broil,broth,brown rice,brown sugar,brunoise,bruschetta,Brussels sprouts,buckwheat,buckwheat groats,buerre manie,buerre manie,bulgur wheat,bundt pan,butter,buttermilk,Buxton blue cheese,cabbage,cacao,cachaca,cactus,Caerphilly,calabaza,callaloo,Calvados,campden tablets,Canadian bacon,cannellini beans,canola oil,cantaloupes,cape gooseberries,capers,Cappuccino Latte,capsicums,carambola,caramelize,caraway seeds,carboy,cardamom,carob,carrageen,carrots,cashew nut,cassava,Casserole,catfish,caul,cauliflower,caviar,cayenne pepper,celeriac,celery,celery seeds,chai,chambord,Champagne yeast,chard,chaurice sausage,chayote,cheddar cheese,cheese,cheesecloth,chendol,cherimoya,cherries,chervil,Cheshire cheese,chestnuts,chickens,chicken livers,chickpeas,chicory,chiffonade,chile peppers,chili powder,chili sauce,Chinese Cabbage,Chinese dates,chipotle peppers,chives,chocolate,chowder,chutney,cider,cider vinegar,cilantro,cinnamon,citron,Citrus oils,clafouti,clams,clarified butter,clarify,cloves,cocoa powder,coconuts,coconut milk or cream,coconut oil,cod,coffee,colby,confit,cookies,Cool Whip,Copha,coriander,corn,corn flour,corn syrup,corned beef,cornichons,Cornish Yarg cheese,cornmeal,cornstarch,cottage cheese,cottage roll,coulis,couscous,crabs,craisins,cranberries,cranberry bean,crayfish,cream cheese,cream of coconut,cream of tartar,cream of wheat,cream,crema de leche,creme brulee,creme de cacao,creme de cassis,creme de menthe,creme fraiche,cremini mushrooms,Creole sausage,crock pot,crostini,croutons,crozzled,crystallized ginger,cucumbers,cucuzza,cumin,curacao,currants,curry leaves,curry paste,curry powder,custard,cut in,dash,dates,date sugar,deglaze,demi-glace,Derby cheese,desiccated,desserts,dhania-jeera powder,dice,dill,Dovedale cheese,dragees,dredge,dried leeks,dripping,duck,dumpling,durian,dutch oven,eau de vie,eclairs,edam,edamame,eels,eggs,egg substitutes,eggplants,Elderberries,endive,English muffins,English mustard,epazote,erythritol,escalopes,falafel,Falernum,farina,farmer cheese,fava beans,feet,feijoa,fennel,fennel seeds,fenugreek,fermented black beans,feta cheese,figs,file powder,finnan haddie,firm-ball stage,fish sauce,fish slice,five-spice powder,flageolet,flax seed,flounder,flour,focaccia,foie gras,fold,fond,Fontina Cheese,forcemeat,frangipane,french fries,French-style green beans,fried rice seasoning,frisee,fructose,frying pan,galangal,ganache,garlic,garlic powder,gelatin,gelatinized starch,ghee,ginger,ginger ale,ginger beer,ginger syrup,ginkgo nut,glace de viande,Gloucester,gluten,gluten-free brand names,Goji berry,golden syrup,geese,gooseberries,gorgonzola,gouda,graham crackers,grains of paradise,gram flour,Grand Marnier,granola,grapes,grapefruits,grating cheese,great northern beans,green beans,green kern,green onions,greens,grits,grouper,Gruyere,guanbana,guavas,gumbo,habanero chilies,haddock,half-and-half,halibut,ham,ham hock,hamburger,hard cheese,Harissa,hash browns,Havarti,Hawaij ,hazelnuts,hearts of palm,heavy cream,herbs,herbsaint,herring,hoisin sauce,hoja santa,hoki,hominy,honey,honeydew melons,horseradish,hot sauce,huckleberries,hundred-year eggs,Hungarian wax chile,hyssop,ice cream,ice wine,icing sugar,Indian pudding,indienne,infusion,insalata,instant espresso,instant potato flakes,invert sugar,Irish coffee,Irish cream liqueur,Irish mist,isinglass,jack cheese,jaggery,jambalaya,jamon serrano,jamun,jelly beans,jelly roll,jelly tots,Jerusalem artichokes,jicama,joint,jowl,Kabsa Spice Mix,kaffir lime,Kahlua,kalamata olives,kale,kamaboko,kasha,kashk,ketchup,ketjap manis,kewra essence,kewra water,Khus Essence,kidney beans,kielbasa,kirsch,kiwi fruit,kohlrabi,konfyt,kosher,kudzu,kugel,kumquats,ladyfingers,lamb,Lambsquarters,Lampreys,Lancashire cheese,lardons,lavender,lecithin,leeks,Lefse,lemons,lemon balm,lemon grass,lemon juice,Lemon Peel,lentils,lettuce,Li Hing Mui ,liaison,light cream,lima beans,limes,lingcod,litchi,liver,lobsters,longans,loquat,lotus,lovage,lumpia wrappers,macadamia nut butter,macaroni,mace,mackerel,Madeira,mahi mahi,mahleb,malt vinegar,Malta,Mandarin oranges,mange-tout,mangoes,mangosteen,manzanilla olives,maple syrup,maraschino cherries,margarine,marjoram,marmalade,Marsala,marshmallows,marula,marzipan,masa harina,masala,mascarpone,matignon,matzo meal,mayonnaise,melons,meringue powder,mesclun,mettwursts,milk,mimolette cheese,mince,mint,Miracle Whip dressing,mirepoix,miso,mixed spice,mizuna,Moambé Sauce,molasses,monkfish,monosodium glutamate,moo shu wrappers,morels,Moreton Bay Bug,mortadella,mostaccioli,mozzarella,muddle,mugwort,mung beans,Muscadine grape,muscovado sugar,Muscovy duck,mushrooms,muskmelons,mussels,mustard, prepared mustard,mustard seed,mustard powder,nasturtium,navy beans,nectarines,nigella seeds,nopales,nori,oatmeal,octopus,offal,okra,olives,olive oil,onions,onion powder,oranges,orange flower water,orange peel,oregano,orgeat syrup,oyster sauce,palm oil,palm sugar,pancetta,panir,panko,panna cotta,papayas,paprika,parboil,parchment paper,Parmesan cheese,parsley,parsnips,passion fruit,pasta,pasta filata cheese,pastis,paysanne,peas,pea beans,peaches,peanuts,peanut butter,pears,pecans,Pelargonium citronellum,Peppadew peppers,pepper,perch,Periwinkles,persimmons,pesto,pheasants,phyllo dough,pickles,pickling lime,pico de gallo,pie melon,pie servers,pierogies,pig's cheek,pig's feet,pike,piloncillo,pimiento,pinch,pine nuts,pineapples,pink beans,pinto beans,pistachios,plantains,plastic wrap,plums,plum tomatoes,plumcots,poach,polenta,pomegranates,pomegranate molasses,pomelos,pompano,ponzu,poppy seeds,porcini,pork,portabellas,potatoes,potato chips,potato starch,poultry seasoning,poussin,powdered sugar,prawns,preheat,preserves,preserved lemon,processed cheese,proof,Prosciuttini,prosciutto,provolone,prunes,pudding mixes,puff pastries,pulses,pumpkins,pumpkin pie spice,Pumpkin seeds,purslane,quail,quark,quenelles,quesadilla,queso,quetsch,quince,quinoa,quorn,rabbit,radiatore,radicchio,radishes,raisins,rambutan,ramps,ras el hanout,raspberries,raw sugar,Recado rojo,recaito,red beans,red cabbage,red chile powder,Red Leicester,red pepper flakes,red snapper,remoulade,rhubarb,rice,rice paddy herb,rice paper,rice sticks,rice vermicelli,rice vinegar,rice wines,ricotta cheese,romaine lettuce,Romano cheese,Rookworst,rose essense,rose water,rosemary,Rotel tomatoes,rotisserie,roux,rum,rusks,saffron,sage,sago,salmon,salsa,salsify,salt,salt pork,sambal,Sand Dab,sandwich,sardines,satay,sauerkraut,Saunf,sausages,saute,savory,sazon,scald,scallops,scaloppine,Scotch bonnet chiles,Scoville Chart,scrapple,screwpine leaves,sea cucumbers,sear,seed,seitan,semi-hard cheese,semisweet chocolate,semolina,sesame seeds,seville orange,shallots,sherry,shitakes,shortening,shrimp,shrimp paste,Shropshire Blue,simmer,Slipper Lobster,smelt,smoke seasoning,smoked salmon,snap peas,snapper,snoek,snow peas,soba,soba tsuyu,soda crackers,soft cheese,soft-shell crabs,sole,somen,sorghum,sorrel,souffle,sour cream,soy sauce,soybeans,soymilk,spaetzle,spaghetti squash,Spanish cheeses,spatchcock,spearmint,specialty cheeses,spinach,split peas,squash,squid,star anise,steaks,steam,stevia,Stilton,strawberries,stuffings,sturgeon,sucanat,succotash,suet,sugar,sultana,sumac,summer squash,sunflower seeds,sushi,sweet chili sauce,sweet peppers,sweet potatoes,sweetbreads,sweetened condensed milk,swiss cheese,swordfish,Tabasco sauce,tagine,tahini,tamarillo,tamarind,tandoori paste,tapioca,tarragon,tartar sauce,tasso,tatsoi,tea,teff,tempeh,terrapins,thyme,tofu,togarashi,tomatoes,tomato juice,tomato paste,tomato puree,tomato sauce,tonic water,tortillas,trappist or monastery-style cheese,tripe,trompette de la mort mushroom,trout,truffles,tuna,turbinado sugar,turkeys,turmeric,turnips,turtles,udo,udon noodles,ugli fruit,umeboshi,unsweetened chocolate,urad dal,vanilla,vanilla bean,veal,vegan brand names,vegemite,vegetable marrow,vegetarian brand names,veloute,Velveeta,venison,vermouth,vidalia onions,vincotto,vinegar,vital wheat gluten,wakame seaweed salad,walnuts,wasabi,washed-rind cheese,water,water bath,water chestnuts,waterblommetji,watercress,watermelons,watermelon radishes,wattleseed,Weetabix,weisswurst,Welsh rarebit,Wensleydale cheese,wheat berries,wheat germ,whelks,white beans,white chocolate,wild rice,wine,wine vinegar,won ton skins,woodruff,Worcestershire sauce,yabbies,yeast,yogurt,za'atar,zabaglione,zest,zinfandel wine,zucchinis".split(',').each do |i|
  Ingredient.create!(:name => i)
end

m1 = Measurement.create(:unit => 'pound')
m2 = Measurement.create(:unit => 'N/A')
m3 = Measurement.create(:unit => 'N/A')
m4 = Measurement.create(:unit => 'slice')
m5 = Measurement.create(:unit => 'N/A')
m6 = Measurement.create(:unit => 'ounce')

"N/A,can,box,small,medium,large,stick,pinch,dash,slice,tab,knob,handful,bottle,packet,bag,bunch,sprig,stalk,tablespoon (tbsp),teaspoons (tsp),cup,fluid ounces (fl oz),pint (pt),quart (qt),gallon (gal),ounces (oz),pound (lb),inch (in),litre (L),milliliter (ml),grams (g),kilogram (kg),centimeter (cm)".split(',').each do |u|
  Measurement.create!(:unit => u)
end

ir1 = RecipeIngredient.create(:amount => 2)
ir2 = RecipeIngredient.create(:amount => 4)
ir3 = RecipeIngredient.create(:amount => 6)
ir4 = RecipeIngredient.create(:amount => 8)
ir5 = RecipeIngredient.create(:amount => 10)
ir6 = RecipeIngredient.create(:amount => 12)

ir1.measurement = m1
ir2.measurement = m2
ir3.measurement = m3
ir4.measurement = m4
ir5.measurement = m5
ir6.measurement = m6

ir1.ingredient = i1
ir2.ingredient = i2
ir3.ingredient = i3
ir4.ingredient = i4
ir5.ingredient = i5
ir6.ingredient = i6

u1.cookbooks = [c1, c2]

c1.recipes = [r1, r2]
c2.recipes << r3

r1.recipe_ingredients = [ir3]
r2.recipe_ingredients = [ir1, ir2, ir4]
r3.recipe_ingredients = [ir5, ir6]




