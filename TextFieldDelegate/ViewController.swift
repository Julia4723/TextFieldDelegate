//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by user on 29.09.2024.
//

import UIKit
///Мы можем использовать встроенный в UIKit протокол делегата для текстового поля UITextFieldDelegate. Этот протокол предоставляет методы, которые уведомляют о различных событиях, связанных с текстовым полем, например, когда текст изменяется или когда пользователь нажимает "Return".

//Устанавливаем объект, который будет делегатом для текстового поля. Обычно это ViewController, который реализует необходимые методы протокола.
class ViewController: UIViewController, UITextFieldDelegate {

    // Создаем текстовое поле
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Устанавливаем делегата для текстового поля
        textField.delegate = self
        
        // Дополнительная настройка текстового поля
        textField.placeholder = "Введите текст"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 20, y: 100, width: 280, height: 40)
        view.addSubview(textField)
    }

    // Реализация метода делегата, который вызывается при изменении текста
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Текст изменен: \(textField.text ?? "")")
        return true
    }
}


