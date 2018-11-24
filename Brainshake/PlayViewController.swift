//
//  PlayViewController.swift
//  Brainshake
//
//  Created by iMac on 11/16/18.
//  Copyright © 2018 pajongpong. All rights reserved.
//

import UIKit
import ProgressHUD

class PlayViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var score : Int = 20
    var countCorrect : Int = 0
    var questionNumber : Int = 0
    var timer = Timer()
    var secound = 60
    
    @objc func clock() {
        secound=secound-1
        timeLabel.text=String(secound)
        if (secound==0) {
            timeLabel.text = "TIMES UP!"
            let  alert  = UIAlertController(title: "End Game", message: "เล่นจบเเล้วจร้า \n คุณได้ \(score) คะเเนน \n เล่นอีกรอบมั้ย? ",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Restart", style: .default, handler: {UIAlertAction in self.startOver()})
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(PlayViewController.clock), userInfo: nil, repeats: true)
        
        timeLabel.text = String(secound)
    }
    
    
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        //ถ้ากดปุ่มจริง tag = 1
        if sender.tag == 1{
            pickedAnswer = true
        }else if sender.tag == 2 {
            //ถ้ากดปุ่มเท็จ tag = 2
            pickedAnswer = false
        }
        //สั่งให้ทำงาน
        checkAnswer()
        questionNumber = questionNumber + 1
        updateUI()
        
        
        
        
    }// end function answerPressed
    
    func checkAnswer()   {
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("ถูกต้อง")
            countCorrect = countCorrect + 1
            ProgressHUD.showSuccess("ถูกต้อง")
        }else if  score <= 5 {
            score = score - 5
            let  alert  = UIAlertController(title: "End Game", message: "เล่นจบเเล้วจร้า \n คุณถูก \(countCorrect) ข้อ \n เหลือเวลา \(secound)  และ คะแนน \(score) \n เล่นอีกรอบมั้ย? ",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Restart", style: .default, handler: {UIAlertAction in self.startOver()})
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
        }
        else{
            print("ผิด")
            score = score - 5
            scoreLabel.text =  String(score)
             ProgressHUD.showError("ผิด")
        }
        
        
    }
    
    func updateUI()   {

        
        nextQuestion()
    }
    
    func nextQuestion(){
        if questionNumber <= 9{
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }else {
            
            let  alert  = UIAlertController(title: "End Game", message: "เล่นจบเเล้วจร้า \n คุณถูก \(countCorrect) ข้อ \n เหลือเวลา \(secound)  และ คะแนน \(score) \n เล่นอีกรอบมั้ย? ",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Restart", style: .default, handler: {UIAlertAction in self.startOver()})
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
            
            
        }//end else
        
        
    }//end nextQuestion
    
    func startOver()   {
        questionNumber = 0
        score = 20
        scoreLabel.text = String(score)
        secound = 60
        timeLabel.text = String(secound)
        countCorrect = 0
        updateUI()
        
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
