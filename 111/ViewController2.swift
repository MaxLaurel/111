

import UIKit

class ViewController2: UIViewController {
    
    let lable = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(lable)
        lable.text = "Have a good day!"
        lable.textAlignment = .center
        lable.textColor = UIColor.black
        lable.numberOfLines = 0
         //   lable.shadowColor = UIColor.
        lable.shadowOffset = CGSize(width: 1, height: 1)
        lable.layer.cornerRadius = 15
            lable.layer.borderColor = UIColor.red.cgColor
        lable.layer.borderWidth = 5
        lable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            lable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
            lable.widthAnchor.constraint(equalToConstant: 150),
            lable.heightAnchor.constraint(equalToConstant: 50)])
        
    }
    
    @IBAction func alert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Внимание", message: "Вы действительно хотите закрыть сообщение?", preferredStyle: .actionSheet)
        let button = UIAlertAction(title: "да", style: .default, handler: nil)
        let button2 = UIAlertAction(title: "нет", style: .cancel)
        let button3 = UIAlertAction(title: "выйти", style: .destructive)
        
        alert.addAction(button)
        alert.addAction(button2)
        alert.addAction(button3)
        

        present(alert, animated: true, completion: nil)
    }

    }

