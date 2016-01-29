#CoordinatesToDistance

Сonverts the difference between the coordinates of two points on the map at a distance

##Installation

Simply copy DistanceCount.swift to the project tree

## Usage

```swift
DistanceCount.count.distance(lat1, lon1: lon1, lat2: lat2, lon2: lon2, units: "m")
```

You can pass different signs for different units:
- "m" to result in meters
- "К" to result in kilometers
- "M" to result in miles
- "N" to result in nautical miles
