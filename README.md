# death [![Build Status](https://travis-ci.org/koic/death-command.svg)](https://travis-ci.org/koic/death-command) [![Gem Version](https://badge.fury.io/rb/death.svg)](http://badge.fury.io/rb/death)

kill command wrapper. say "DEATH" with death voice.

## INSTALL

```
$ gem install death
```

## SYNOPSIS

```
death [-s signal_name] pid ...
death -l [exit_status]
death -signal_name pid ...
death -signal_number pid ...
```

### shortcut command

```
lml
```

## Operating environment

Mac OS X (only)

## for Developers

### Tuning of death voice

Supply developers with death voice tuner `rake death:tuning`.

Check out source code and move to the death-command source directory.

```
rake death:tuning # say "DEATH"
```

adjustable sound pressure using FACTOR=n argument (default 3) .

```
rake death:tuning FACTOR=5 # the deep timbre of death voice
```

## Presentation Document

* The making of a story (Japanese text) ... http://www.slideshare.net/koic/detroit-programming-city

## LICENCE

The MIT Licence

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
