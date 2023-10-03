const mongoose = require("mongoose");

const productSchema = mongoose.Schema({
    name: {
        required: true,
        type: String,
        trim: true,
    },
    description: {
        required: true,
        type: String,
        trim: true,
    },
    images: [
        {
            type: String,
            required: true,
        }
    ],
    qty: {
        type: Number,
        required: true,
    },
    price: {
        type: Number,
        required: true,
    },
    category: {
        required: true,
        type: String,
    },
});

const Product = mongoose.model("Product", productSchema);
module.exports = Product;
