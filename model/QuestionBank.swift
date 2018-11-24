//
//  QuestionBank.swift
//  Brainshake
//
//  Created by pzpopori's mac air on 17/11/2561 BE.
//  Copyright © 2561 pajongpong. All rights reserved.
//

import Foundation
class QuestionBank  {
    var list = [Question] ()
    //list ชื่อตัวเเปร ชนิดของมันคือ Question เเบบ Array เพราะ []
    //Question คือ Class ในไฟล์ที่ชื่อว่า Question.swift
    init() {
        let item = Question(text: "อับราฮัม ลินคอล์นเป็นคนยกเลิกระบบทาส", correctAnswer: true)
        list.append(item)
        //เพราพlist เป็น Array จึงใช้ Append เพื่อต่อท้ายให้สมาชิกของ Array เพิ่ม
        
        list.append(Question(text: "อัลเบิร์ต ไอน์สไตน์ คิดค้น ทฤษฎีสัมพัทธภาพทั่วไป", correctAnswer: true))
        list.append(Question(text: "อดอล์ฟ ฮิตเลอร์ เป็นหัวหน้าผ่ายต่อต้่านพรรค นาซี", correctAnswer:  false))
        list.append(Question(text: "สแตน ลี คือผู้ก่อตั้ง Marvel comics", correctAnswer: true))
        list.append(Question(text: "กัปตันอเมริกา อยู่ในประเทศ อิสราเอล", correctAnswer: false))
        list.append(Question(text: "ชินโซ อาเบะ เป็นอดีนนายกรัฐมนตรี ของญี่ปุ่น", correctAnswer: true))
        list.append(Question(text: "สตีเฟน ฮอว์กิง เป็นผู้คิดคน กฏแรงโน้มถ่วง", correctAnswer: false))
        list.append(Question(text: "ไมเคิล แจ็คสัน เป็นนักร้องเพลง ร็อค", correctAnswer: false))
        list.append(Question(text: "เฟรดดี้ เมอคิวรี่ คือนักร้องนำของวง Queen", correctAnswer: true))
        list.append(Question(text: "ไอแซก นิวตัน คิดค้นทฤษฏี หลุมดำ", correctAnswer: false))
        list.append(Question(text: "นายประ*** จันทร์**** เป็นนายกที่ปกครองประเทศอย่างเผด็จการ", correctAnswer: true))
        
        
    }
}
