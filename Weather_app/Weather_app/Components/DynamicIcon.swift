//
//  DynamicIcon.swift
//  Weather_app
//
//  Created by Ishaan Shetty on 02/01/23.
//

import SwiftUI

struct DynamicIcon: View {
    var name: String
    var body: some View {
        let iconSelector = DynamicIconSelector()
        let logoName = iconSelector.getIcon(weatherType: name)
        Image(systemName: logoName)
            .font(.system(size:40))
    }
}

struct DynamicIcon_Previews: PreviewProvider {
    static var previews: some View {
        DynamicIcon(name: "sunny" )
    }
}
