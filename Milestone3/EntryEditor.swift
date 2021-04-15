//
//  EntryEditor.swift
//  Milestone3
//
//  Created by Johnson Taylor on 15/4/21.
//

import Foundation
import SwiftUI

struct EntryEditor: View {
    @Binding var entry: Entry
    
    var body: some View {
        List {
            HStack {
                Text("Title").bold()
                Divider()
                TextField("Title", text: $entry.title)
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        EntryEditor(entry: .constant(.default))
    }
}
