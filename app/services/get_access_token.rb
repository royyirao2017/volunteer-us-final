class GetAccessToken
  def self.call
    params = {
      grant_type: 'client_credential',
      appid: ENV.fetch('APP_ID'),
      secret: ENV.fetch('APP_SECRET')
    }

    end_point = 'https://api.weixin.qq.com/cgi-bin/token'

    response = RestClient.get(end_point, params: params)

    JSON.parse(response.body)['access_token']
  end
end
