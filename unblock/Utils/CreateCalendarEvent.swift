import Foundation
import EventKit

func createCalendarEvent(for task: TaskType, completion: ((_ success: Bool, _ error: Error?) -> Void)? = nil) {
    let eventStore = EKEventStore()

    if #available(iOS 17.0, *) {
        eventStore.requestWriteOnlyAccessToEvents { granted, error in
            DispatchQueue.main.async {
                if granted && error == nil {
                    let event = EKEvent(eventStore: eventStore)
                    event.title = task.name
                    event.startDate = task.startDate
                    event.endDate = task.endDate
                    event.notes = task.description
                    event.calendar = eventStore.defaultCalendarForNewEvents

                    do {
                        try eventStore.save(event, span: .thisEvent)
                        completion?(true, nil)
                    } catch {
                        completion?(false, error)
                    }
                } else {
                    completion?(false, error)
                }
            }
        }
    } else {
        eventStore.requestAccess(to: .event) { granted, error in
            if granted && error == nil {
                let event = EKEvent(eventStore: eventStore)
                event.title = task.name
                event.startDate = task.startDate
                event.endDate = task.endDate
                event.notes = task.description
                event.calendar = eventStore.defaultCalendarForNewEvents

                do {
                    try eventStore.save(event, span: .thisEvent)
                    completion?(true, nil)
                } catch {
                    completion?(false, error)
                }
            } else {
                completion?(false, error)
            }
        }
    }
}

