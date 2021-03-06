//
//  SponsorTableViewCell.swift
//  iOSDevUK
//
//  Created by Neil Taylor on 08/08/2017.
//  Copyright © 2017 Aberystwyth University. All rights reserved.
//

import UIKit

class SponsorTableViewCell: UITableViewCell {

    @IBOutlet var sponsorName: UILabel!
    @IBOutlet var sponsorUrl: UILabel!
    @IBOutlet var sponsorCategory: UILabel!
    @IBOutlet var sponsorCategoryImage: UIImageView!
    @IBOutlet var sponsorLogo: UIImageView!
    @IBOutlet var tagline: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
