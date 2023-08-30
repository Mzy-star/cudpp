#ifndef HIPCUB_VERSION_HPP_
#define HIPCUB_VERSION_HPP_

/// \def HIPCUB_VERSION
/// \brief HIPCUB library version
///
/// Version number may not be visible in the documentation.
///
/// HIPCUB_VERSION % 100 is the patch level,
/// HIPCUB_VERSION / 100 % 1000 is the minor version,
/// HIPCUB_VERSION / 100000 is the major version.
///
/// For example, if HIPCUB_VERSION is 100500, then the major version is 1,
/// the minor version is 5, and the patch level is 0.
#define HIPCUB_VERSION 2 * 100000 + 10 * 100 + 12

#define HIPCUB_VERSION_MAJOR 2
#define HIPCUB_VERSION_MINOR 10
#define HIPCUB_VERSION_PATCH 12

#endif // HIPCUB_VERSION_HPP_