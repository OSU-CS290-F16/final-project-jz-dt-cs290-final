var cards = document.getElementsByClassName("cards");

var random = document.getElementsByClassName("rando");
var firstRand;
var secondRand;
var title = document.title;

console.log(document.title);
if(title == "Clash 3001 - Deckbuilder")
{
random[0].addEventListener("click", ranDeck);
}


function ranDeck(event)
{
  for(i=0; i < 50; i++)
  {
   firstRand = cards[Math.floor((Math.random() * 22))];
   secondRand = cards[Math.floor((Math.random() * 22))];
   swap(firstRand, secondRand);
  }
}

function test() {

  // We'll post to the add-photo endpoint for the appropriate person.
  var postUrl = '/test';

  console.log('hello');

  // Start a new request to post our newly added photo as JSON data.
  var postRequest = new XMLHttpRequest();
  postRequest.open('POST', postUrl);
  postRequest.setRequestHeader('Content-Type', 'application/json');
  console.log('hello');

  /*
   * Set up a simple handler for completed requests.  This will send an error
   * into the callback if we don't get a 200 (success) status back.
   */
  postRequest.addEventListener('load', function (event) {
    var error;
    if (event.target.status !== 200) {
      error = event.target.response;
    }
    //callback(error);
  });
  console.log(postRequest);

  var hello = "penis";

  // Send our photo data off to the server.
  postRequest.send(JSON.stringify({
    "hello": hello
  }));
  console.log('hello');
}

function returnURL()
{

  var postUrl = '/test';

  console.log('hello');

  // Start a new request to post our newly added photo as JSON data.
  var postRequest = new XMLHttpRequest();
  postRequest.open('POST', postUrl);
  postRequest.setRequestHeader('Content-Type', 'application/json');
  console.log('hello');

  /*
   * Set up a simple handler for completed requests.  This will send an error
   * into the callback if we don't get a 200 (success) status back.
   */
  postRequest.addEventListener('load', function (event) {
    var error;
    if (event.target.status !== 200) {
      error = event.target.response;
    }
    //callback(error);
  });
  //console.log(postRequest);

  var deck = document.getElementsByClassName('cardsinbox')[0].childNodes;
  console.log(deck[3]);

  var img1 = deck[3].src;
  var img2 = deck[5].src;
  var img3 = deck[7].src;
  var img4 = deck[9].src;
  var img5 = deck[11].src;
  var img6 = deck[13].src;
  var img7 = deck[15].src;
  var img8 = deck[17].src;


  // Send our photo data off to the server.
  postRequest.send(JSON.stringify({
    "url1": img1,
    "url2": img2,
    "url3": img3,
    "url4": img4,
    "url5": img5,
    "url6": img6,
    "url7": img7,
    "url8": img8
  }));
  console.log('hello');
  alert("Saved!");
}

var save = document.getElementsByClassName("save");
if(title == "Clash 3001 - Deckbuilder"){
  save[0].addEventListener("click", returnURL);
}


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