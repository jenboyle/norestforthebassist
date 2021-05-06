/**
 * 
 */

var text = '{ "cmajor" : [' +
'{ "note":"3" , "class":"a_string_position_1" },' +
'{ "note":"5" , "class":"a_string_position_2" },' +
'{ "note":"2" , "class":"d_string_position_3" },' +
'{ "note":"3" , "class":"d_string_position_4" },' +
'{ "note":"5" , "class":"d_string_position_5" },' +
'{ "note":"2" , "class":"g_string_position_6" },' +
'{ "note":"4" , "class":"g_string_position_7" },' +
'{ "note":"5" , "class":"g_string_position_8" } ]}';



var obj = JSON.parse(text);

var myscales = JSON.parse(scales);
// 1 and 2 objects
//myscales.cmajor[1][0].note     3
//myscales.cmajor[1][0].class 
//myscales.cmajor[2][0].note     5
//alert('test');
//alert(scales[0].name);
//alert(mydata[0].age);
//alert(mydata[1].name);
//alert(mydata[1].age);

var counter = 0;


function nextScale(scale) {
	var maxcounter = Object.keys(myscales[scale]).length;
	counter++;
	if(counter > maxcounter) {
		counter = 1;
	}
	populateScale(scale, counter);
}

function previousScale(scale) {
	var maxcounter = Object.keys(myscales[scale]).length;
	counter--;
	if(counter == 0) {
		counter = maxcounter;
	}
	populateScale(scale, counter);
}

function populateScale(scale, counter) {
	document.getElementById("firstnote").textContent = myscales[scale][counter][0].note;
	document.getElementById("firstnote").setAttribute('class', myscales[scale][counter][0].class);
	document.getElementById("secondnote").textContent = myscales[scale][counter][1].note;
	document.getElementById("secondnote").setAttribute('class', myscales[scale][counter][1].class);
    document.getElementById("thirdnote").textContent = myscales[scale][counter][2].note;
    document.getElementById("thirdnote").setAttribute('class', myscales[scale][counter][2].class);
    document.getElementById("forthnote").textContent = myscales[scale][counter][3].note;
    document.getElementById("forthnote").setAttribute('class', myscales[scale][counter][3].class);
    document.getElementById("fifthnote").textContent = myscales[scale][counter][4].note;
    document.getElementById("fifthnote").setAttribute('class', myscales[scale][counter][4].class);
    document.getElementById("sixthnote").textContent = myscales[scale][counter][5].note;
    document.getElementById("sixthnote").setAttribute('class', myscales[scale][counter][5].class);
    document.getElementById("seventhnote").textContent = myscales[scale][counter][6].note;
    document.getElementById("seventhnote").setAttribute('class', myscales[scale][counter][6].class);
    document.getElementById("eighthnote").textContent = myscales[scale][counter][7].note;
    document.getElementById("eighthnote").setAttribute('class', myscales[scale][counter][7].class);
}

	/** 
	document.getElementById("firstnote").textContent = myscales.cmajor[counter][0].note;
	document.getElementById("firstnote").setAttribute('class', myscales.cmajor[counter][0].class);
	document.getElementById("secondnote").textContent = myscales.cmajor[counter][1].note;
	document.getElementById("secondnote").setAttribute('class', myscales.cmajor[counter][1].class);
    document.getElementById("thirdnote").textContent = myscales.cmajor[counter][2].note;
    document.getElementById("thirdnote").setAttribute('class', myscales.cmajor[counter][2].class);
    document.getElementById("forthnote").textContent = myscales.cmajor[counter][3].note;
    document.getElementById("forthnote").setAttribute('class', myscales.cmajor[counter][3].class);
    document.getElementById("fifthnote").textContent = myscales.cmajor[counter][4].note;
    document.getElementById("fifthnote").setAttribute('class', myscales.cmajor[counter][4].class);
    document.getElementById("sixthnote").textContent = myscales.cmajor[counter][5].note;
    document.getElementById("sixthnote").setAttribute('class', myscales.cmajor[counter][5].class);
    document.getElementById("seventhnote").textContent = myscales.cmajor[counter][6].note;
    document.getElementById("seventhnote").setAttribute('class', myscales.cmajor[counter][6].class);
    document.getElementById("eighthnote").textContent = myscales.cmajor[counter][7].note;
    document.getElementById("eighthnote").setAttribute('class', myscales.cmajor[counter][7].class);
*/
//function nextScale() {
//	document.getElementById("firstnote").textContent = '3';
//	document.getElementById("firstnote").setAttribute('class', 'a_string_position_1');
//	document.getElementById("secondnote").textContent = '5';
//	document.getElementById("secondnote").setAttribute('class', 'a_string_position_2');
  //  document.getElementById("thirdnote").textContent = '2';
//    document.getElementById("thirdnote").setAttribute('class', 'd_string_position_3');
//    document.getElementById("forthnote").textContent = '3';
//    document.getElementById("forthnote").setAttribute('class', 'd_string_position_4');
//    document.getElementById("fifthnote").textContent = '5';
//    document.getElementById("fifthnote").setAttribute('class', 'd_string_position_5');
//    document.getElementById("sixthnote").textContent = '2';
//    document.getElementById("sixthnote").setAttribute('class', 'g_string_position_6');
//    document.getElementById("seventhnote").textContent = '4';
//    document.getElementById("seventhnote").setAttribute('class', 'g_string_position_7');
//   document.getElementById("eighthnote").textContent = '5';
//    document.getElementById("eighthnote").setAttribute('class', 'g_string_position_8');
//}