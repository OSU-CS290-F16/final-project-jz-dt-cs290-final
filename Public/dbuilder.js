var cards = document.getElementsByClassName("cards");

for(i=0; i<cards.length; i++)
{
  cards[i].addEventListener("click", funct);
}

var card1;
var card2;
var count = 0;

function funct(event)
{
  console.log("hey");
  if(count == 0)
  {
    card1 = event.currentTarget;
    count++;
  }
  else if(count == 1)
  {
    card2 = event.currentTarget;
    swap(card1, card2);
  }
}


function swap(card1, card2) {
    var temp = document.createElement("div");
    card1.parentNode.insertBefore(temp, card1);
    card2.parentNode.insertBefore(card1, card2);
    temp.parentNode.insertBefore(card2, temp);
    temp.parentNode.removeChild(temp);
    count = 0;
}
