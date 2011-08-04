# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RProAPI2::Application.initialize!

WillPaginate::ViewHelpers.pagination_options[:prev_label] = "« " + I18n.t("previous")
WillPaginate::ViewHelpers.pagination_options[:next_label] = I18n.t("next") + " »"