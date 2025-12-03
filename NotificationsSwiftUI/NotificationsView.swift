import SwiftUI
import UserNotifications
import Combine

struct NotificationsView: View {
    let config = Notifications.notDetermined
    @StateObject private var notificationCenter: NotificationsCenter = .init()
    var body: some View {
        ScheduleNotificationButton()
    }
    
    @ViewBuilder
    func ScheduleNotificationButton() -> some View {
        Button(
            action: { notificationCenter.scheduleNotification(config) },
            label: { Text(config.sendNotificationText).scheduleButtonModifiers() }
        )
        .alert(config.deniedText, isPresented: $notificationCenter.alert) {
            Button(config.closeButtonText, role: .cancel) { }
        }
    }
}

#Preview {
    NotificationsView()
}
