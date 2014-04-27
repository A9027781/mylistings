package uk.ac.shu.webarch.mylistings

//Domain for the events

class Event {

    String EventID    // Unique ID of the event
    String VenueID    // Unique ID of the Venue
    String PromoterID // Unique ID of the promoter
    String eventName  // Name of the event
    Double price      // Price of the event
    String startTime  // Event Start Time 
    String endTime    // Event End Time
    Date eventDate    // Date of the event

    static constraints = {
    }
}
