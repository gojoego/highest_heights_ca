import { useEffect, useState } from 'react'

type Peak = {
  id: number
  name: string
  elevation: number
  lat: number
  lng: number 
  gpx_path: string | null 
  description: string 
}

function App() {
  const [peaks, setPeaks] = useState<Peak[]>([])

  useEffect(() => {
    fetch(`${import.meta.env.VITE_API_URL}/peaks`)
      .then((res) => res.json())
      .then((data) => setPeaks(data))
  }, [])

  return (
    <div className="p-6">
      <h1 className="text-2xl font-bold mb-4">Top 10 Highest Peaks in California</h1>
      <ul className="space-y-2">
        {peaks.map((peak) => (
          <li key={peak.id} className="border p-4 rounded">
            <h2 className="text-lg font-semibold">{peak.name}</h2>
            <p>Elevation: {peak.elevation} ft</p>
            <p>Coordinates: {peak.lat}, {peak.lng}</p>
          </li>
        ))}
      </ul>
    </div>
  )
}

export default App
