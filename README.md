# Advent2019
[![Build Status](https://travis-ci.org/jacopofar/advent-of-code-2019-phoenix-react.svg?branch=master)](https://travis-ci.org/jacopofar/advent-of-code-2019-phoenix-react)

Attempt at solving Advent of code 2019 with an app using a Phoenix backend and a React frontend written in Typescript.

Current state: __everything OK__ (up to day 2 part 2)

👌Comments are welcome, it's my first project using Phoenix and also Typescript :)


## How to run
You need a recent Elixir and Node.js. Then run:

    `make build-and-serve`

it will be visible at localhost:4000

To run in dev mode (that is, the frontend reloads on the fly), use `yarn start` in the `assets` folder (will expose the app at port 3000) and `mix phx.server` to run the backend at port 4000. The `proxy` option in the package.json will redirect requests to port 3000 to the actual backend.

## 📓 development notes
These notes are here so I can remember how I built this in the future.

This app was created with:

`mix phx.new advent2019 --no-ecto --no-webpack --no-html`

Then in the folder I create the boilerplate react app:
`npx create-react-app assets --typescript`


The normal build with `yarn build` can be then exposed by modifying `plug Plug.Static` in `lib/advent2019_web/endpoint.ex`.

## TODO
- [x] find a way to serve the app using `yarn serve` and its reload in development
- [ ] understand what exactly the `only` parameter of Plug.Static does and configure it properly
- [x] tests, maybe try TDD?
- [x] tests are executed only when the file is specified to `mix test`, why are they not mounted? (solution: because I wrote `text`, not `test` -_-)
- [x] multiple days in same app
- [ ] error management in case of weird API call content
- [ ] make it responsive (it breaks on phone)
- [ ] improve a11y


## License

This is MIT licensed, please do pretty much whatever you want with it
