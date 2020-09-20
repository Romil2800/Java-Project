package com.project;

public class Book {
	private int bookid;
	private String title;
	private String author;
	private String desc;
	private String image;
	private int price;
	private String publishdate;
	private String isbn;
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	public Book(int bookid, String title, String author, String image, int price) {
		super();
		this.bookid = bookid;
		this.title = title;
		this.author = author;
		this.image = image;
		this.price = price;
	}
	public Book() {
		super();
	}
	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", title=" + title + ", author=" + author + ", image=" + image + ", price="
				+ price + "]";
	}
	
	
	
	
	
	
}
