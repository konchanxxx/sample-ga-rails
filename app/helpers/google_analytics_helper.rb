module GoogleAnalyticsHelper
  def track_page
    return unless Rails.env.production?

    analytics_init(page: request.fullpath)
  end
end
