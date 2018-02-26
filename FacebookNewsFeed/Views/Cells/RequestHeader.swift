//
//  RequestHeader.swift
//  FacebookNewsFeed
//
//  Created by Lucas Nascimento on 26/02/2018.
//  Copyright © 2018 Lucas Nascimento. All rights reserved.
//

import UIKit

class RequestHeader: UITableViewHeaderFooterView {
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "FRIEND REQUESTS"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = UIColor(white: 0.4, alpha: 1)
        return label
    }()
    
    let bottomBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = ColorPalette.topBorderColor
        return view
    }()
    
    func setupViews() {
        addSubview(nameLabel)
        addSubview(bottomBorderView)
        
        addConstraintsWithFormat(format: "H:|-8-[v0]-8-|", views: nameLabel)
        addConstraintsWithFormat(format: "H:|[v0]|", views: bottomBorderView)
        
        addConstraintsWithFormat(format: "V:|[v0][v1(0.5)]|", views: nameLabel, bottomBorderView)
    }
}
