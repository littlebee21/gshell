const translate = require('google-translate-api');

let data =   {
		"add": "Add",
		"cancel": "Cancel",
		"clearAll": "Clear all",
		"confirm": "Confirm",
		"copy": "Copy",
		"delete": "Delete",
		"deleteAll": "Delete all",
		"disable": "Disable",
		"download": "Download",
		"edit": "Edit",
		"enable": "Enable",
		"export": "Export",
		"exportAll": "Export all",
		"filter": "Filter",
		"refresh": "Refresh",
		"replace": "Replace",
		"reset": "Reset",
		"save": "Save",
		"saveSettings": "Save settings",
		"selected": "Selected"
}
async function creatTranslate(){
		let start = new Date().getTime()
		for (let key in data){
				if(/[^\x00-\xff]/.test(data[key])){
						let res = await readyTranslate(data[key])
						if (res){
								data[key] = res.text
						}
				}
		}
		let end = new Date().getTime()
		let duration = end - start
		console.log(duration)
}
function readyTranslate(string){
		let res = translate(string, {to: 'en'})
		return res;
}
creatTranslate();
