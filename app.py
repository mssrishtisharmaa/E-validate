from flask import Flask, render_template, request
import mysql.connector


app = Flask(__name__)


db = mysql.connector.connect(
    host="localhost",
    user="user/root",
    password="psss",
    database="evalidate"
)
cursor = db.cursor()


# Columns to check for missing values
FIELDS = [
    "ProductID", "BrandName", "ProductName", "GenericName",
    "NetQuantity", "MRP", "ManufactureDate", "ExpiryDate",
    "CountryOfOrigin", "ManufacturerName", "ManufacturerAddress",
    "PackerName", "PackerAddress", "ImporterName", "ImporterAddress",
    "CustomerCareEmail", "CustomerCarePhone", "Category"
]


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/dashboard')
def dashboard():
        return render_template('dashboard.html')


@app.route('/auth')
def auth():
    return render_template('auth.html')

@app.route('/report-form')
def report_form():
    return render_template('report-form.html')

# Settings
@app.route('/settings')
def settings():
    return render_template('settings.html')

# System config
@app.route('/system-config')
def system_config():
    return render_template('system-config.html')
# Add product form
@app.route('/add-product')
def add_product_form():
    return render_template('add-product.html')

# Add product POST
@app.route('/add_product', methods=['POST'])
def add_product():
    try:
        product_id = int(request.form['productID'])  # required

        brand_name = request.form.get('brandName', None)
        product_name = request.form.get('productName', None)
        generic_name = request.form.get('genericName', None)
        net_quantity = request.form.get('netQuantity', None)
        mrp = request.form.get('mrp', None)
        if mrp:  # only convert if not None or empty string
            mrp = float(mrp)
        else:
            mrp = None
        manufacture_date = request.form.get('manufactureDate', None)
        best_before = request.form.get('bestBefore', None)
        country_of_origin = request.form.get('countryOfOrigin', None)
        manufacturer_name = request.form.get('manufacturerName', None)
        manufacturer_address = request.form.get('manufacturerAddress', None)
        packer_name = request.form.get('packerName', None)
        packer_address = request.form.get('packerAddress', None)
        importer_name = request.form.get('importerName', None)
        importer_address = request.form.get('importerAddress', None)
        customer_care_email = request.form.get('customerCareEmail', None)
        customer_care_phone = request.form.get('customerCarePhone', None)
        category = request.form.get('category', None)


        sql = """
        INSERT INTO productmaster (
            ProductID, BrandName, ProductName, GenericName,
            NetQuantity, MRP, ManufactureDate, ExpiryDate,
            CountryOfOrigin, ManufacturerName, ManufacturerAddress,
            PackerName, PackerAddress, ImporterName, ImporterAddress,
            CustomerCareEmail, CustomerCarePhone, Category
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """

        data = (
            product_id, brand_name, product_name, generic_name,
            net_quantity, mrp, manufacture_date, best_before,
            country_of_origin, manufacturer_name, manufacturer_address,
            packer_name, packer_address, importer_name, importer_address,
            customer_care_email, customer_care_phone, category
        )

        cursor.execute(sql, data)
        db.commit()

        return render_template('add_success.html', product_id=product_id)

    except mysql.connector.Error as err:
        return f"Error inserting product: {err}"

# Check product form & POST
@app.route('/check_product', methods=['GET', 'POST'])
def check_product():
    if request.method == 'POST':
        product_id = request.form.get('productID')
        if not product_id:
            return "Please provide a ProductID", 400

        # Ensure cursor returns dictionary
        cursor = db.cursor(dictionary=True)
        sql = "SELECT * FROM productmaster WHERE ProductID = %s"
        cursor.execute(sql, (product_id,))
        product = cursor.fetchone()

        if not product:
            return f"Product with ID {product_id} not found!"

        # Detect missing fields (NULL or empty string)
        missing_fields = [
            field for field, value in product.items()
            if value is None or (isinstance(value, str) and value.strip() == "")
        ]

        # Debug prints
        print("Product fetched:", product)
        print("Missing fields:", missing_fields)

        # Render template with correct variable names
        return render_template('show_missing.html', product=product, missing_fields=missing_fields)

    # GET request → show form
    return render_template('check_product.html')


cursor = db.cursor(dictionary=True)

# --- Route to generate missing fields report ---
@app.route('/generate_report', methods=['POST'])
def generate_report():
    # Get product ID from form (hidden input or manual)
    product_id = request.form.get('product_id')
    if not product_id:
        return "Product ID not provided!", 400

    # Convert product_id to integer
    try:
        product_id = int(product_id)
    except ValueError:
        return "Invalid Product ID", 400

    # Fetch product from database
    sql = "SELECT * FROM sampletrecord WHERE ProductID = %s"
    cursor.execute(sql, (product_id,))
    product = cursor.fetchone()

    if not product:
        return f"Product with ID {product_id} not found!"

    # Detect missing fields (NULL or empty string)
    missing_fields = [
        field for field, value in product.items()
        if value is None or (isinstance(value, str) and value.strip() == "")
    ]

    # Debug prints (optional, remove in production)
    print("Product fetched:", product)
    print("Missing fields:", missing_fields)

    # Render report template
    return render_template('report.html', product=product, missing_fields=missing_fields)

if __name__ == '__main__':
    app.run(debug=True)

