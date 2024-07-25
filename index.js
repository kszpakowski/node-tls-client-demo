const url = process.env.FETCH_URL
const interval = process.env.FETCH_INTERVAL_MS
setInterval(() =>
    fetch(url)
        .then(res => console.log(JSON.stringify(res)))
        .catch(e => console.error(e))
    , interval)