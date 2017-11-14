//Jin Kim D17123837
void setup()
{
  size(800,600);
  loadData();
  listData();
  displayProducts();
  //printProducts();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();
Product p;
void draw()
{
  textSize(20);
  textAlign(TOP,CENTER);
  text("Cafe Rubis Till System",300,border);
}

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow row:table.rows())
  {
    Product product =  new Product(row);
    products.add(product);
  }
}

void listData()
{
  for(Product product:products)
  {
    println(product);
  }
}

void printProducts()
{
  for(int i = 0 ; i < products.size() ; i ++)
  { 
    Product product = products.get(i);
    print( "Name" + product.name + "Price" + product.price,25, height - 25);
  }
  
}

int border= 50;
void displayProducts()
{ 
  
  fill(255, 255, 255);
  stroke(0, 0, 0);
  //textAlign(CENTER, CENTER);
  textAlign(LEFT);
  for(int i = 0 ; i < products.size() ; i ++)
  {
    float m =  map(10,15,width/2,border-10,width-200);
    rect(m,border*2 , width/3, border+10);
   
  }

}
 
  



void mousePressed()
{
  
}