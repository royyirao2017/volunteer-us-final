class GenerateQRCode
  def self.call(access_token, event_id)
    endpoint = "https://api.weixin.qq.com/wxa/getwxacode?access_token=#{access_token}"

    params = {
      path: "pages/event/event?id=#{event_id}",
      width: 1024
    }

    headers = {
      'content-type' => 'application/json'
    }

    response = RestClient.post(endpoint, params.to_json, headers)

    file_path = "public/assets/event-qrcode-#{event_id}.png"

    File.open(Rails.root.join(file_path), 'wb') do |file|
      file << response.body
    end

    file_path
  end
end
