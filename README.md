## CLIENT11: Restaurant Objects

### Objective

Define several constructors.

### Resources

*   [Introduction to Object-Oriented JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Introduction_to_Object-Oriented_JavaScript)
*   [3 ways to define a JavaScript class](http://www.phpied.com/3-ways-to-define-a-javascript-class/)
*   [Eloquent Javascript Ch8 - Object-Oriented Programming](http://eloquentjavascript.net/chapter8.html)

### Requirements

#### Part I

1.  Define constructors for the following object. Add parameters to the constructor for the given
properties and add them as instance variables.

        *   FoodItem

                *   `string` name
        *   `Number` calories
        *   `boolean` vegan
        *   `boolean` glutenFree
        *   `boolean` citrusFree
2.  Define a `toString` method on the constructor's prototype. It shouldreturn a string description of the food including its name, calories, and dietary
information, formatted as you choose. `toString` should not have any
side effects.
3.  Instantiate three different FoodItems and call console.log on each of them.console.log will automatically call toString on each one in order to coerce them
to strings for display.

#### Part II

1.  Define constructors for the following objects. Add parameters tothe constructor for the given properties and add them as instancevariables.

        *   Drink

                *   `string` name
        *   `string` description
        *   `Number` price
        *   `Array of FoodItem` ingredients
    *   Plate

                *   `string` name
        *   `string` description
        *   `Number` price
        *   `Array of FoodItem` ingredients
    *   Order

                *   `Array of Plate` plates
    *   Menu

                *   `Array of Plate` plates
    *   Restaurant

                *   `string` name
        *   `string` description
        *   `Menu` menu
    *   Customer

                *   `string` dietaryPreference
2.  Define a `toString` method on each constructor's prototype. This method
should return a string representation of the object, formatted as you choose.
`toString` should not have any side effects.
You may want to reuse the `toString` method of the contained objects.(e.g. the Menu object should call `toString` on each of its plates
to reuse that functionality instead of having to duplicate the code for each plate).
3.  Add the following methods to the Plate object to determine if all the fooditems within it fit a specific dietary restriction.

        *   `boolean` isVegan
    *   `boolean` isGlutenFree
    *   `boolean` isCitrusFree
4.  Instantiate a Burrito Plate, a Guacamole Plate, and a Margarita Drink.
5.  Instantiate a Menu that contains each of the instantiated Plates and Drinks.
6.  Instantiate a Restaurant that contains the instantiated Menu.
7.  Call the Restaurant's `toString` method to have it print out allits information.
