App.MessageView = Ember.View.extend({
	templateName: "alooksie/templates/messages/show"
});

App.MessagesView = Ember.View.extend({
	templateName: "alooksie/templates/messages/index",
	didInsertElement: function() {
		console.log('hi');
	}
});

App.MessagesNewView = Ember.View.extend({
	templateName: "alooksie/templates/messages/new"
});