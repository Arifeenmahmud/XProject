//
//  VideoListScreen.swift
//  BeginnerTableView
//
//  Created by Lab on 1/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    var Videos: [Video] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Videos = createArray()

    }
    
    func createArray() -> [Video] {
        var  tempVideos: [Video] = []
        
         let video1 = Video(image: UIImage(named: "first-app-one")!, title: "first-app-one")
        let video2 = Video(image: UIImage(named: "first-app-two")!, title: "first-app-two")
        let video3 = Video(image: UIImage(named: "first-app-three")!, title: "first-app-three")
         
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
        
        
        return tempVideos

        
        
    }


}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = Videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "")
    }
}
