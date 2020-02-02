Public class ParkLocator{

public static string[] country(String country){
ParkService.ParksImplPort stub = new ParkService.ParksImplPort ();
return stub .byCountry(country);
} 
}