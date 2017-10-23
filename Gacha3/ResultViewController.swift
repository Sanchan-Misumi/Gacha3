//
//  ResultViewController.swift
//  Gacha3
//
//  Created by Maho Misumi on 2017/10/23.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var number: Int!
    
    @IBOutlet var BackgroundImage: UIImageView!
     @IBOutlet var MonsterImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        number = Int(arc4random_uniform(10))
        if number == 9 {
            BackgroundImage.image = UIImage(named: "bg_gold.png")
            MonsterImage.image = UIImage(named: "monster010.png")
        } else if number > 7 {
            BackgroundImage.image = UIImage(named: "bg_red.png")
            MonsterImage.image = UIImage(named: "monster009.png")
        }else {
            BackgroundImage.image = UIImage(named: "bg_blue.png")
            MonsterImage.image = UIImage(named: "monster008.png")
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
