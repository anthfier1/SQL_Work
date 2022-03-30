use RecipesExample;

select * from recipes
where RecipeClassID = 1;

select recipes.RecipeTitle, recipes.RecipeClassID, recipe_classes.RecipeClassDescription from recipes
inner join recipe_classes on recipes.RecipeClassID = recipe_classes.RecipeClassID
where recipes.RecipeClassID = 6;

select ingredients.IngredientClassID, ingredient_classes.IngredientClassDescription, count(*) as count from ingredients
inner join ingredient_classes on ingredients.IngredientClassID
where ingredients.IngredientClassID = ingredient_classes.IngredientClassID
group by ingredient_classes.IngredientClassID;

select ingredients.IngredientName, ingredients.IngredientClassID, ingredient_classes.IngredientClassDescription from ingredients
inner join ingredient_classes on ingredients.IngredientClassID = ingredient_classes.IngredientClassID
where ingredients.IngredientClassID = 1;