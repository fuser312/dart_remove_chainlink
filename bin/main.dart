// https://s1.whiteboardfox.com/s/2ae37dc832647bad.png
class Link {
  String value;
  Link next;

  Link(this.value);
}

void main() {
  //Implementation of the given diagram https://s1.whiteboardfox.com/s/2ae37dc832647bad.png
  Link firstLink = Link('Raj');
  Link secondLink = Link('Makiko');
  firstLink.next = secondLink;

  Link thirdLink = Link('Paul');
  secondLink.next = thirdLink;

  Link fourthLink = Link('Suresh');
  thirdLink.next = fourthLink;

  Link fifthLink = Link('Avinash');
  fourthLink.next = fifthLink;

  Link sixthLink = Link('Parvati');
  fifthLink.next = sixthLink;

  printChain(firstLink);
  print('-------');
  removeLink(firstLink, 'Makiko');
  //print(firstLink);
  printChain(firstLink);
}

// Printing the linkTree
void printChain(Link link) {
  Link currLink = link;
  while (currLink != null) {
    print(currLink.value);
    currLink = currLink.next;
  }
}

// Exercise: Write a function which takes in a link and a word. It should remove the link with value matching word
void removeLink(Link firstLink, String word) {
  // Implement function here
  Link currentLink = firstLink;

    while (currentLink != null) {
      if (currentLink.next.value == word) {
        currentLink.next = currentLink.next.next;
      }
      else {
        currentLink = currentLink.next;
      }
      currentLink = currentLink.next;
    }


}
