package uk.ac.shu.webarch.mylistings

//Domain for the promoter

class Promoter {

    String PromoterID          // Unique ID of the promoter
    String promoterName        // Name of the promoter
    String promterEmail        // Contact email of the promoter
    String promoterTelephone   // Contact phone number of the promoter
    String promoterWebsite     // Website URL of the prmoter, can also be Facebook account

    static constraints = {
    }
}
