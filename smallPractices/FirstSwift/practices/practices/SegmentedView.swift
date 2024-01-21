//
//  SegmentedView.swift
//  practices
//
//  Created by Saransh Dubey on 20/12/23.
//

import SwiftUI

struct SegmentedView: View {

    let segments: [String] = ["OPEN", "COMPLETED", "CANCELLED", "ALL"]
    @State private var selected: String = "OPEN"
    @Namespace var name

    var body: some View {
        HStack(spacing: 0) {
            ForEach(segments, id: \.self) { segment in
                Button {
                    selected = segment
                } label: {
                    VStack {
                        Text(segment)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(selected == segment ? .green : Color(uiColor: .systemGray))
                        ZStack {
                            Capsule()
                                .fill(Color.clear)
                                .frame(height: 4)
                            if selected == segment {
                                Capsule()
                                    .fill(Color.green)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SegmentedView()
}
