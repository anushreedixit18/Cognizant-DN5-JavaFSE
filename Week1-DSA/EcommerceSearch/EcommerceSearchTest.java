public class EcommerceSearchTest {
    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Shoes", "Fashion"),
                new Product(103, "Phone", "Electronics"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")
        };

        Product result1 = SearchService.linearSearch(products, 103);
        System.out.println("Linear Search Result: " + result1);

        Product result2 = SearchService.binarySearch(products, 104);
        System.out.println("Binary Search Result: " + result2);
    }
}