package dto;
import java.io.Serializable;

public class Product implements Serializable {		// inerface 구현
    
    private static final long serialVerstionUID = -4274700572038677000L;		// 객체 변환시 이 UID를 통해 다시 직렬화한다. - 직/역직렬화 : JVM 내부 객체 저장/읽기 
    																			// 객체에 대한 고유 UID 부여 ~ 주석처리 해도 동작 (자동 생성됨) 
    
    private String productId;		// 객체의 특징 : 데이터를 보안화하여 은닉
    private String pname;
    private Integer unitPrice;
    private String description;
    private String manufacturer;
    private String category;
    private long unitslnStock;
    private String condition;


	public Product() {	// 객체를 생성하면 해당 객체에 대한 함수가 자동으로 선언됨
   		super();
	}	

	public Product(String productId, String pname, Integer unitPrice) {	// 생성자는 중첩된다.
	    this.productId = productId;										// 생성자를 몰아넣은 이유 : 화면에 보여지기 위한 생성자만 몰아서 default 값으로 가져가고 싶기때문에 이 세가지 요소만 초기화함
	    this.pname = pname;
	    this.unitPrice = unitPrice;
	}
    
	public String getProductId() {
	    return productId;
	}
    
	public void setProductId(String productId){
	    this.productId = productId;
	}
    
	public String getPname() {
	    return pname;
	}
    
	public void setPname(String pname) {	// set을 해줘야 get해줄 수 있음
	    this.pname = pname;
	}
    
	public Integer getUnitPrice() {
	    return unitPrice;
	}
    
	public void setUnitPrice(Integer unitPrice) {
	    this.unitPrice = unitPrice;
	}
    
	public String getDescription() {
	    return description;
	}

	public void setDescription(String description) {
	    this.description = description;
	}
    
	public String getManufacturer() {
	    return manufacturer;
	}
    
	public void setManufacturer(String manufacturer) {
	    this.manufacturer = manufacturer;
	}
    
	public String getCategory() {
	    return category;
	}
    
	public void setCategory(String category) {
	    this.category = category;
	}
    
	public long getUnitslnStock() {
	    return unitslnStock;
	}
    
	public void setUnitslnStock(long unitslnStock) {
	    this.unitslnStock = unitslnStock;
	}
    
	public String getCondition() {
	    return condition;
	}
    
	public void setCondition(String condition) {
	    this.condition = condition;
	}
}




