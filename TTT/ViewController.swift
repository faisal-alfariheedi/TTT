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
            tm.backgroundColor=UIColor.green
            a[1]=turn
            turn=1
        }else{
            tm.backgroundColor=UIColor.red
            a[1]=turn
            turn=0
        }
        check()
    }
    @IBAction func tronclick(_ sender: UIButton) {
        if(turn==0){
            tr.backgroundColor=UIColor.green
            a[2]=turn
            turn=1
        }else{
            tr.backgroundColor=UIColor.red
            a[2]=turn
            turn=0
        }
        check()
    }
    @IBAction func mlonclick(_ sender: UIButton) {
        if(turn==0){
            ml.backgroundColor=UIColor.green
            a[3]=turn
            turn=1
        }else{
            ml.backgroundColor=UIColor.red
            a[3]=turn
            turn=0
        }
        check()
    }
    @IBAction func mmonclick(_ sender: UIButton) {
        if(turn==0){
            mm.backgroundColor=UIColor.green
            a[4]=turn
            turn=1
        }else{
            mm.backgroundColor=UIColor.red
            a[4]=turn
            turn=0
        }
        check()
    }
    @IBAction func mronclick(_ sender: UIButton) {
        if(turn==0){
            mr.backgroundColor=UIColor.green
            a[5]=turn
            turn=1
        }else{
            mr.backgroundColor=UIColor.red
            a[5]=turn
            turn=0
        }
        check()
    }
    @IBAction func blonclick(_ sender: UIButton) {
        if(turn==0){
            bl.backgroundColor=UIColor.green
            a[6]=turn
            turn=1
        }else{
            bl.backgroundColor=UIColor.red
            a[6]=turn
            turn=0
        }
        check()
    }
    @IBAction func bmonclick(_ sender: UIButton) {
        if(turn==0){
            bm.backgroundColor=UIColor.green
            a[7]=turn
            turn=1
        }else{
            bm.backgroundColor=UIColor.red
            a[7]=turn
            turn=0
        }
        check()
    }
    @IBAction func bronclick(_ sender: UIButton) {
        if(turn==0){
            br.backgroundColor=UIColor.green
            a[8]=turn
            turn=1
        }else{
            br.backgroundColor=UIColor.red
            a[8]=turn
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
        tl.backgroundColor=UIColor.systemGray
        tm.backgroundColor=UIColor.systemGray
        tr.backgroundColor=UIColor.systemGray
        ml.backgroundColor=UIColor.systemGray
        mm.backgroundColor=UIColor.systemGray
        mr.backgroundColor=UIColor.systemGray
        bl.backgroundColor=UIColor.systemGray
        bm.backgroundColor=UIColor.systemGray
        br.backgroundColor=UIColor.systemGray
        
    }
    func check(){
        if(a[0]==a[1]&&a[0]==a[2]){winnn(wn: a[0])}
        if(a[3]==a[4]&&a[3]==a[5]){winnn(wn: a[3])}
        if(a[6]==a[7]&&a[6]==a[8]){winnn(wn: a[6])}
        if(a[0]==a[3]&&a[0]==a[6]){winnn(wn: a[0])}
        if(a[1]==a[4]&&a[1]==a[7]){winnn(wn: a[1])}
        if(a[2]==a[5]&&a[2]==a[8]){winnn(wn: a[2])}
        if(a[0]==a[4]&&a[0]==a[8]){winnn(wn: a[0])}
        if(a[2]==a[4]&&a[2]==a[6]){winnn(wn: a[2])}
        
        
    }
    
    func winnn(wn:Int){
        if(wn==0){
            win.text="Player Green is the winner"
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
            win.text="Player Red is the winner"
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

