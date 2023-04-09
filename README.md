# Automation

This repository servsers purpose of consolidation of various automated tasks we run.

__Rights to this repository (indirectly) gives permissions required by the actions themselve.__
Write permission gives person complete control as that allows for changing any action
in any way.

## Running Actions

Actions could be ran via web interface - see [Actions](https://github.com/ictunion/automation/actions).

Alternatively you could use [github cli](https://cli.github.com/) utility

__ACTIONS:__

## Publish Website

To publish website run

```
$ gh workflow run publish-website.yaml
```

## Publish System (backend)

To publish backend system run

```
$ gh workflow run publish-system.yaml
```

## Publish Wiki

Deploy new wiki version (from main branch) to the server

```
$ gh workflow run publish-wiki.yaml
```

## Nix

This project defines [`shell.nix`] which could be used as following

```
$ nix-shell --run 'gh workflow run publish-wiki.yaml'
```

or you can simply enter interactive shell from which you can run all the gh commands:

```
$ nix-shell
```
