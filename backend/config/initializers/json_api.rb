ActiveModel::Serializer.config.adapter =
  ActiveModel::Serializer::Adapter::JsonApi

Mime::Type.unregister :json
Mime::Type.register 'application/json', :json, %w( application/vnd.api+json )
