//
//  ViewController.swift
//  MpaViewNotes
//
//  Created by LOGAN GOUGH on 1/24/25.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    let locationManager = CLLocationManager()
    
    var currentLocation : CLLocation!
    var parks : [MKMapItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let center = CLLocationCoordinate2D(latitude: 42.2371, longitude: -88.3225)
        let center2 = locationManager.location!.coordinate
        let region = MKCoordinateRegion(center: center2, latitudinalMeters: 1600, longitudinalMeters: 1600)
        let region2 = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region2, animated: true)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }
    
    
    
    @IBAction func button(_ sender: UIButton) {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "Schools"
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            guard let response = response
            else{return}
            for mapItem  in response.mapItems{
                self.parks.append(mapItem)
                let annotation  = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapView.addAnnotation(annotation)
            }
            
        }
        
        
    }
    
    
    
}

