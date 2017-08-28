class SendAcceptedSMS
  def self.call(mobile:, user_name:, event_name:)
    text = "【有志者】亲爱的 #{user_name}，您申请成为 #{event_name} 的志愿者已成功通过审核。有志者助力您事业成功。"

    SendSMS.call(mobile: mobile, text: text)
  end
end

# ACCEPTED APPLICATION【有志者】亲爱的 Forrest，您申请成为 crazy gaming night 的志愿者已成功通过审核。有志者助力您事业成功。
