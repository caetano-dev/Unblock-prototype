import EventKit
import SwiftUI
var grantedAccess: Bool = false

func requestCalendarAccess(completion: @escaping (Bool) -> Void) {
    let eventStore = EKEventStore()

    switch EKEventStore.authorizationStatus(for: .event) {
    case .authorized, .fullAccess, .writeOnly:
        // The app has already been granted access
        completion(true)
    case .notDetermined:
        // Request permission from the user
        if #available(iOS 17.0, *) {
            eventStore.requestWriteOnlyAccessToEvents { granted, _ in
                completion(granted)
            }
        } else {
            eventStore.requestAccess(to: .event) { granted, _ in
                completion(granted)
            }
        }
    default:
        completion(false)
    }
}
