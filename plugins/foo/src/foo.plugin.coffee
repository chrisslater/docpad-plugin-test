module.exports = (BasePlugin) ->
	class Foo extends BasePlugin
		name: 'foo'

		@foo: 'bar'

		templateData: ({templateData}, next) ->

			templateData.foo =
				getFoo: @getFoo
			
		getFoo: ->
			@foo