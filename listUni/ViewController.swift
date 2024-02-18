//
//  ViewController.swift
//  listUni
//
//  Created by Sanzhar Kiyassov on 08.02.2024.
//

import UIKit
import SwiftyJSON
import MapKit
import SVProgressHUD
import Alamofire
import SDWebImage


class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    var list = UniList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = list.name
        locationLabel.text = list.location
        imageView.sd_setImage(with: URL(string: list.piсture), completed: nil)
        
        print(list)
        
  
            
            /*
             let item = Item(name: "Example", imageURL: "https://example.com/image.jpg")
             let imageLoader = ImageLoader()
             imageLoader.loadImage(from: item.imageURL) { image in
                 if let image = image {
                     // Do something with the image
                     print("Image loaded successfully!")
                 } else {
                     // Handle the case where the image couldn't be loaded
                     print("Failed to load image.")
                 }
             }
             */
            
//            let listItem = UniList(json: item)
//            self.arrayUni.append(listItem)
       
       
        
        //        let lat: CLLocationDegrees = list?.lat
        //        let long: CLLocationDegrees = list?.long
        //
        //        // Создаем координату передавая долготу и широту
        //        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long)
        //
        //        // Создаем метку на карте
        //        let anotation = MKPointAnnotation()
        //
        //        // Создаем координаты на метке
        //        anotation.coordinate = location
        //
        //        // Задаем название для нашей метки
        //        anotation.title = list?.name
        //
        //        // Добавляем метку на карту
        //        mapView.addAnnotation(anotation)
        //
        //        mapView.setRegion(MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)), animated: true)
        
            }
      
        
    
}
