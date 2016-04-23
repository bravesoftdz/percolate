var v1use = 0;
var v2use = 0;
var v3use = 0;
var v4use = 0;
var right = 0;
var wrong = 0;

$(document).ready(function() {
    $("#incorrect").click(function(){
    	wrong = wrong + 1; 
    	diceroll();
    }); 
});

$(document).ready(function() {
    $("#correct").click(function(){
    	right = right + 1;
    	diceroll();
    }); 
});


function incorrect() {
	score = score - 1;
	diceroll();
}

function correct() {
	score = score + 1;
	diceroll();
}

function randomize(min, max) {
  return Math.floor(Math.random() * (max - min + 1) + min);
}

diceroll();

function diceroll() {
redo = 1;
while (redo == 1) {
	redo = 0;
	var dice = randomize(1,4);

	/* $(document).ready(function(){
		$("#number").text(dice);
		}); */

	if (dice == 1 & v1use == 0)  {
		$(document).ready(function(){
			$("#verb").text("dance");
		});
		v1use = 1;
	} else if (dice == 2 & v2use == 0) {
		$(document).ready(function(){
			$("#verb").text("run");
		});
		v2use = 1;
	} else if (dice == 3 & v3use == 0) {
		$(document).ready(function(){
			$("#verb").text("jump");
		});	v3use = 1;
	} else if (dice == 4 & v4use == 0) {
		$(document).ready(function(){
			$("#verb").text("walk");
		});	v4use = 1;
	} else if (v1use == 1 & v2use == 1 & v3use == 1 & v4use == 1) {
		$(document).ready(function(){
			$("#verb").text("error");
		});
	} else{ 	 
	redo = 1;
}}}
