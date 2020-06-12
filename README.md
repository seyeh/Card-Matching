# Card-Matching
First iOS Game


[![Build Status](https://travis-ci.org/sindresorhus/pageres.svg?branch=master)](https://travis-ci.org/sindresorhus/pageres) 

A simple iOS game that flips cards when a card is pressed. There are six themes each with different amounts of cards to match. If two cards are flipped and matched, the pair of cards remain flipped over.


## Install

```
Install XCode 11.4.1 and copy the code into a new single-view swift application
```

Note to Windows and Linux users: XCode is only available for MacOS

## Demo



## API

### Pageres(options?)

#### options

Type: `object`

##### delay

Type: `number` *(Seconds)*\
Default: `0`

Delay capturing the screenshot.

Useful when the site does things after load that you want to capture.

##### timeout

Type: `number` *(Seconds)*\
Default: `60`

Number of seconds after which the request is aborted.

##### crop

Type: `boolean`\
Default: `false`

Crop to the set height.

##### css

Type: `string`

Apply custom CSS to the webpage. Specify some CSS or the path to a CSS file.

##### script

Type: `string`

Apply custom JavaScript to the webpage. Specify some JavaScript or the path to a file.

##### cookies

Type: `Array<string | object>`

A string with the same format as a [browser cookie](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies) or [an object](https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#pagesetcookiecookies).

Tip: Go to the website you want a cookie for and [copy-paste it from DevTools](https://stackoverflow.com/a/24961735/64949).

##### filename

Type: `string`

Define a customized filename using [Lo-Dash templates](https://lodash.com/docs#template).\
For example: `<%= date %> - <%= url %>-<%= size %><%= crop %>`.

Available variables:

- `url`: The URL in [slugified](https://github.com/sindresorhus/filenamify-url) form, eg. `http://yeoman.io/blog/` becomes `yeoman.io!blog`
- `size`: Specified size, eg. `1024x1000`
- `width`: Width of the specified size, eg. `1024`
- `height`: Height of the specified size, eg. `1000`
- `crop`: Outputs `-cropped` when the crop option is true
- `date`: The current date (YYYY-MM-DD), eg. 2015-05-18
- `time`: The current time (HH-mm-ss), eg. 21-15-11

##### incrementalName

Type: `boolean`\
Default: `false`

When a file exists, append an incremental number.

##### selector

Type: `string`

Capture a specific DOM element matching a CSS selector.

##### hide

Type: `string[]`

Hide an array of DOM elements matching CSS selectors.

##### username

Type: `string`

Username for authenticating with HTTP auth.

##### password

Type: `string`

Password for authenticating with HTTP auth.

##### scale

Type: `number`\
Default: `1`

Scale webpage `n` times.

##### format

Type: `string`\
Default: `png`\
Values: `'png' | 'jpg'`

Image format.

##### userAgent

Type: `string`

Custom user agent.

##### headers

Type: `object`

Custom HTTP request headers.

##### transparent

Type: `boolean`\
Default: `false`

Set background color to `transparent` instead of `white` if no background is set.

### pageres.src(url, sizes, options?)

Add a page to screenshot.

#### url

*Required*\
Type: `string`

URL or local path to the website you want to screenshot. You can also use a data URI.

#### sizes

*Required*\
Type: `string[]`

Use a `<width>x<height>` notation or a keyword.

A keyword is a version of a device from [this list](https://github.com/kevva/viewport-list/blob/master/data.json).

You can also pass in the `w3counter` keyword to use the ten most popular resolutions from [w3counter](http://www.w3counter.com/globalstats.php).

#### options

Type: `object`

Options set here will take precedence over the ones set in the constructor.

### pageres.dest(directory)

Set the destination directory.

#### directory

Type: `string`

### pageres.run()

Run pageres. Returns `Promise<Buffer[]>`.

## Task runners

Check out [grunt-pageres](https://github.com/sindresorhus/grunt-pageres) if you're using Grunt.

For Gulp and Broccoli, just use the API directly. No need for a wrapper plugin.

## Built with Pageres

- [Break Shot](https://github.com/victorferraz/break-shot) - Desktop app for capturing screenshots of responsive websites.

## Related

- [capture-website](https://github.com/sindresorhus/capture-website) - A different take on screenshotting websites
