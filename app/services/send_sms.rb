class SendSMS
  def self.call(mobile:, text:)
    endpoint = 'https://sms.yunpian.com/v2/sms/single_send.json'

    payload = {
      apikey: ENV.fetch('YUNPIAN_API_KEY'),
      mobile: mobile,
      text: text
    }

    RestClient.post(endpoint, payload)
  end
end


# 【有志者】亲爱的#name#，您申请成为#event#的志愿者已成功通过审核。有志者助力您事业成功。
# 【有志者】亲爱的#name#，您申请成为#event#的志愿者未通过审核。请申请其他活动机会。

# 【有志者】亲爱的 Forrest，您申请成为 crazy gaming night 的志愿者已成功通过审核。有志者助力您事业成功。
