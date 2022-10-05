package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList <Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();		// admin에서의 상품 정보 등록 위함
    
    public static ProductRepository getInstance() {
        return instance;
    }
    
    
    public ProductRepository() {
        Product coat = new Product("P1001", "Gray_wale_coat", 296000);
		coat.setDescription("WOOL 93% / POLYURETHANE 5% / NYLON 2% / COLOR : mid gray / WASHING : Dry Clining");
        coat.setCategory("Coat");
        coat.setManufacturer("LMOOD");
        coat.setUnitslnStock(5000);
        coat.setCondition("New");
    	
    
        Product jacket = new Product("P1002", "Glam_trucker_jacket", 223000);
		jacket.setDescription("WOOL 70% / POLYURETHANE 30% / COLOR : burgundy / WASHING : Dry Clining");
        jacket.setCategory("Jacket");
        jacket.setManufacturer("LMOOD");
        jacket.setUnitslnStock(5000);
        jacket.setCondition("New");
    	
    
        Product shirt = new Product("P1003", "cutoff_crop_shirt", 117000);
		shirt.setDescription("COTTON 97% / POLYURETHANE 3% / COLOR : gray / WASHING : Dry Clining");
        shirt.setCategory("Shirt");
        shirt.setManufacturer("COOR");
        shirt.setUnitslnStock(5000);
        shirt.setCondition("New");
    	
    
        Product hood = new Product("P1004", "Sweat_Hood_ZipUp", 42000);
		hood.setDescription("COTTON 60% / POLYURETHANE 40% / COLOR : oatmeal / WASHING : Clining");
        hood.setCategory("Hood");
        hood.setManufacturer("TOFFEE");
        hood.setUnitslnStock(5000);
        hood.setCondition("New");
    	
    
        Product mtm = new Product("P1005", "Pigment_mtm", 47600);
		mtm.setDescription("COTTON 80% / POLYURETHANE 20% / COLOR : charcoal / WASHING : Hand Clining");
        mtm.setCategory("Mtm");
        mtm.setManufacturer("SOVERMENT");
        mtm.setUnitslnStock(5000);
        mtm.setCondition("New");
    	
    
        Product cardigan = new Product("P1006", "Hwaran_Semiover_Cardigan", 71100);
		cardigan.setDescription("WOOL 60% / ACRYLIC 20% / CASHNYLON 20% / COLOR : black / WASHING : Dry Clining");
        cardigan.setCategory("Cardigan");
        cardigan.setManufacturer("LMOOD");
        cardigan.setUnitslnStock(5000);
        cardigan.setCondition("New");
    	
   
        Product knit = new Product("P1007", "Washable_Knit", 59000);
		knit.setDescription("ACRYLIC 75% / NYLON 25% / COLOR : mint / WASHING : Hand Clining");
        knit.setCategory("Knit");
        knit.setManufacturer("SUARE");
        knit.setUnitslnStock(5000);
        knit.setCondition("New");
        
        
        Product blouson = new Product("P1008", "Wool Twill Blouson", 210000);
		blouson.setDescription("POLYESTER 100% / COLOR : brown / WASHING : Dry Clining");
        blouson.setCategory("Blouson");
        blouson.setManufacturer("INSILENCE");
        blouson.setUnitslnStock(5000);
        blouson.setCondition("New");
    	
        
        Product blazer = new Product("P1009", "Relsaxed Basic Blazer", 70000);
		blazer.setDescription("POLYESTER 67% / POLYURETHANE : 33% / COLOR : black / WASHING : Dry Clining");
        blazer.setCategory("Blazer");
        blazer.setManufacturer("MUTANDARD");
        blazer.setUnitslnStock(5000);
        blazer.setCondition("New");
        
        
        listOfProducts.add(coat);
        listOfProducts.add(jacket);
        listOfProducts.add(shirt);
        listOfProducts.add(hood);
        listOfProducts.add(mtm);
        listOfProducts.add(cardigan);
        listOfProducts.add(knit);
        listOfProducts.add(blouson);
        listOfProducts.add(blazer);

        
    }
    
    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }
    
    public Product getProductById(String productId) {
        Product productById = null;
        
        for ( int i = 0 ; i < listOfProducts.size(); i++ ) {
            Product product = listOfProducts.get(i);
            if ( product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
                productById = product;
                break;
            }
        }
        return productById;
    }
    
    public void addProduct(Product product) {
        listOfProducts.add(product);
    }
    
}
