class SendOrganizerAlertSMS
 def self.call(mobile:, user_name:, event_name:)
    text = "TRANSLATE TO CHINESE: A new volunteer has applied to work your event!"

    SendSMS.call(mobile: mobile, text: text)
  end
end

# Alert organizer that a new volunteer wants to work at their event.

