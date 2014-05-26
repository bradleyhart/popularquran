package popularquran

import groovy.json.JsonSlurper

class MostPopularController {

    private static final ArrayList<String> QURAN_QUERY = [
            "quran recitation",
            "quran surah recitation",
            "quran surat recitation"
    ]

    def day() { model(results(new Date() - 2)) }

    def week() { model(results(new Date() - 7)) }

    def month() { model(results(new Date() - 30)) }

    def year() { model(results(new Date() - 365)) }

    def all() { model(results(null)) }

    // TODO region stuff

    class YouTubeItem {
        def id
        def title
        def description
        def defaultImage
        def mediumImage
        def highImage
    }

    private def model(results) {
        [youTubeItems: results.items.collect {
            new YouTubeItem(id: it.id.videoId,
                    title: it.snippet.title,
                    description: it.snippet.description,
                    defaultImage: it.snippet.thumbnails.default.url,
                    mediumImage: it.snippet.thumbnails.medium.url,
                    highImage: it.snippet.thumbnails.high.url)
        }]
    }

    private static def results(Date addedFrom) {
        new JsonSlurper().parse(new URL(queryUrl(QURAN_QUERY, addedFrom)))
    }

    private static def format(Date date){
        date.format("yyyy-MM-dd")
    }

    private static def queryUrl(words, Date date){
        def query = URLEncoder.encode(words.join("|"), "UTF-8")
        """https://www.googleapis.com/youtube/v3/search?q=${query}&id=7lCDEYXw3mM&key=AIzaSyByd8jjKmxVl6y7jEKsUMWJWWpS3JYcJdE&part=snippet&maxResults=50&order=viewCount${dateParam(date)}&type=video"""
    }

    static def dateParam(Date date) {
        if(!date) return ""
        """&publishedAfter=${format(date)}T00:00:00Z"""
    }
}
