class SendRejectedSMS
 def self.call(mobile:, user_name:, event_name:)
    text = "【有志者】亲爱的#{user_name}，您申请成为#{event_name}的志愿者未通过审核。请申请其他活动机会。"

    SendSMS.call(mobile: mobile, text: text)
  end
end

# REJECTED APPLICATION【有志者】亲爱的#name#，您申请成为#event#的志愿者未通过审核。请申请其他活动机会。
