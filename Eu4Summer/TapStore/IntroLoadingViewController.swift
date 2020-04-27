//
//  IntroLoadingViewController.swift
//  TapStore
//
//  Created by Piero Junior Gaetani on 25/04/2020.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//


import UIKit
import AVKit
import AVFoundation

class IntroLoadingViewController: UIViewController {
    
    var timer: Timer? = nil
    var tempo = 0.0

     override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            playVideo()
         timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(contiamoIlTempo), userInfo: nil, repeats: true)
        }

        private func playVideo() {
            guard let path = Bundle.main.path(forResource: "IntroVideoEuroPiriSmart", ofType:"m4v") else {
                debugPrint("video.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = self.view.frame
            playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            self.view.layer.insertSublayer(playerLayer, at: 0)
            
            player.seek(to: CMTime.zero)
            player.play()
            
            
            var Eu4SummerLogo : UIImageView
            Eu4SummerLogo  = UIImageView(frame:CGRect(x:19, y:590, width:290, height:38));
            Eu4SummerLogo.image = UIImage(named:"Eu4SummerLogo.jpeg")
            self.view.addSubview(Eu4SummerLogo)
            
            let progressView = UIProgressView(progressViewStyle: .bar)
            
           
            
           progressView.center =  CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY - 150)
            
            progressView.setProgress(2.7, animated: true)
           
            progressView.tintColor = UIColor.white
            
            progressView.transform =  CGAffineTransform(scaleX: 2.0, y: 4.0)
            
            progressView.layer.cornerRadius = 3
            
            progressView.clipsToBounds = true
            
            
           view.addSubview(progressView)
            
            
            
    }
    
    
    @objc func contiamoIlTempo()
       {
           tempo = tempo + 1.5
       
        if (tempo > 2.9){
                performSegue(withIdentifier: "toHome", sender: nil)
        }
            
           
           }
    
   
            
            }
        

