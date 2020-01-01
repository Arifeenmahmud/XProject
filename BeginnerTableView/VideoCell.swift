//
//  VideoCell.swift
//  BeginnerTableView
//
//  Created by Lab on 1/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet var VideoImageView: UIImageView!
    @IBOutlet var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        VideoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
