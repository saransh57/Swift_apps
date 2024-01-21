//
//  MapView.swift
//  practices
//
//  Created by Saransh Dubey on 18/12/23.
//
import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Dummy coordinates for San Francisco
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                // Additional setup if needed when the map appears
            }
            .navigationBarTitle("Map Example", displayMode: .inline)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
