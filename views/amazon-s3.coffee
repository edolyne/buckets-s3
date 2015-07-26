Buckets = require 'buckets'
tpl = require './../templates/amazon-s3'

module.exports = class AmazonS3View extends Buckets.View
  template: tpl

  events:
    'click .uiswitch': 'amazonS3Value'

  amazonS3Value: (event) ->
    event.toElement.value = if event.toElement.value is 'true' then 'false' else 'true'
