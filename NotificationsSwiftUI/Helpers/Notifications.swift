import Foundation


enum Notifications{
    case notDetermined
    
    var title: String { "Hello" }
    var message: String { "This is a test notification" }
    var notificationWillTriggerInTime: TimeInterval { 5 }
    var isRepeat: Bool { false }
    var requestID: String { "notificationID" }
    var sendNotificationText: String { "Send Notifications" }
    var deniedText: String { "Please Enable Notification Access In Settings Panel !!!" }
    var closeButtonText: String { "OK" }
    var notificationsSuccessMessage: String { "Notifications Will be Sent in 5 Seconds." }
}
