# Community Hass.io Add-ons: Example

All notable changes to this add-on will be documented in this file.

The format is based on [Keep a Changelog][keep-a-changelog]
and this project adheres to [Semantic Versioning][semantic-versioning].

## Unreleased

No unreleased changes yet.

## [v1.1.0] (2017-12-03)

[Full Changelog][v1.0.1-v1.1.0]

### Changed

- Upgrades add-on base iamge to v1.2.0

### Removed

- Removes `repository.json` to prevent user to install wrong repo
- Removes Gratipay from README, since it is EOL

## [v1.0.1] (2017-10-30)

[Full Changelog][v1.0.0-v1.0.1]

### Changed

- Updated base images to v1.0.1

## [v1.0.0] (2017-10-19)

[Full Changelog][v0.0.4-v1.0.0]

### Changed

- Moved run.sh into /usr/bin
- Moved correcting file permission from Dockerfile into S6
- Updated README.md
- Updates config.json with some extra parameters
- Added new Hass.io Docker labels
- Added example options to add-on
- Moved resulting image build name from build.json into CircleCI
- Locked down base image version
- Changed add-on version to 'dev'

## [v0.0.4] (2017-09-26)

[Full Changelog][v0.0.3-v0.0.4]

### Changed

- Match recent build environment changes

## [v0.0.3] (2017-09-24)

[Full Changelog][v0.0.2-v0.0.3]

### Changed

- Match recent build environment changes #3

## [v0.0.2] (2017-09-23)

[Full Changelog][v0.0.1-v0.0.2]

### Added

- Hass.io 0.64 compatibility #1

## [v0.0.1] (2017-09-23)

### Added

- Initial version, first release.

[keep-a-changelog]: http://keepachangelog.com/en/1.0.0/
[semantic-versioning]: http://semver.org/spec/v2.0.0.html
[v0.0.1-v0.0.2]: https://github.com/hassio-addons/addon-example/compare/v0.0.1...v0.0.2
[v0.0.1]: https://github.com/hassio-addons/addon-example/tree/v0.0.1
[v0.0.2-v0.0.3]: https://github.com/hassio-addons/addon-example/compare/v0.0.2...v0.0.3
[v0.0.2]: https://github.com/hassio-addons/addon-example/tree/v0.0.2
[v0.0.3-v0.0.4]: https://github.com/hassio-addons/addon-example/compare/v0.0.3...v0.0.4
[v0.0.3]: https://github.com/hassio-addons/addon-example/tree/v0.0.3
[v0.0.4-v1.0.0]: https://github.com/hassio-addons/addon-example/compare/v0.0.4...v1.0.0
[v0.0.4]: https://github.com/hassio-addons/addon-example/tree/v0.0.4
[v1.0.0-v1.0.1]: https://github.com/hassio-addons/addon-example/compare/v1.0.0...v1.0.1
[v1.0.0]: https://github.com/hassio-addons/addon-example/tree/v1.0.0
[v1.0.1-v1.1.0]: https://github.com/hassio-addons/addon-example/compare/v1.0.1...v1.1.0
[v1.0.1]: https://github.com/hassio-addons/addon-example/tree/v1.0.1
[v1.1.0]: https://github.com/hassio-addons/addon-example/tree/v1.1.0
