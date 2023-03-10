//
//  ViewController.swift
//  ToastMessageExample
//
//  Created by plsystems on 2023/03/10.
//

import UIKit
import Then
import SnapKit

// MARK: - Protocol, View 속성에 관한 내용
protocol ViewAttributes: AnyObject {
    func setUI()
    func setAttributes()
}

class ViewController: UIViewController, ViewAttributes {
    
    // MARK: - create Instance, Use Then
    lazy var btn1 = UIButton().then {
        
        $0.setTitle("btn1", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 5
        $0.tag = 1
        $0.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
    }
    lazy var btn2 = UIButton().then {
        
        $0.setTitle("btn2", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 5
        $0.tag = 2
        $0.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
    }
    lazy var btn3 = UIButton().then {
        
        $0.setTitle("btn3", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 5
        $0.tag = 3
        $0.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setAttributes()
    }
    
    // MARK: - addSubview
    func setUI() {
        
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
    }
    
    // MARK: - Autolayout
    func setAttributes() {
        
        btn1.snp.makeConstraints {
            
            $0.top.equalTo(self.view.safeAreaLayoutGuide).offset(20)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(100)
            $0.height.equalTo(30)
        }
        btn2.snp.makeConstraints {
            
            $0.top.equalTo(btn1.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(100)
            $0.height.equalTo(30)
        }
        btn3.snp.makeConstraints {
            
            $0.top.equalTo(btn2.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(100)
            $0.height.equalTo(30)
        }
    }
    
    // MARK: -  버튼 클릭, tag로 분기처리
    @objc func btnAction(_ sender: Any) {
        guard let btn = sender as? UIButton else {
            print("오류발생")
            return
        }
        
        switch btn.tag {
        case 1:
            makeToast(message: "makeToast")
            
        case 2:
            makeToast2(message: "makeToast2", duration: 3.0, position: .center)
            
        case 3:
            guard let heart = UIImage(systemName: "heart.fill") else {return}
            
            makeToast3(message: "makeToast3", duration: 3.0, position: .bottom, title: "title", image: heart)
        default:
            break
        }
    }
}

