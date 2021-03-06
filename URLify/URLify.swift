//
//  URLify.swift
//  URLify
//
//  Created by Andrew Lewis on 7/4/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation

class URLify {
    
    let inputOutput = IO()
    
    func startingPoint(){
        
        print("Please enter a string")
        let userInput = inputOutput.getInput()
        
        let finalOutput = replaceSpaces(userInput: userInput)
        
        print("The final output is: " + finalOutput)
        
        
    }
    
    func replaceSpaces(userInput:String)->String{

        var newString = ""
        
        for characters in userInput.indices {
            if userInput[characters] == " "{
                newString.append("%20")
            }else{
                newString.append(userInput[characters])
            }
        }

        return newString
    }
}
