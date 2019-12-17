# Slide Decks

For use during the classroom portion of JumpStart Live

## How does it work?

To keep things simple,

* Each slide deck is a single markdown file that can be easily edited and
  versioned.
* Through `index.html`, [Remark](http://remarkjs.com) converts the markdown
  document into an HTML slideshow.
* Lastly, Github Pages hosts this folder as a website, allowing anyone with an
  internet connection to access the slides.

## You said I can look at the slides?
Absolutely! Go to Ada-Developers-Academy.github.io/jump-start-live to see.

## I made changes, how can I view the slides locally?
That's awesome, thank you so much for contributing!

So long as you have a locally running webserver that is able to serve the
contents of this directory, you can view them. Python's `http.server` module
works fine for this purpose. In a terminal, navigate to this directory
```console
$ pwd
/home/brooks/code/jump-start-live/docs
```

start the server
```console
$ python3 -m http.server --bind 127.0.0.1
Serving HTTP on 127.0.0.1 port 8000 (http://127.0.0.1:8000/) ...
```

Then point your browser to http://localhost:8000

## Slide syntax

If you want to work on the slides, take a look at [remark's github wiki page on
Markdown](https://github.com/gnab/remark/wiki/Markdown), it will tell you
almost everything you need to know to get started editing or creating slides.
