def requests = 20
def users = 150

def times = Collections.synchronizedList([])

List<Thread> threads = []

def totalDuration = time {
    users.times {
        threads << Thread.start {
            requests.times {
                times << time {
                    new URL("http://www.popularquran.com/").text
                }
            }
        }
    }
    threads*.join()
}

def total = 0
times.each {total+=it}

println "Total: ${times.size()}"
println "Total Duration: ${totalDuration/1000}s"
println "Average: ${total/times.size()}ms"
println "TPS: ${times.size() / (totalDuration/1000)}"

def time(run) {
    def start = System.currentTimeMillis()
    run()
    def end = System.currentTimeMillis()
    return end - start
}