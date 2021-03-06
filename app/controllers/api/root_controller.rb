class API::RootController < API::BaseController
  def index
    render json: {
      data: {
        organization: 'Hack N Akron',
        project: {
          name: 'Open Data API',
          repository: 'https://github.com/hacknakron/open-data-api'
        },
        location: {
          address1: '',
          address2: '',
          city: 'Akron',
          country: 'United States',
          state: 'OH',
          zip_code: '44308'
        }
      }
    }
  end
end
