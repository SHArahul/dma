var i = 0;
function increment() {
    i += 1;
}

function addNew(n) {
document.getElementById("fname").setAttribute("value", document.getElementById("filename").value);
    for (var i = 1; i <= n; i++) {
        var textBox = document.createElement("input");
        textBox.type = "text";
        textBox.name = "txt_"+i;
        textBox.style = "width:50px";
        textBox.setAttribute("id", "text_" + i);

        document.getElementById("myform").appendChild(textBox);
    }
    //var l=document.getElementById('nos').value;
    //document.getElementById('add').disabled=true;
    //document.getElementById('reset').disabled = false;
    //document.getElementById('creatett').disabled = false;
}
function resetElements() {
    document.getElementById('myfields').innerHTML = '';
    document.getElementById('add').disabled = false;
    document.getElementById('creatett').disabled = true;
}