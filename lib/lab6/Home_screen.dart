import 'package:flutter/material.dart';
import 'dio/api_provider.dart';
import 'model/products_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Product> productsData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProductsData();
  }

  fetchProductsData() async {
    final products = await ApiProvider().fetchProducts();
    setState(() {
      productsData = products?.products ?? [];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor:Color(0xee08223a),
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : productsData.isEmpty
              ? Center(child: Text('No products found',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),))
              : GridView.builder(
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85
                ),
                itemCount: productsData.length,
                itemBuilder: (context, index) {
                  final product = productsData[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            child: Image.network(
                              product.thumbnail,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xee08223a), // Light background color
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                            border: Border(
                              top: BorderSide(color: Colors.black26, width: 2), // Border on top of content
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  product.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$${product.price}',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
    );
  }

}
