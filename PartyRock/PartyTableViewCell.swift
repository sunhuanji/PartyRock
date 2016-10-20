
//
//  PartyTableViewCell.swift
//  PartyRock
//
//  Created by Sun Huanji on 2016/10/20.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(partyRock:PartyRock){
     videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do{
              let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch{
             
            }
        }
    }

}
