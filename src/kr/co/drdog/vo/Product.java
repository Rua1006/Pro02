package kr.co.drdog.vo;
//Product -> ProductVo
public class Product {
	private int proNo;		//상품번호
	private int cateNo;		//카테 분류
	private String proName;	//상품명
	private int oriPrice;	//상품가격
	private double discountRate;	//할인율
	private String proSpec;	//상품규격
	private int proPrice;	//상품금액
	private String proPic;	//상품이미지
	private String proPic2;	//상품이미지2
	private int amount;
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getOriPrice() {
		return oriPrice;
	}
	public void setOriPrice(int oriPrice) {
		this.oriPrice = oriPrice;
	}
	public double getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}
	public String getProPic2() {
		return proPic2;
	}
	public void setProPic2(String proPic2) {
		this.proPic2 = proPic2;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getCateNo() {
		return cateNo;
	}
	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProSpec() {
		return proSpec;
	}
	public void setProSpec(String proSpec) {
		this.proSpec = proSpec;
	}
	public int getProPrice() {
		return (int)(this.oriPrice*(1-this.discountRate));
	}
	public void setProPrice(int proPrice) {
		this.proPrice = (int)(this.oriPrice*(1-this.discountRate));
	}
	public String getProPic() {
		return proPic;
	}
	public void setProPic(String proPic) {
		this.proPic = proPic;
	}
	
}
