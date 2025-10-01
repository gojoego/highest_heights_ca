peaks = [
  ["Mount Whitney",        14505, 36.5785, -118.2923],
  ["Mount Williamson",     14379, 36.6562, -118.3187],
  ["White Mountain Peak",  14252, 37.6413, -118.2551],
  ["North Palisade",       14248, 37.1030, -118.5181],
  ["Mount Shasta",         14179, 41.4092, -122.1949],
  ["Mount Sill",           14159, 37.1202, -118.5181],
  ["Polemonium Peak",      14106, 37.0950, -118.5130],
  ["Mount Russell",        14094, 36.6377, -118.2904],
  ["Split Mountain",       14064, 37.0412, -118.4079],
  ["Mount Langley",        14026, 36.5233, -118.2365],
]

peaks.each do |name, elevation, lat, lng|
    Peak.find_or_create_by!(
        name: name,
        elevation: elevation,
        lat: lat,
        lng: lng,
        gpx_path: nil, 
        description: "description coming soon"
    )
end 