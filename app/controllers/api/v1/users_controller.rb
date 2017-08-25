# users_controller.rb
class Api::V1::UsersController < Api::V1::BaseController

  respond_to :json
  acts_as_token_authentication_handler_for User, except: [ :show, :index, :create ]

  before_action :set_user, only: [ :show ]

  after_action :verify_authorized, except: [:index, :create]

  def create
    code = params[:code]
    @user = User.find_by_email(wechat_email(code).downcase) || User.create!(user_params(code))
    render json: @user
  end

  private

  def user_params(code)
    return @user_params if @user_params

    @user_params = set_params
    @user_params['name'] = 'TBD'

    # GET both openid and session_key
    @user_params['email'] = wechat_email(code)
    @user_params['password'] = Devise.friendly_token
    @user_params['authentication_token'] = Devise.friendly_token
    @user_params
  end

  def wechat_email(code)
    @wechat_email ||= fetch_open_id(code)  + "@volunteerus.fuck"
  end

  def fetch_open_id(code)
    url = "https://api.weixin.qq.com/sns/jscode2session"
    wechat_params = {
      appid: ENV.fetch('APP_ID'),
      secret: ENV.fetch('APP_SECRET'),
      js_code: code,
      grant_type: 'authorization_code' }
    response = RestClient.post(url, wechat_params)

    p JSON.parse(response.body)

    JSON.parse(response.body)['openid']
  end


   def set_user
    @user = User.find(params[:id])
    # authorize @user  # For Pundit
  end

  def set_params
    # update later with user model
    params.permit(:nickname)
  end
end
