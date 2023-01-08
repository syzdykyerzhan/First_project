//
//  ViewController.swift
//  app_calculator
//
//  Created by Yerzhan Syzdyk on 28.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let myList = ["AC","+/-","%","/","7","8","9","*","4","5","6","-","1","2","3","+","0",",","="]
    
    //var myListofButtons = createButton(by: myList)
    
    private lazy var topView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.black
        return myView
    }()
    
    private lazy var myLabel : UILabel = {
        var myLabel = UILabel()
        myLabel.text = "0"
        myLabel.textColor = UIColor.white
        //myLabel.backgroundColor = UIColor.red
        myLabel.font = UIFont.boldSystemFont(ofSize: 60)
        myLabel.textAlignment = .right
        return myLabel
    }()
    
    private lazy var bottomView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.gray
        return myView
    }()
    
    private lazy var firstView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.black
        return myView
    }()
    
    private lazy var secondView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.black
        return myView
    }()
    
    private lazy var thirdView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.black
        return myView
    }()
    
    private lazy var fourthView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.black
        return myView
    }()
    
    private lazy var fifthView : UIView = {
        var myView = UIView()
        myView.backgroundColor = UIColor.black
        return myView
    }()
    
    private lazy var buttonZero : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("0", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonOne : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("1", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonTwo : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("2", for: .normal)
       // myButton.layer.cornerRadius = 50
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        return myButton
    }()
    
    private lazy var buttonThree : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("3", for: .normal)
        //myButton.layer.cornerRadius = 50
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        return myButton
    }()
    
    private lazy var buttonFour : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("4", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonFive : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("5", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonSix : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("6", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonSeven : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("7", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonEight : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("8", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonNine : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle("9", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonAC : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.lightGray
        myButton.setTitle("AC", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonNegOrPos : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.lightGray
        myButton.setTitle("+/-", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonProcent : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.lightGray
        myButton.setTitle("%", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
       // myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonDivide : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.systemYellow
        myButton.setTitle("/", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonMultiply : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.systemYellow
        myButton.setTitle("*", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonSubtract : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.systemYellow
        myButton.setTitle("-", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonAdd : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.systemYellow
        myButton.setTitle("+", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonEqual : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.systemYellow
        myButton.setTitle("=", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    private lazy var buttonForDouble : UIButton = {
        var myButton = UIButton()
        myButton.backgroundColor = UIColor.darkGray
        myButton.setTitle(",", for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        //myButton.layer.cornerRadius = 50
        return myButton
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }


}

//MARK: Setup Views and Constraints

private extension ViewController{
    private func setupViews(){
        view.addSubview(topView)
        topView.addSubview(myLabel)
        view.addSubview(bottomView)
        bottomView.addSubview(firstView)
        bottomView.addSubview(secondView)
        bottomView.addSubview(thirdView)
        bottomView.addSubview(fourthView)
        bottomView.addSubview(fifthView)
        
        //Adding buttons to views
        firstView.addSubview(buttonAC)
        firstView.addSubview(buttonNegOrPos)
        firstView.addSubview(buttonProcent)
        firstView.addSubview(buttonDivide)
        
        secondView.addSubview(buttonSeven)
        secondView.addSubview(buttonEight)
        secondView.addSubview(buttonNine)
        secondView.addSubview(buttonMultiply)
        
        thirdView.addSubview(buttonFour)
        thirdView.addSubview(buttonFive)
        thirdView.addSubview(buttonSix)
        thirdView.addSubview(buttonSubtract)
        
        fourthView.addSubview(buttonOne)
        fourthView.addSubview(buttonTwo)
        fourthView.addSubview(buttonThree)
        fourthView.addSubview(buttonAdd)
        
        fifthView.addSubview(buttonZero)
        fifthView.addSubview(buttonForDouble)
        fifthView.addSubview(buttonEqual)
    }
    
    private func setupConstraints(){
        topView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(2.5)
        }
        
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
        myLabel.snp.makeConstraints { make in
            make.bottom.leading.trailing.equalToSuperview().inset(5)
            make.height.equalTo(100)
        }
        
        firstView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        
        secondView.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        
        thirdView.snp.makeConstraints { make in
            make.top.equalTo(secondView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        
        fourthView.snp.makeConstraints { make in
            make.top.equalTo(thirdView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        
        fifthView.snp.makeConstraints { make in
            make.top.equalTo(fourthView.snp.bottom)
            make.bottom.leading.trailing.equalToSuperview()
        }
        //Button Constraints
        buttonAC.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
            
        }
        
        buttonNegOrPos.snp.makeConstraints { make in
            make.leading.equalTo(buttonAC.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonProcent.snp.makeConstraints { make in
            make.leading.equalTo(buttonNegOrPos.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonDivide.snp.makeConstraints { make in
            make.leading.equalTo(buttonProcent.snp.trailing)
            make.top.bottom.trailing.equalToSuperview()
        }
        
        buttonSeven.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        
        buttonEight.snp.makeConstraints { make in
            make.leading.equalTo(buttonSeven.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonNine.snp.makeConstraints { make in
            make.leading.equalTo(buttonEight.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonMultiply.snp.makeConstraints { make in
            make.leading.equalTo(buttonNine.snp.trailing)
            make.top.bottom.trailing.equalToSuperview()
        }
        
        buttonFour.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        
        buttonFive.snp.makeConstraints { make in
            make.leading.equalTo(buttonFour.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonSix.snp.makeConstraints { make in
            make.leading.equalTo(buttonFive.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonSubtract.snp.makeConstraints { make in
            make.leading.equalTo(buttonSix.snp.trailing)
            make.top.bottom.trailing.equalToSuperview()
        }
        
        buttonOne.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        
        buttonTwo.snp.makeConstraints { make in
            make.leading.equalTo(buttonOne.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonThree.snp.makeConstraints { make in
            make.leading.equalTo(buttonTwo.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonAdd.snp.makeConstraints { make in
            make.leading.equalTo(buttonThree.snp.trailing)
            make.top.bottom.trailing.equalToSuperview()
        }
        
        buttonZero.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
        }
        
        buttonForDouble.snp.makeConstraints { make in
            make.leading.equalTo(buttonZero.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
            make.top.bottom.equalToSuperview()
        }
        
        buttonEqual.snp.makeConstraints { make in
            make.leading.equalTo(buttonForDouble.snp.trailing)
            make.top.bottom.trailing.equalToSuperview()
        }
        
        
    }
}



extension ViewController{
    func createButton(by list : [String]) -> [UIButton]{
        var myListOfButtons : [UIButton] = []
        
        for name in list{
            let myButton = UIButton()
            myButton.backgroundColor = UIColor.darkGray
            myButton.setTitle(name, for: .normal)
            myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            myButton.layer.cornerRadius = 50
            myListOfButtons.append(myButton)
        }
        
        return myListOfButtons
    }
}
