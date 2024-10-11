//
//  ThirdViewController.swift
//  GoughClassmateFun
//
//  Created by LOGAN GOUGH on 10/11/24.
//

import UIKit

class ThirdViewController: UIViewController {
    var people = [Classmate]()
    

    @IBOutlet weak var textView4: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        var a = Classmate(name: "Ryan Sp",nickName: "Rainbow Ryan", age: 16, year: 11, gpa: 4.7)
        var b = Classmate(name: "Michael",nickName: "Michael Michael Motorcycle", age: 16, year: 11, gpa: 1.1)
        var c = Classmate(name: "Sean",nickName: "Boat Gone Sean", age: 16, year: 11, gpa: 3.2)
        var d = Classmate(name: "John", nickName: "Jimmy John", age: 18, year: 12, gpa: 3.4)
        var e = Classmate(name: "Jayden", nickName: "Sleepy Sawyer", age: 18, year: 12, gpa: 3.1)
        var f = Classmate(name: "Cam", nickName: "Chef Cam", age: 17, year: 12, gpa: 4.5)
        var g = Classmate(name: "Brennan", nickName: "Breaking Brennan", age: 15, year: 10, gpa: 4.6)
        var h = Classmate(name: "Evan", nickName: "Flutin Evan", age: 16, year: 11, gpa: 3.9)
        var i = Classmate(name: "Eva", nickName: "No Pickle Noftz", age: 18, year: 12, gpa: 3.7)
        var j = Classmate(name: "Ava", nickName: "Abba Ava", age: 17, year: 12, gpa: 4.3)
        var k = Classmate(name: "Justin", nickName: "Trustin Justin", age: 17, year: 12, gpa: 4.7)
        var l = Classmate(name: "Peter", nickName: "Peter Kickle", age: 16, year: 11, gpa: 4.1)
        var m = Classmate(name: "Ryan St", nickName: "Rat Ryan", age: 16, year: 11, gpa: 4.3)
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
        textView4.text = people[AppData.countGlobal].toString()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
