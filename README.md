# `.finn`

This is the default `resources` folder for [*Finn*](https://github.com/derhuerst/finn). It contains the default [adapters](https://github.com/derhuerst/finn/blob/master/docs/adapters.md), default [plugins](https://github.com/derhuerst/finn/blob/master/docs/plugin.md) and a default `config.coffee` file.



## installing

We assume you have [node.js](http://nodejs.org), [git](https://gist.github.com/derhuerst/1b15ff4652a867391f03) and [CoffeeScript](http://coffeescript.org/#installation) installed.

Change into your [home directory](http://en.wikipedia.org/wiki/Home_directory).

```shell
cd ~
```
Clone `.finn` to your computer.

```shell
git clone https://github.com/derhuerst/.finn.git
```

Install all dependencies.

```shell
cd git
npm install
```

To continue getting started with [*Finn*](https://github.com/derhuerst/finn), head over to the [Getting started with *Finn*](https://github.com/derhuerst/finn/blob/master/docs/getting-started.md) guide.



## included adapters

- `shell`: a basic shell adapter for command line interaction
- `http`: an HTTP adapter answering `POST`ed questions



## included plugins

- `joke`: tells a random Chuck Noris joke