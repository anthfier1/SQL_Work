use recipesexample; 

INSERT INTO recipes 
VALUES (16, 'Teriyaki Chicken', 1, 'Sear the chicken thighs evenly in a pan, then flip.
Add the soy sauce and brown sugar, stirring and bringing to a boil.
Stir until the sauce has reduced and evenly glazes the chicken.', 
   NULL);
   
/*
2 lb chicken thighs
1 cup soy sauce
.5 cup brown sugar
*/ 

INSERT into ingredient_classes (IngredientClassID, IngredientClassDescription) VALUES(25, 'Sweetener');

-- add soy sauce into ingredients 
SELECT max(IngredientID) + 1 into @soySauceID from ingredients;
set @soySauceName = 'Soy Sauce';
select IngredientClassID into @soyIngredientClassID from Ingredient_Classes 
where IngredientClassDescription = 'Sauce';
select MeasureAmountID into @soyMeasureID from Measurements 
where MeasurementDescription = 'Cup';

select @soySauceID, @soySauceName, @soyIngredientClassID, @soyMeasureID;

insert into Ingredients (IngredientID, 
    IngredientName, 
    IngredientClassID, 
    MeasureAmountID
)
values (@soySauceID, 
    @soySauceName, 
    @soyIngredientClassID, 
    @soyMeasureID
);

-- add brown sugar into ingredients 
SELECT max(IngredientID) + 1 into @brownSugarID from ingredients;
set @brownSugarName = 'Brown Sugar';
select IngredientClassID into @brownSugarIngredientClassID from Ingredient_Classes 
where IngredientClassDescription = 'Sweetener';
select MeasureAmountID into @brownSugarMeasureID from Measurements 
where MeasurementDescription = 'Cup';

select @brownSugarID, @brownSugarName, @brownSugarIngredientClassID, @brownSugarMeasureID;

insert into Ingredients (IngredientID, 
    IngredientName, 
    IngredientClassID, 
    MeasureAmountID
)
values (@brownSugarID, 
@brownSugarName, 
@brownSugarIngredientClassID, 
@brownSugarMeasureID
);


-- insert recipe ingredients for Teriyaki Chicken

SELECT RecipeID into @recID from recipes where RecipeTitle = 'Teriyaki Chicken';
select IngredientID INTO @recIngredient1 from ingredients where IngredientName = 'Chicken Thigh';
select IngredientID INTO @recIngredient2 from ingredients where IngredientName = 'Soy Sauce';
select IngredientID INTO @recIngredient3 from ingredients where IngredientName = 'Brown Sugar';
select MeasureAmountID INTO @recIngredientMeasure1 from measurements where MeasurementDescription = 'Pound';
select MeasureAmountID INTO @recIngredientMeasure2 from measurements where MeasurementDescription = 'Cup';
select MeasureAmountID INTO @recIngredientMeasure3 from measurements where MeasurementDescription = 'Cup';

select @recID, @recIngredient1, @recIngredient2, @recIngredient3, @recIngredientMeasure1, @recIngredientMeasure2, @recIngredientMeasure3;

insert into recipe_ingredients (RecipeID, RecipeSeqNo, IngredientID, MeasureAmountID, Amount)
values 
(@recID, 1, @recIngredient1, @recIngredientMeasure1, 2),
(@recID, 2, @recIngredient2, @recIngredientMeasure2, 1),
(@recID, 3, @recIngredient3, @recIngredientMeasure3, 0.5);

