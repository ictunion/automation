# Automation

This repository serves purpose of consolidation of various automated tasks we run.

> __Rights to this repository gives (indirectly) permissions required by actions themselves.__
> Write permission gives person complete control since they can just change worflows to do what ever they want.

## Running Actions

Actions could be ran via web interface - see [Actions](https://github.com/ictunion/automation/actions)
and [GitHub's documentation](https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow)

Alternatively you could use [github cli](https://cli.github.com/) utility

### Publish Website

To publish website run

```
$ gh workflow run publish-website.yaml
```

### Publish System (backend)

To publish backend system run

```
$ gh workflow run publish-system.yaml
```

### Publish Wiki

Deploy new wiki version (from main branch) to the server

```
$ gh workflow run publish-wiki.yaml
```

**This task is also ran by cron every day at 01:30 UTC**

## Nix

This project defines [`shell.nix`] which could be used as following

```
$ nix-shell --run 'gh workflow run publish-wiki.yaml'
```

or you can simply enter interactive shell from which you can run all the gh commands:

```
$ nix-shell
```
