/**
 * cars.jsp
 */
function showdialog() {
	$("#dialog").dialog({
		width : 500,
		height : 600,
		title : "添加车辆"
	});
}
function getPath() {
	var Pathobj = document.getElementById("picture");
	if (Pathobj) {
		if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
			Pathobj.select();
			return document.selection.createRange().text;
		} else if (window.navigator.userAgent.indexOf("Firefox") >= 1) {
			if (Pathobj.files) {
				return Pathobj.files.item(0).getAsDataURL();
			}
			return Pathobj.value;
		}
		return Pathobj.value;
	}
}
function getObjectURL(file) {
	var url = null;
	if (window.createObjcectURL != undefined) {
		url = window.createOjcectURL(file);
	} else if (window.URL != undefined) {
		url = window.URL.createObjectURL(file);
	} else if (window.webkitURL != undefined) {
		url = window.webkitURL.createObjectURL(file);
	}
	return url;
}
//使用方法
$("#photo").change(function() {
	var file = this.files[0];
	var url = getObjectURL(file);//blob:http://doamin.com/5376c16a-02f9-489f-b30c-97a1808d5724
	console.log(url);
});

function setpath() {
	$("#photo").val(getPath());
}
function showOrder(x) {
	$("#carid").val(x);
	console.log("++++++++++++++");
	document.getElementById("wrapper").style.display = "block";
}
function change(carid, id, model, desc, price) {
	document.getElementById('carid1').value = carid;
	document.getElementById('id1').value = id;
	document.getElementById('model1').value = model;
	document.getElementById('describe1').value = desc;
	document.getElementById('price1').value = price;
	$("#dialog1").dialog({
		width : 500,
		height : 500,
		title : "更改信息"
	});
}
