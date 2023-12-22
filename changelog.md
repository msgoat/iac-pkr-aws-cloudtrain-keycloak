# Changelog
All notable changes to `iac-pkr-aws-cloudtrain-keycloak` will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] - YYYY-MM-DD
### Added
### Changed
### Fixed

## [2.0.1] - 2023-12-21
### Fixed
- Moved templates for Keycloak configuration files to /opt/keycloak/tpl since /tmp folder does not survive instantiation

## [2.0.0] - 2023-12-20
### Changed
- Upgraded OS to Amazon Linux 2023
- Replaced package manager yum with new default dnf
- Upgraded Keycloak to version 23.0.2

## [1.0.0] - 2023-10-11
### Changed
- Added CodeBuild build
