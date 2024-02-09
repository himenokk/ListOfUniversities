//
//  ViewController.swift
//  listUni
//
//  Created by Sanzhar Kiyassov on 08.02.2024.
//

import UIKit
import SwiftyJSON
import MapKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    var list: UniList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let list = list {
            
            nameLabel.text = list.name
            locationLabel.text = list.location
            
            if let image = UIImage(named: list.image) {
                imageView.image = image
            } else {
                print("Unable to find image with name: \(list.image)") //почему-то не получается картинку вывести
            }
        }
        
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
        //
        //    @IBAction func touched(_ sender: Any) {
        //        let mapVC = storyboard?.instantiateViewController(identifier: "detailMapView") as! MapViewController
        //
        //        mapVC.list = list
        //        navigationController?.show(mapVC, sender: self)
        //}
        
    
}
