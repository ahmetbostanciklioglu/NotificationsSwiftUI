import Combine
import UserNotifications

class NotificationsCenter: ObservableObject {
    @Published var alert: Bool = false
    
    /// Scheduling Notification
    func scheduleNotification(_ config: Notifications) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
            /// Permission is  Granted
            if granted {
                let content = UNMutableNotificationContent()
                content.title = config.title
                content.body = config.message
                content.sound = .defaultRingtone
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: config.notificationWillTriggerInTime, repeats: config.isRepeat)
                let request = UNNotificationRequest(identifier: config.requestID, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request) { error in
                    if let error = error {
                        print("Hata oluştu: \(error.localizedDescription)")
                    } else {
                        print(config.notificationsSuccessMessage)
                    }
                }
            }
            /// Permission is  Denied
            else {
                DispatchQueue.main.async {
                    self.alert = true
                }
            }
        }
    }
}
