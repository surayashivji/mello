//
//  MLOOptionTableViewCell.swift
//  MelloApp
//
//  Created by Harrison Weinerman on 2/25/19.
//  Copyright © 2019 Suraya Shivji. All rights reserved.
//

import UIKit

class MLOOptionTableViewCell: UITableViewCell {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var selectionImage: UIImageView!
    var option: MLOSelectableListOption?
    
    var isOptionSelected = false {
        didSet {
            if isOptionSelected {
                button.backgroundColor = option?.selectionColor
            } else {
                button.backgroundColor = option?.defaultColor
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }

    @IBAction func selected(_ sender: Any) {
        isOptionSelected = !isOptionSelected
    }
    
}
