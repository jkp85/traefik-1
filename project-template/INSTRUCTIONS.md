# 3Blades Open Source Project Template

Ready to set up a new open source project? Let's get started!

## Checklist

- [ ] Create new public project in GitHub root organization account.
- [ ] Add the standard `labels` for issues, as detailed in [CONTRIBUTING guide](../CONTRIBUTING.md#commit-messages).

## Modify

- [ ] Fork this template project.
- [ ] Copy and replace `README.md` from `project-template` to repo root.
- [ ] Modify `project name` and `description` in README.md.
- [ ] Configure repo services and badges. Instructions below in `Badges` section.
- [ ] Modify service yml's, such as `.travis.yml`.
- [ ] Remove `project name` folder and contents from the repository.
- [ ] Create new Slack channel for repo, using `#github-<repo name>` as convention.
- [ ] Add GitHub, Travis and Code Climate config to Slack channel.
- [ ] Add Codecov to Slack channel as custom webhook.
- [ ] Clone new blank open source repo, copy and replace files from this forked repo to new repo.
- [ ] Announce new repo in social media.

## Badges

Badges provide indicators for repo. Badges will vary depending on repo scope. Use this checklist to confirm what badges are needed and what services need to be setup to turn on badges.

- [ ] CI: [Travis-CI](https://travis.ci.org). Modify `.travis.yml`.
- [ ] Code style: All --> [Code Climate](https://codeclimate.com). Modify `.codeclimate.yml`.
- [ ] Code coverage: All --> [Codecov](codecov.io). Modify `codecov.yml`
- [ ] Dependencies: Python --> [Landscape](https://landscape.io). JavaScript --> [Requires.io](https://requires.io). Golang --> N/A
- [ ] Docker: All --> Login to DockerHub --> Add new repo --> Add namespace to `.travis.yml`.

Congratulations! All set. :tada:
