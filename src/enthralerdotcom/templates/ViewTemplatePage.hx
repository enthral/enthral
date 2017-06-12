package enthralerdotcom.templates;

import smalluniverse.UniversalPage;
import smalluniverse.SUMacro.jsx;
#if client
	import js.html.*;
#end
import enthralerdotcom.templates.TemplateListView;
using tink.CoreApi;

enum ViewTemplateAction {
	None;
}
typedef ViewTemplateParams = {name:String};
typedef ViewTemplateProps = {};

class ViewTemplatePage extends UniversalPage<ViewTemplateAction, ViewTemplateParams, ViewTemplateProps, {}, {}> {

	@:client var githubUsername:String;
	@:client var githubRepo:String;

	public function new(templatesApi:ViewTemplateBackendApi) {
		super(templatesApi);
	}

	override function render() {
		this.head.addScript('/assets/enthralerdotcom.bundle.js');
		this.head.addStylesheet('/assets/styles.css');
		this.head.setTitle('Manage templates!');
		return jsx('<div>
			<h1 className="title">View a template</h1>
		</div>');
	}
}
