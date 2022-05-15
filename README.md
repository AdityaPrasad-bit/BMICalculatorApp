It is the BmiCalculator App in which I have used Seague for passing the value from one ViewController to other view controller with the help of MVC design Pattern


self.performSegue(withIdentifier: "goToResult", sender: self) (to perform seague)

// this method triggers eveytime when segue occur or when we are going 
// from one vc to other vc 
override func prepare(for segue: UIStoryboardSegue, sender: Any?) { }
 
"as"->it is use for downcasting.

Structure vs Class

- Struct is unable to inherit whereas classes are able to inherit
- Struct by default has initialiser whereas in class it does not have initialiser.
- Structure are not mutable we have to use mutate keyword with the function whereas class are mutate by default
- Structure are passed by value(means only copy is shared with other object and if anyone affect on the copied object then it does-not affect to the original one) whereas classes are passed by reference (means only original value is shared and if affected the shared value then original one is also affected)
- Structure are immutable.
- Classes are able to inherit

![Simulator Screen Shot - iPhone 13 Pro Max - 2022-05-15 at 21 44 14](https://user-images.githubusercontent.com/85185631/168482892-4535343c-fb49-4bbe-b884-7e9ed6eb3cc9.png)

![Simulator Screen Shot - iPhone 13 Pro Max - 2022-05-15 at 21 44 25](https://user-images.githubusercontent.com/85185631/168482911-12a12705-c1fe-447f-8b0b-c06d9a0a15d1.png)

![Simulator Screen Shot - iPhone 13 Pro Max - 2022-05-15 at 21 44 43](https://user-images.githubusercontent.com/85185631/168482917-be20ee89-4c5a-443f-b61a-de158b566f74.png)

![Simulator Screen Shot - iPhone 13 Pro Max - 2022-05-15 at 21 45 41](https://user-images.githubusercontent.com/85185631/168482925-e73031b2-0eb2-4faf-8934-f70cb9d18f42.png)


Short Intro of my project

https://user-images.githubusercontent.com/85185631/168483331-b6c57a9e-449b-485f-92cb-e97b678d85e8.mp4

