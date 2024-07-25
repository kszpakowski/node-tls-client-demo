const url = process.env.FETCH_URL
const interval = process.env.FETCH_INTERVAL_MS
setInterval(() =>
    fetch(url)
        .then(res => res.text())
        .then(console.log)
        .catch(e => console.error(e))
    , interval)