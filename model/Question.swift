//
//  Question.swift
//  Brainshake
//
//  Created by pzpopori's mac air on 17/11/2561 BE.
//  Copyright © 2561 pajongpong. All rights reserved.
//

import Foundation
class Question {
    //Properties
    //Global Variable คือตัวเเปร เเบบ Global ซึ่งทุกฟังก์ชันเรียกใช้ได้ เพราะอยู่นอกสุดของ Class
    let questionText : String
    let answer : Bool
    
    //กำหนดค่าเริ่มต้นให้กับclass
    // init() --> เวลาเขียนสั่งให้มันทำงาน
    //Qusetion()n--> เวลาเขียนเรียกใช้งาน
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
    // ตัวอย่างตอนเรียกใช้
    // let a : Question(text : "ข้อความ" , correctAnswer : Bool)
    // a.qusetionText // ข้อความ
    //a.correctAnswer // true
}
