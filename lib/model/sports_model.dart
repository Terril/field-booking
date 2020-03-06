 class Sports {
   int id;
   String name;
   String imageUrl;
   String address;
   double lat;
   double lon;
   int phoneNumber;
   String contactPerson;
   int whatsappNumber;
   String emailAddress;
   int likes;

   Sports({
     this.id,
     this.name,
     this.imageUrl,
     this.address,
     this.lat,
     this.lon,
     this.phoneNumber,
     this.contactPerson,
     this.whatsappNumber,
     this.emailAddress,
     this.likes,
   });

   factory Sports.fromJson(Map<String, dynamic> json) => Sports(
     id: json["id"],
     name: json["title"],
     imageUrl: json["fieldType"],
     address: json["address"],
     lat: json["lat"].toDouble(),
     lon: json["lon"].toDouble(),
     phoneNumber: json["phoneNumber"],
     contactPerson: json["contactPerson"],
     whatsappNumber: json["whatsappNumber"],
     emailAddress: json["emailAddress"],
     likes: json["likes"],
   );

   Map<String, dynamic> toJson() => {
     "id": id,
     "name": name,
     "imageUrl": imageUrl,
     "address": address,
     "lat": lat,
     "lon": lon,
     "phoneNumber": phoneNumber,
     "contactPerson": contactPerson,
     "whatsappNumber": whatsappNumber,
     "emailAddress": emailAddress,
     "likes": likes
   };
 }