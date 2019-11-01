import SwiftIO

func main() {
//Create a DigitalOut to .D0
let pin = DigitalOut(.D0)
//Reverse the output value every 1 second
while true {
pin.reverse()
sleep(1000)
}
}
