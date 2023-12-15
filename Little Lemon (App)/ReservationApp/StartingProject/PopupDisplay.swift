//
//  PopupDisplay.swift
//  StartingProject
//
//  Created by Matthew Liou on 1/19/23.
//

import Foundation

class PopupDisplay: ObservableObject{
    @Published var displayTitle: String = "Default Title"
    @Published var picture: String = "LemonBar"
    @Published var descritpion: String = "The lemon bar, also called lemon square, is a popular type of dessert bar in the United States consisting of a thin, shortbread crust and a lemon curd filling."
    //Use dictionary for description...
    @Published var descDict = [
        "onionRing": "A circular piece of onion covered in batter (= a mixture of flour and water or milk, and sometimes eggs) or breadcrumbs and fried.",
        "chickenWings": "Chicken wings are made from the wing section of a chicken. The wing is actually part of the chicken's shoulder.",
        "lobsterRolls": "A lobster roll is a dish native to New England. It is made of lobster meat served on a grilled hot dog-style bun. ",
        "CrabCakes": "Crab meat, bread crumbs, mayonnaise, and various assorted seasonings mixed together then sauteed or baked.",
        "PigsBlanket": "Small hotdog or other sausage of choice wrapped in crispy pan fried bacon and a delicious crescent-style biscuit dough.",
        "OrangeChic": "Chopped, battered and fried chicken pieces coated in a sweet orange-flavored chili sauce, which thickens or caramelizes to a glaze served with fried rice",
        "ChicPie": "Deep-dish pie containing chicken combined with vegetables and topped with a pastry crust",
        "BatFishwFries": "Fish fried coated in a batter made from a combination of beer, white flour, baking soda and salt",
        "Nigiri": "Thinly-sliced drapery of raw fish, laid over a cluster of sweet and salty vinegared rice",
        "BrieCheeBurger": "Thick patty of ground beef grilled with slices of raw onion, lettuce, bacon, mayonnaise, and brie cheese placed between two halves of a bun.",
        "Flan": "Sweetened egg custard with a caramel topping filled with custard, cream, and fruit",
        "BerryChantCake": "Moist vanilla cake layers are sandwiched together with rich mascarpone-cream cheese frosting and fresh berries in between",
        "StrawShortCake": "A layer cake type biscuit topped with fresh berries and mounds of whipped cream.",
        "LemonBars": "A thin, shortbread crust with a lemon curd filling and a sprinkling of powdered sugar on top",
        "Tiramisu": "A layered no-bake dessert consisting of ladyfingers soaked with coffee and rum, then layered with a whipped mixture of sugar, eggs and the creamy, sweet mascarpone cheese sprinkled with cocoa.",
        "Manhattan": "Created sometime in the mid-1800s, the Manhattan is one of the booziest classic drink recipes.",
        "mojito 1": "Originating in Cuba, this refreshing rum-based sip is filled with mint and lime—a perfect combination for sipping by the pool or beach. If you're craving a little literary cred, the mojito was also said to be a favorite of author Ernest Hemingway.",
        "Martini": "James Bond was wrong—whether you drink it with gin or vodka, stirred is the way to go when ordering a martini.",
        "Negroni": "A favorite of bartenders all over the world, the Negroni is a simple three-ingredient cocktail.",
        "Margarita": "Cloyingly sweet margarita mixes have given this drink a bad name. A well-made version is a fresh mix of lime juice and tequila, with a hint of sweetener.",
        "DevilEgg": "Hard-boiled eggs that have been peeled, cut in half, then stuffed with a paste made from the yolk and other ingredients"
    ]
}
