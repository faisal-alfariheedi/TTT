//
//  ViewController.swift
//  TTT
//
//  Created by faisal on 20/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tl: UIButton!
    @IBOutlet weak var tm: UIButton!
    @IBOutlet weak var tr: UIButton!
    @IBOutlet weak var ml: UIButton!
    @IBOutlet weak var mm: UIButton!
    @IBOutlet weak var mr: UIButton!
    @IBOutlet weak var bl: UIButton!
    @IBOutlet weak var bm: UIButton!
    @IBOutlet weak var br: UIButton!
    @IBOutlet weak var win: UILabel!
    var turn=0
    var a=[3,4,5,6,7,8,9,10,11]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        win.isHidden=true
        // Do any additional setup after loading the view.
    }
    @IBAction func tlonclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func tmonclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func tronclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func mlonclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func mmonclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func mronclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func blonclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func bmonclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    @IBAction func bronclick(_ sender: UIButton) {
        if(turn==0){
            tl.backgroundColor=UIColor.green
            a[0]=turn
            turn=1
        }else{
            tl.backgroundColor=UIColor.red
            a[0]=turn
            turn=0
        }
        check()
    }
    
    @IBAction func resetonclick(_ sender: UIButton) {
        a=[3,4,5,6,7,8,9,10,11]
        // 0 1 2 3 4 5 6 7  8
        // T T T M M M B B  B
        // L M R L M R L M  R
        turn=0
        win.isHidden=true
        tl.isEnabled=true
        tm.isEnabled=true
        tr.isEnabled=true
        ml.isEnabled=true
        mm.isEnabled=true
        mr.isEnabled=true
        bl.isEnabled=true
        bm.isEnabled=true
        br.isEnabled=true
    }
    func check(){
        if(a[0]==a[1]&&a[0]==a[2]){winnn(wn: turn)}
        if(a[3]==a[4]&&a[3]==a[5]){winnn(wn: turn)}
        if(a[6]==a[7]&&a[6]==a[8]){winnn(wn: turn)}
        if(a[0]==a[3]&&a[0]==a[6]){winnn(wn: turn)}
        if(a[1]==a[4]&&a[1]==a[7]){winnn(wn: turn)}
        if(a[2]==a[5]&&a[2]==a[8]){winnn(wn: turn)}
        if(a[0]==a[4]&&a[0]==a[8]){winnn(wn: turn)}
        if(a[2]==a[4]&&a[2]==a[6]){winnn(wn: turn)}
        
        
    }
    
    func winnn(wn:Int){
        if(wn==0){
            win.text="Congratolations Player Green is the winner"
            win.isHidden=false
            tl.isEnabled=false
            tm.isEnabled=false
            tr.isEnabled=false
            ml.isEnabled=false
            mm.isEnabled=false
            mr.isEnabled=false
            bl.isEnabled=false
            bm.isEnabled=false
            br.isEnabled=false
            
        }else{
            win.text="Congratolations Player Red is the winner"
            win.isHidden=false
            tl.isEnabled=false
            tm.isEnabled=false
            tr.isEnabled=false
            ml.isEnabled=false
            mm.isEnabled=false
            mr.isEnabled=false
            bl.isEnabled=false
            bm.isEnabled=false
            br.isEnabled=false
        }
    }
}

