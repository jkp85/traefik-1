# Contributing Guidelines

Interested in making a contribution? Great! Just read through this guide and you should be good to go! If you have any questions or concerns, feel free to reach out to us in our Slack [community channel](https://slackin-pypmyuhqds.now.sh/).

## TOC

- [Forks](#forks)
- [Commit Messages](#commit-messages)
- [Issues](#issues)
- [Contribution tips and guidelines](#quick-contribution-tips-and-guidelines)

## Forks

We encourage the use of forks, even for our core maintainers. The following steps describe the procedure to create a new fork and contribute back to the upstream repo:

### Clone the repo

1. Fork this repository.
1. Clone your forked repo onto your machine: `git clone https://github.com/<yourusername>/<repo-name>`
1. Enter the cloned repo directory: `cd <repo-name>`
1. Add the IllumiDesk repo as a new remote upstream repository: `git remote add upstream https://github.com/IllumiDesk/<repo-name>.git`
1. Verify that `upstream` was added correctly: `git remote -v`
1. Fetch the latest branches for all remotes: `git fetch --all`
1. Set your local `master` branch to track `upstream/master`: `git branch -u upstream/master master`

Initial setup is complete. Your local `master` branch now tracks to the `master` branch in the `IllumiDesk/<repo-name>` repository so you will always have the most up-to-date code when running `git pull` when on `master`.

### Contribute code

1. On `master`, pull the latest changes from `IllumiDesk/<repo-name>`: `git pull`
1. Create a local branch for your feature or fix: `git checkout -b my-fix-or-feature-branch`
1. Make the necessary changes in your `my-fix-or-feature-branch` branch and commit them.
1. Push your changes to your remote: `git push -u origin my-fix-or-feature-branch`
1. Submit a pull request from your branch to `https://github.com/IllumiDesk/<repo-name>` and await review.

In your pull request description, please include the issue number related to your code changes. It's possible that an issue for the problem you are trying to solve does not exist in which case please help us open one. Even little things like typos in a document are worth documenting.

## Commit Messages

In general, there is no required format for individual commit messages so long as they are descriptive. 
It is recommended, but not mandatory, to include an issue reference in the description of any pull request. 

The only hard and fast rules for commit messages pertain to merge commits themselves, 
which are done by core contributors. Merge commits follow the [conventional commits](https://conventionalcommits.org) guidelines.

Specifically, IllumiDesk uses the following format:

```
<type>: issue #<issuenumber> - <description>
[optional body]
```

`type` comes from the issue linked by `issuenumber` (note that this implicitly requires a corresponding issue to exist before any PR can be merged), and is one of:

* chore
* doc 
    - Updating documentation to reflect behavioral changes. Primarily used in the openapi repo.
* epic 
    - An issue that encompasses multiple issues required to complete a large issue. The epic label should rarely, if ever, be used for a pull request.
* feat
    - Short for feature.
* fix
* proto 
    - A proof of concept for an experimental feature.
* question

`description` should be short and sweet; a sentence at most.

`body` is optional and should be relatively succinct. Anything more than 150 characters or so should be its own comment, or otherwise documented.

## Issues

When reporting issues:

- Include the steps required to reproduce the problem. This information will help us review and fix your issue faster.
- If applicable, include stack trace.
- Big log files are best viewed in a gist (https://gist.github.com). Make sure your gist is public.
- Log files may have sensitive information, please remove this information if at all possible.
- Add an issue reference to the body of the pull request text. This facilitates tracking.

## Quick contribution tips and guidelines

This section gives contributors some guidelines.

### We welcome all pull requests

Developing a fix or new feature, however small, takes time. So thank you! Even the smallest corrections or enhancements matter, and we will do everything possible to process them in a timely manner. We will also make sure you get credit for your contributions.

### Design and cleanup proposals

We are constantly cleaning code and re-factoring, and we understand there is almost always a better way to do things. If so, let us know! We love new perspectives, particularly when it helps improve the underlying product.

### Talking to other IllumiDesk users and contributors

We primarily use our Slack community channel to communicate with IllumiDesk users and contributors. You can sign up for a free account [here](https://illumidesk.slack.com/).

### Conventions and Coding Style

Submit unit tests with your changes.

Update the documentation when creating or modifying features. Test your documentation changes for clarity, concision, and correctness, as well as a clean documentation build. We base our style guide on the [AP Stylebook](https://en.wikipedia.org/wiki/AP_Stylebook).

For coding style, we base ourselves on:

- [Effective Go](https://golang.org/doc/effective_go.html) for Golang

The PR should trigger automated style checks.

### Merge approval

The master branch needs to be as healthy as possible. We will do our best to merge code and documentation quickly, but need to balance that with sanity checks.

Maintainers may use LGTM (Looks Good To Me) for documents and comments to indicate acceptance.

### Sign your work

Our projects are open source and we need to do everything possible to keep it that way. By signing, you certify that you wrote the code or that you have the right to send it our way. We use the [developer certificate of origin](http://developercertificate.org/) text to certify contributions.

Every completed PR must have a signature before we can merge:

    Signed-off-by: Joe Smith <joe.smith@email.com>

Please use your real name.

If you set your `user.name` and `user.email` git configs, you can sign your
commit automatically with `git commit -s`.

## IllumiDesk community guidelines

Refer to our [Code of Conduct](CODE_OF_CONDUCT.md) for specifics. It is based on the Contributor Covenant, version 1.4, available at http://contributor-covenant.org/version/1/4.
