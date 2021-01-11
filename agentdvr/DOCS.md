# Home Assistant Community Add-on: AgentDVR
[![Release][agentdvr-release-shield]][owr-release] ![Project Stage][project-stage-shield] [![License][license-shield]](LICENSE.md)
![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]
![Project Maintenance][maintenance-shield]


[![Support JP-Tek-Services on Patreon][patreon-shield]][patreon]

Agent DVR is a standalone replacement for iSpy that runs as a service, uses less CPU and features a web user interface that is accessible from anywhere with no port forwarding required!

For more information visit [ispyconnect][ispyurl]

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Search for the "AgentDVR" add-on in the Supervisor add-on store
   and install it.
1. Start the "AgentDVR" add-on.
1. Check the logs of the "AgentDVR" to see if everything went well.
1. Click the "OPEN WEB UI" button, and set up your cameras.
1. Ready to go!

**Note**: _AgentDVR configuration will be stored in /config/agentdvr and the default recording storage has been set to /media/AgentDVR. This allows users to access and video recording via the Home Assistant media browser._

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration, with all available options:

```yaml
log_level: info
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `log_level`

The `log_level` option controls the level of log output by the addon and can
be changed to be more or less verbose, which might be useful when you are
dealing with an unknown issue. Possible values are:

- `trace`: Show every detail, like all called internal functions.
- `debug`: Shows detailed debug information.
- `info`: Normal (usually) interesting events.
- `warning`: Exceptional occurrences that are not errors.
- `error`:  Runtime errors that do not require immediate action.
- `fatal`: Something went terribly wrong. Add-on becomes unusable.

Please note that each level automatically includes log messages from a
more severe level, e.g., `debug` also shows `info` messages. By default,
the `log_level` is set to `info`, which is the recommended setting unless
you are troubleshooting.

## Support

Got questions?

You have several options to get them answered:

- The [Home Assistant Community Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- The [Home Assistant Discord chat server][discord-ha] for general Home
  Assistant discussions and questions.
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

## Authors & contributors

The original setup of this repository is by [Joshua Peterson][jpeterson].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## License

MIT License

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

[contributors]: https://github.com/jpeterson37/addon-agentdvr/graphs/contributors
[discord-ha]: https://discord.gg/c5DvZ4e
[discord]: https://discord.me/hassioaddons
[jpeterson]: https://github.com/Jpeterson37
[issue]: https://github.com/jpeterson37/addon-agentdvr/issues
[reddit]: https://reddit.com/r/homeassistant
[releases]: https://github.com/jpeterson37/addon-agentdvr/releases
[ispyurl]: https://www.ispyconnect.com/
[contributors]: https://github.com/jpeterson37/addon-agentdvr/graphs/contributors
[discord-ha]: https://discord.gg/c5DvZ4e
[discord]: https://discord.gg/EXjEee3dnw
[jpeterson]: https://github.com/Jpeterson37
[issue]: https://github.com/JP-Tek-Services/addon-open-weather-radio/issues
[releases]: https://github.com/JP-Tek-Services/addon-open-weather-radio/releases
[maintenance-shield]: https://img.shields.io/maintenance/yes/2025.svg
[patreon-shield]: https://jpeterson37.github.io/patreon/patreon.png
[patreon]: https://www.patreon.com/jptekservices
[agentdvr-release-shield]: https://img.shields.io/badge/version-v0.02.0-blue.svg
[owr-release]: https://github.com/JP-Tek-Services/addon-open-weather-radio/
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-no-red.svg
[armhf-shield]: https://img.shields.io/badge/armhf-no-red.svg
[armv7-shield]: https://img.shields.io/badge/armv7-no-red.svg
[project-stage-shield]: https://img.shields.io/badge/project%20stage-experimental-yellow.svg
[license-shield]: https://img.shields.io/github/license/JP-Tek-Services/addon-open-weather-radio