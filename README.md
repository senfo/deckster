# deckster - the web framework that holds all the cards

# ABOUT

Deckster is a lightweight web UI framework for organizing lots of interactive elements on a single screen.

# REQUIREMENTS

* [Node.js](http://nodejs.org/) 0.10+. If multiple versions are needed in your environment, consult [NVM](https://github.com/creationix/nvm).
* `make`, such as from [Xcode](https://developer.apple.com/xcode/) command line tools, [build-essential](http://packages.ubuntu.com/search?keywords=build-essential), or [Strawberry Perl](http://chocolatey.org/packages/StrawberryPerl).
* A modern web browser, such as Mozilla Firefox 10+, Google Chrome 20+, or Microsoft IE 9+.

## Optional

* [tidy](http://tidy.sourceforge.net/) for linting HTML

# BUILD

1. Install the smelting tools: node-sass and coffee-script. `npm install -g node-sass coffee-script`
2. Smelt the source into finely crafted JavaScript and CSS. `make`
3. Launch the demo. `open demo.html`

# DEPLOY

1. Run `make zip`.
2. Copy the resulting `.zip` file to your web application.
3. Expand the contents into `public/` or the like.
4. Move files and modify `demo.html` as necessary.

`sampleSites/` represents sample data sources for the main `demo.html` application.

# LINT

Running `make lint` yields tips for improving the code.

# Options

1. Expand/Collapse a Deck
      
   -Expand/Collapse All Cards in a Deck:
    By default all cards will be expanded (i.e. a data attribute will be implicity added to the deck <..class="deckster-deck".. data-cards-expanded="true"..>). To override, a developer can set `data-cards-expanded="false"` (No cards in this deck will be expanded).
   
   -Expand/Collapse a Card in the Deck:
    All cards in a deck will be expanded unless the deck has the data attribute `data-cards-expanded="false"`. If you want to make sure a card or cards isn't expanded with the whole deck, then add a `data-expanded="false"` attribute to the card's metadata. (i.e. < .. class="deckster-card" ... data-expanded="false" ..>)

2. Add Content via URL
    
    -You can add custom content to a card via URL by adding a `data-url="<url>"` attribute to the card.
    
    -For debugging purposes, you can disable all URL calls within a deck by declaring `data-url-enabled="false"` on the parent deck.

3. Customize Expand Size

    To customize a card's expand size, set the `data-col-expand` attribute to adjust the column size and the `data-row-expand` attribute to adjust the row size. The maximum column size is specified via `data-col-max` (which is set on the deck element).

    Notes:
    
    -If `data-row-expand` or `data-col-expand` is not specified on the element, than that dimension will not change when the card is expanded.
    
    -If `data-row-expand` or `data-col-expand` is less than or equal to zero, then that dimension will not change when the card is expanded. 
    
    -If `data-col-expand` is greater than `data-col-max`, then `data-col-expand` will be implicitly shortened to `data-col-max`.
    
    -Otherwise, the card's dimensions are altered when expanded.

4. Hide Card

    To hide a card, set the `data-hidden` attribute to `true`.

    Notes:

    -If the content loaded from `data-url` is empty, and the card's existing content is empty, then the card will not be shown in the deck.
