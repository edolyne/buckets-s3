module.exports = class AmazonS3Plugin
  constructor: (options) ->
    options.hbs?.registerHelper 'amazon-s3', (value) ->
      checked = if value == 'true' then 'checked' else ''
      new options.hbs.handlebars.SafeString """
          <input type="checkbox" id="input-toggle" class="uiswitch form-control" value="#{value}" #{checked}>
      """

  preSave: ->
    console.log 'preSave', arguments
