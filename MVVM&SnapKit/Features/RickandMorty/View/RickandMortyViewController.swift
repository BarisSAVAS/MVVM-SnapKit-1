//
//  RickandMortyViewController.swift
//  MVVM&SnapKit
//
//  Created by Barış Savaş on 19.01.2023.
//

import UIKit
import SnapKit

final class RickandMortyViewController: UIViewController {
    
    private let labelTittle:UILabel = UILabel()
    private let box:UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
        // Do any additional setup after loading the view.
    }
        func configure(){
        view.addSubview(labelTittle)
        view.addSubview(box)
            box.backgroundColor = .red
        
        labelTittle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview()
            make.height.equalTo(10)
        }
        box.snp.makeConstraints { make in
            make.top.equalTo(labelTittle).offset(5)
            make.bottom.equalToSuperview()
            make.left.right.equalTo(labelTittle)
        }
    }
}
