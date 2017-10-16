# Community Hass.io Add-ons: Example

![Project Stage][project-stage-shield]
![Maintenance][maintenance-shield]
![Awesome][awesome-shield]
[![License][license-shield]](LICENSE.md)

[![Code Climate][codeclimate-shield]][codeclimate]
[![CircleCI][circleci-shield]][circleci]

Example add-on by Community Hass.io add-ons.

## Docker status

[![Docker Architecture][armhf-arch-shield]][armhf-dockerhub]
[![Docker Version][armhf-version-shield]][armhf-microbadger]
[![Docker Layers][armhf-layers-shield]][armhf-microbadger]
[![Docker Pulls][armhf-pulls-shield]][armhf-dockerhub]

[![Docker Architecture][aarch64-arch-shield]][aarch64-dockerhub]
[![Docker Version][aarch64-version-shield]][aarch64-microbadger]
[![Docker Layers][aarch64-layers-shield]][aarch64-microbadger]
[![Docker Pulls][aarch64-pulls-shield]][aarch64-dockerhub]

[![Docker Architecture][amd64-arch-shield]][amd64-dockerhub]
[![Docker Version][amd64-version-shield]][amd64-microbadger]
[![Docker Layers][amd64-layers-shield]][amd64-microbadger]
[![Docker Pulls][amd64-pulls-shield]][amd64-dockerhub]

[![Docker Architecture][i386-arch-shield]][i386-dockerhub]
[![Docker Version][i386-version-shield]][i386-microbadger]
[![Docker Layers][i386-layers-shield]][i386-microbadger]
[![Docker Pulls][i386-pulls-shield]][i386-dockerhub]

## About

This is an example add-on for Hass.io. When started, it will display a
random quote every 5 seconds.

It shows off several features and structures like:

- Full blown GitHub repository.
- General Dockerfile structure and setup.
- The use of the `config.json` and `build.json` file.
- General shell scripting structure (`run.sh`).
- Quality assurance using CodeClimate.
- Continuous integration and deployment using CircleCI.
- Usage of the Community Hass.io Add-ons build environment.
- Small use of the Bash function library in our base images.
- The use of Docker label schema.

## Changelog & Releases

This repository keeps a [change log](CHANGELOG.md). The format of the log
is based on [Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of ``MAJOR.MINOR.PATCH``. In a nutshell, the version will be incremented
based on the following:

- ``MAJOR``: Incompatible or major changes.
- ``MINOR``: Backwards-compatible new features and enhancements.
- ``PATCH``: Backwards-compatible bugfixes and package updates.

## Support

Got questions?

You have several options to get them answered:

- The Home Assistant [Community Forums][forums], we have a
  [dedicated topic][forums] on that forum regarding this repository.
- The Home Assistant [Discord Chat Server][discord] for general Home Assistant
  discussions and questions.
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We've set up a separate document for our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [Franck Nijhof][frenck].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## We have got some Hass.io add-ons for you

Want some more functionality to your Hass.io Home Assistant instance?

We have created multiple add-ons for Hass.io. For a full list, check out
our [GitHub Repository][repository].

## License

MIT License

Copyright (c) 2017 Franck Nijhof

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[aarch64-arch-shield]: https://img.shields.io/badge/architecture-aarch64-blue.svg
[aarch64-dockerhub]: https://hub.docker.com/r/hassioaddons/example-aarch64
[aarch64-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/example-aarch64.svg
[aarch64-microbadger]: https://microbadger.com/images/hassioaddons/example-aarch64
[aarch64-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/example-aarch64.svg
[aarch64-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/example-aarch64.svg
[amd64-arch-shield]: https://img.shields.io/badge/architecture-amd64-blue.svg
[amd64-dockerhub]: https://hub.docker.com/r/hassioaddons/example-amd64
[amd64-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/example-amd64.svg
[amd64-microbadger]: https://microbadger.com/images/hassioaddons/example-amd64
[amd64-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/example-amd64.svg
[amd64-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/example-amd64.svg
[armhf-arch-shield]: https://img.shields.io/badge/architecture-armhf-blue.svg
[armhf-dockerhub]: https://hub.docker.com/r/hassioaddons/example-armhf
[armhf-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/example-armhf.svg
[armhf-microbadger]: https://microbadger.com/images/hassioaddons/example-armhf
[armhf-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/example-armhf.svg
[armhf-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/example-armhf.svg
[awesome-shield]: https://img.shields.io/badge/awesome%3F-yes-brightgreen.svg
[circleci-shield]: https://img.shields.io/circleci/project/github/hassio-addons/addon-example.svg
[circleci]: https://circleci.com/gh/hassio-addons/addon-example
[codeclimate-shield]: https://img.shields.io/codeclimate/github/hassio-addons/addon-example.svg
[codeclimate]: https://codeclimate.com/github/hassio-addons/addon-example
[contributors]: https://github.com/hassio-addons/addon-example/graphs/contributors
[discord]: https://discord.gg/c5DvZ4e
[forums]: https://community.home-assistant.io/t/repository-community-hass-io-add-ons/24705?u=frenck
[frenck]: https://github.com/frenck
[i386-arch-shield]: https://img.shields.io/badge/architecture-i386-blue.svg
[i386-dockerhub]: https://hub.docker.com/r/hassioaddons/example-i386
[i386-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/example-i386.svg
[i386-microbadger]: https://microbadger.com/images/hassioaddons/example-i386
[i386-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/example-i386.svg
[i386-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/example-i386.svg
[issue]: https://github.com/hassio-addons/addon-example/issues
[keepchangelog]: http://keepachangelog.com/en/1.0.0/
[license-shield]: https://img.shields.io/github/license/hassio-addons/addon-example.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2017.svg
[project-stage-shield]: https://img.shields.io/badge/Project%20Stage-Experimental-yellow.svg
[reddit]: https://reddit.com/r/homeassistant
[repository]: https://github.com/hassio-addons/repository
[semver]: http://semver.org/spec/v2.0.0.html
