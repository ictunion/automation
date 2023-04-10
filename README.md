# Automation

This repository serves purpose of consolidation of various automated tasks we run.

> __Rights to this repository gives (indirectly) permissions required by actions themselves.__
> Write permission gives person complete control since they can just change workflows to do what ever they want.

## Status

| Project formatting check | [![Verify Formatting](https://github.com/ictunion/automation/actions/workflows/verify-formatting.yaml/badge.svg?event=push)](https://github.com/ictunion/automation/actions/workflows/verify-formatting.yaml) |

| workflow                 | job                  | description                     | latest schedule                                                                                                                                                                                                | latest dispatch                                                                                                                                                                                                                  |
|--------------------------|----------------------|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **publish-website.yaml** | **publish-code**     | Publish website source          | ---                                                                                                                                                                                                            | [![Publish Website](https://github.com/ictunion/automation/actions/workflows/publish-website.yaml/badge.svg?branch=main&event=workflow_dispatch)](https://github.com/ictunion/automation/actions/workflows/publish-website.yaml) |
| **publish-system.yaml**  | **publish-code**     | Publish system (backend) source | ---                                                                                                                                                                                                            | [![Publish System](https://github.com/ictunion/automation/actions/workflows/publish-system.yaml/badge.svg?branch=main&event=workflow_dispatch)](https://github.com/ictunion/automation/actions/workflows/publish-system.yaml)    |
| **publish-wiki.yaml**    | **deploy-to-server** | Deploy wiki content to server   | [![Publish Wiki](https://github.com/ictunion/automation/actions/workflows/publish-wiki.yaml/badge.svg?branch=main&event=schedule)](https://github.com/ictunion/automation/actions/workflows/publish-wiki.yaml) | [![Publish Wiki](https://github.com/ictunion/automation/actions/workflows/publish-wiki.yaml/badge.svg?branch=main&event=workflow_dispatch)](https://github.com/ictunion/automation/actions/workflows/publish-wiki.yaml)          |

## Running Actions Manually

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
