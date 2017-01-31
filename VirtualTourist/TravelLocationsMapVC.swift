//
//  TravelLocationsMapViewController.swift
//  VirtualTourist
//
//  Created by Ka Ho Poon on 30/1/2017.
//  Copyright © 2017 Ka Ho Poon. All rights reserved.
//

import UIKit
import MapKit

class TravelLocationsMapVC: UIViewController, MKMapViewDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var deleteNoteView: UIView!
    
    var gestureBegin: Bool = false
    var editMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRightBarButtonItem()
    }
    
    func setRightBarButtonItem() {
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        gestureBegin = true
        return true
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if !editMode {
            performSegue(withIdentifier: "photoAlbumSegue", sender: view.annotation?.coordinate)
        } else {
            removeCoreData(of: view.annotation!)
            mapView.removeAnnotation(view.annotation!)
        }
    }
    
    @IBAction func responseLongTapAction(_ sender: Any) {
        if gestureBegin {
            let gestureRecognizer = sender as! UILongPressGestureRecognizer
            let gestureTouchLocation = gestureRecognizer.location(in: mapView)
            addAnnotationToMap(fromPoint: gestureTouchLocation)
            gestureBegin = false
        }
    }
    
    func addAnnotationToMap(fromPoint: CGPoint) {
        let coordToAdd = mapView.convert(fromPoint, toCoordinateFrom: mapView)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordToAdd
        mapView.addAnnotation(annotation)
    }
    
    func removeCoreData(of: MKAnnotation) {
        let coord = of.coordinate
        // TODO
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "photoAlbumSegue" {
            let destination = segue.destination as! PhotoAlbumVC
            destination.coordinateSelected = sender as! CLLocationCoordinate2D
        }
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        deleteNoteView.isHidden = !editing
        editMode = editing
    }
    
}

