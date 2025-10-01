Peak.destroy_all

peaks = [
  {
    name: "Mount Whitney",
    elevation: 14495,
    lat: 36.5786,
    lng: -118.2920,
    difficulty: "Hard",
    distance: 22.0,
    est_time: "12–15 hr",
    rating: 4.9,
    rating_count: 13000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/9/99/Mount_Whitney_2003-03-25.jpg",
    description: "Mt. Whitney is the highest point in the lower 48 states. Many routes lead to the summit; the trail from Whitney Portal is most popular."
  },
  {
    name: "Mount Williamson",
    elevation: 14389,
    lat: 36.6559,
    lng: -118.3111,
    difficulty: "Hard",
    distance: 28.0,
    est_time: "14–18 hr",
    rating: 4.8,
    rating_count: 9000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d3/Williamson-Basin.jpg",
    description: "Mt. Williamson is a large bulky peak with a fun 4th class chimney. It is often climbed in combination with Mt. Tyndall."
  },
  {
    name: "White Mountain Peak",
    elevation: 14252,
    lat: 37.6341,
    lng: -118.2557,
    difficulty: "Moderate",
    distance: 15.0,
    est_time: "10–12 hr",
    rating: 4.7,
    rating_count: 8000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/7/7f/White_Mountain_Peak.jpg",
    description: "White Mountain Peak is part of the White Mountain Range along the California/Nevada border. This summit offers some of the most spectacular views."
  },
  {
    name: "North Palisade",
    elevation: 14248,
    lat: 37.0943,
    lng: -118.5145,
    difficulty: "Hard",
    distance: 18.0,
    est_time: "12–14 hr",
    rating: 4.7,
    rating_count: 7000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/0/02/North_Palisade.jpg",
    description: "North Palisade is a true mountaineer’s peak; the easiest route is via Bishop Pass and the Le Conte Route. The classic U‑Notch route is from the east side."
  },
  {
    name: "Mount Shasta",
    elevation: 14179,
    lat: 41.4092,
    lng: -122.1949,
    difficulty: "Moderate",
    distance: 12.0,
    est_time: "8–10 hr",
    rating: 4.8,
    rating_count: 11000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/5/56/MountShasta2021.jpg",
    description: "A huge Cascade‑type volcano. We do not guide this but recommend affiliate guides."
  },
  {
    name: "Mount Sill",
    elevation: 14159,
    lat: 37.1202,
    lng: -118.5181,
    difficulty: "Hard",
    distance: 17.0,
    est_time: "11–13 hr",
    rating: 4.6,
    rating_count: 6000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/7/70/MtSill.JPG",
    description: "Mt. Sill is an impressive peak visible from the valley floor. The Swiss Arete is a classic climb."
  },
  {
    name: "Mount Russell",
    elevation: 14094,
    lat: 36.6377,
    lng: -118.2904,
    difficulty: "Moderate",
    distance: 14.0,
    est_time: "10–12 hr",
    rating: 4.6,
    rating_count: 5500,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/2/27/Mount_Russell_from_Mount_Whitney_trail.jpg",
    description: "Mt. Russell’s East Ridge is one of the aesthetic climbs. The Fishhook Arête (5.9) is a favorite among guides."
  },
  {
    name: "Split Mountain",
    elevation: 14064,
    lat: 37.0412,
    lng: -118.4079,
    difficulty: "Moderate",
    distance: 16.0,
    est_time: "10–12 hr",
    rating: 4.5,
    rating_count: 5000,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/6/63/Split_Mountain_%28White_Mountain%29.jpg",
    description: "Formerly known as South Palisade, Split Mountain is a hulking peak. The easiest route is from the east above Red Lake."
  },
  {
    name: "Mount Langley",
    elevation: 14032,
    lat: 36.5233,
    lng: -118.2365,
    difficulty: "Moderate",
    distance: 12.0,
    est_time: "9–11 hr",
    rating: 4.5,
    rating_count: 4700,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/2/28/MountLangleyCA.jpg",
    description: "Mt. Langley’s summit is accessed via a 1‑2 class route. The final section requires scrambling. Excellent views from the top."
  },
  {
    name: "Thunderbolt Peak",
    elevation: 14003,
    lat: 37.0961,
    lng: -118.5155,
    difficulty: "Very Hard",
    distance: 19.0,
    est_time: "14–16 hr",
    rating: 4.4,
    rating_count: 4500,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/e/e0/Thunderbolt_Peak.jpg",
    description: "Thunderbolt Peak is the most technically challenging California 14er. The final summit block requires Class 5 climbing, and a rope is recommended."
  }
]

peaks.each do |attrs|
  Peak.create!(attrs)
end

puts "Seeded #{Peak.count} peaks"
