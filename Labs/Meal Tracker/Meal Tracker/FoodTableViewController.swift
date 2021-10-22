//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by speed Master on 10/13/21.
//

import UIKit

class FoodTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var meals: [Meal] {
        let firstItemOfBreakfast = Food(name: "Bacon", description: "Dunk em in hotsauce")
        let secondItemOfBreakfast = Food(name: "Eggs", description: "Scrambled with hotsauce")
        let ThirdItemOfBreakfast = Food(name: "Hotsauce", description: "Because I like drinking hotsause thats why")
        let breakfast = Meal(name: "Breakfast", food: [firstItemOfBreakfast, secondItemOfBreakfast, ThirdItemOfBreakfast])
        
        let firstItemOfLunch = Food(name: "Chips", description: "This is pretty much all I have")
        let secondItemOfLunch = Food(name: "Pretzels", description: "This is pretty much all I have")
        let thirdItemOfLunch = Food(name: "Hotsauce", description: "Because I like drinking hotsauce thats why")
        let lunch = Meal(name: "Lunch", food: [firstItemOfLunch, secondItemOfLunch, thirdItemOfLunch])
        
        let firstItemOfDinner = Food(name: "Chips", description: "I need something to eat while its cooking")
        let secondItemOfDinner = Food(name: "Pizza", description: "Good old oven baked dijorno pizzas")
        let thirdItemOfDinner = Food(name: "Hotsauce", description: "Because I like drinking hotsauce thats why")
        let dinner = Meal(name: "Dinner", food:  [firstItemOfDinner, secondItemOfDinner, thirdItemOfDinner])
        return [breakfast, lunch, dinner]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        let food = meal.food
        
        return food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        
        return meal.name
    }
    
}
