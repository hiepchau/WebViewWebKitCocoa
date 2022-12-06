//
//  InputURLViewController.swift
//  WebViewWebKitCocoa
//
//  Created by Châu Hiệp on 02/12/2022.
//

import UIKit

class InputURLViewController: UIViewController {

    @IBOutlet weak var displayButton: UIButton!
    @IBOutlet weak var lbInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let vc = segue.destination as? WKViewController
        {
            vc.url = lbInput.text ?? ""
        }
    }
    
    @IBAction func didTapButton(_ sender: Any){
        performSegue(withIdentifier: "segue", sender: self)
    }

}
