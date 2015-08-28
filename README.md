VSCheckSSID
============


VSCheckSSID is a simple class that allows you to check if a user is connected to a specific SSID (wireless network).


Installation
============


Add VSCheckSSID.h and VSCheckSSID.m to your project.


Usage
=====

Import VSCheckSSID.h

```
#import "VSCheckSSID.h"
```

Use the convenience methods to check a single SSID or an array of SSID's.

```
VSCheckSSID *checkSSID = [[VSCheckSSID alloc] init];

// Single SSID
if ([checkSSID checkSingleSSIDName:@"YOUR_SSID"])
{
  // Matches
}

// Array of SSID's
if ([checkSSID checkManySSIDName:SSIDArray])
{
  // Matches
}
```
