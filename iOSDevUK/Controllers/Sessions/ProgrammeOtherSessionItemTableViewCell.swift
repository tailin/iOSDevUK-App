//
//  ProgrammeOtherSessionItemTableViewCell.swift
//  iOSDevUK
//
//  Created by Neil Taylor on 10/08/2018.
//  Copyright © 2018 Aberystwyth University. All rights reserved.
//

import UIKit

class ProgrammeOtherSessionItemTableViewCell: ProgrammeBaseSessionItemTableViewCell {

    @IBOutlet weak var sessionTitle: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func configure(withSession session: Session) {
        super.configure(withSession: session)
        
        if let sessionItem = session.sessionItem(atPosition: 0) {
            sessionTitle.text = sessionItem.title
            location.text = sessionItem.location?.shortName
            
            if sessionItem.type == SessionType.coffeeBiscuits {
                emojiLabel.text = "☕️🍪"
            }
            else if sessionItem.type == SessionType.coffeeCake {
                emojiLabel.text = "☕️🍰"
            }
            else if sessionItem.type == SessionType.registration {
                emojiLabel.text = "🎫"
            }
            else if sessionItem.type == SessionType.train {
                emojiLabel.text = "🚂"
            }
            else if sessionItem.type == SessionType.lunch {
                emojiLabel.text = "🍴☕️"
            }
            else {
                emojiLabel.text = ""
            }
        }
        
        self.backgroundColor = UIColor.iOSDevUKOtherCellBackground()
    }
}
