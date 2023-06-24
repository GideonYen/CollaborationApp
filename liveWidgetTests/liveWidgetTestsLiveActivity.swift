//
//  liveWidgetTestsLiveActivity.swift
//  liveWidgetTests
//
//  Created by Milind Contractor on 7/6/23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct liveWidgetTestsAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct liveWidgetTestsLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: liveWidgetTestsAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension liveWidgetTestsAttributes {
    fileprivate static var preview: liveWidgetTestsAttributes {
        liveWidgetTestsAttributes(name: "World")
    }
}

extension liveWidgetTestsAttributes.ContentState {
    fileprivate static var smiley: liveWidgetTestsAttributes.ContentState {
        liveWidgetTestsAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: liveWidgetTestsAttributes.ContentState {
         liveWidgetTestsAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: liveWidgetTestsAttributes.preview) {
   liveWidgetTestsLiveActivity()
} contentStates: {
    liveWidgetTestsAttributes.ContentState.smiley
    liveWidgetTestsAttributes.ContentState.starEyes
}
