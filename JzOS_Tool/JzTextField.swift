//
//  JzTextField.swift
//  JzOS_Tool
//
//  Created by Jianzhi.wang on 2020/2/23.
//  Copyright © 2020 Jianzhi.wang. All rights reserved.
//


import UIKit

open class JzTextField: UITextField,UITextFieldDelegate {
    open var textWillChange:((_ a:String)->Void)?=nil
    open var textDidEdit:(()->Void)?=nil
    open var digits=""
    open var textCount = -1
    open  var upcase=false
    override public func draw(_ rect: CGRect) {
        self.delegate=self
    }
    
    override public func didChangeValue(forKey key: String) {
        if(textDidEdit != nil){
            textDidEdit!()
        }
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let aSet = NSCharacterSet(charactersIn:digits).inverted
        let compSepByCharInSet = string.components(separatedBy: aSet)
        let numberFiltered = compSepByCharInSet.joined(separator: "")
        var returnvalue=true
        if(digits != ""&&string != numberFiltered){
            returnvalue=false
        }
        if(textCount != -1 && (textField.text!+string).count>textCount){
            returnvalue=false
        }
        let currentText = textField.text ?? ""
        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
        if(textWillChange != nil&&returnvalue){
            textWillChange!(newText)
        }
        return returnvalue
    }
    public func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print(textField.text)
    }
    
}
