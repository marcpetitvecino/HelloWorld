//
//  MapView.swift
//  HelloWorld
//
//  Created by Marc Petit Vecino on 23/9/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: 40.4380638, longitude: -3.7495762)
        
        let span = MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 15)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
