public class ParkLocator {
    public static List<String> country(String Country){
        ParkService.ParksImplPort parkservice =
            new parkService.ParksImplPort();
        return parkservice.byCountry(country);
    }

}