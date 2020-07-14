//
//  MapView.swift
//  SwiftBasics
//
//  Created by Rodion Prosvirnin on 14.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI
import MapKit

//The UIViewRepresentable protocol has two requirements you need to add: a makeUIView(context:) method that creates an MKMapView, and an updateUIView(_:context:) method that configures the view and responds to any changes.
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    //method that sets the map view’s region to the correct coordinates to center the map on Turtle Rock.
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
