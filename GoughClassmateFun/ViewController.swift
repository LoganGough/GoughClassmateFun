//
//  ViewController.swift
//  GoughClassmateFun
//
//  Created by LOGAN GOUGH on 10/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var nickField: UITextField!
    
    @IBOutlet weak var gpaField: UITextField!
    
    @IBOutlet weak var yearField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    
    var count = 0
    var people = [Classmate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var a = Classmate(name: "Ryan",nickName: "Rainbow Ryan", age: 16, year: 11, gpa: 4.7)
        var b = Classmate(name: "Michael",nickName: "Michael Michael Motorcycle", age: 16, year: 11, gpa: 1.1)
        var c = Classmate(name: "Sean",nickName: "Boat Gone Sean", age: 16, year: 11, gpa: 3.2)
        var d = Classmate(name: "John", nickName: "Jimmy Jogn", age: 18, year: 12, gpa: 3.4)
        var e = Classmate(name: "Jayden", nickName: "Sleepy Sawyer", age: 18, year: 12, gpa: 3.1)
        var f = Classmate(name: "Cam", nickName: "Chef Cam", age: 17, year: 12, gpa: 4.5)
        var g = Classmate(name: "Brennan", nickName: "Breaking Brennan", age: 15, year: 10, gpa: 4.6)
        var h = Classmate(name: "Evan", nickName: "Flutin Evan", age: 16, year: 11, gpa: 3.9)
        var i = Classmate(name: "Eva", nickName: "No Pickl Noftz", age: 18, year: 12, gpa: 3.7)
        var j = Classmate(name: "Ava", nickName: "Abba Ava", age: 17, year: 12, gpa: 4.3)
        var k = Classmate(name: "Justin", nickName: "Trustin Justin", age: 17, year: 12, gpa: 4.7)
        var l = Classmate(name: "Peter", nickName: "Peter Kickle", age: 16, year: 11, gpa: 4.1)
        var m = Classmate(name: "Ryan S", nickName: "Rat Ryan", age: 16, year: 11, gpa: 4.3)
        var n = Classmate(name: "Matthew", nickName: "Glitch Fitch", age: 16, year: 11, gpa: 3.9)
        var o = Classmate(name: "Daniel", nickName: "Bananiel", age: 16, year: 11, gpa: 4.1)
        people = [Classmate]()
        people.append(a)
        people.append(b)
        people.append(c)
        people.append(d)
        people.append(e)
        people.append(f)
        people.append(g)
        people.append(h)
        people.append(i)
        people.append(j)
        people.append(k)
        people.append(l)
        people.append(m)
        people.append(n)
        people.append(o)
        textView.text = people[count].toString()
        
        
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        count+=1
        textView.text = people[count].toString()
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        count-=1
        textView.text = people[count].toString()
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        var one = "\(nameField.text)"
        var two = "\(nickField.text)"
        var cow = ageField.text!
        var cat = yearField.text!
        var dog = gpaField.text!
        var three = Int(cow) ?? 0
        var four = Int(cat) ?? 0
        var five = Double(dog) ?? 0
        var blah = Classmate(name: one, nickName: two, age: three, year: four, gpa: five)
        people.append(blah)
    }
    
    
    


}

