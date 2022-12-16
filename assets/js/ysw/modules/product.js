/**
 * Add product functionalities to this class as methods.
 *
 * @since 1.0.0
 * @author YourStoreWizards
 */
class YswProduct {
    constructor(context) {
        this.context = context;
        this.init();
    }

    init() {
        // Remove this if other methods are added to this class
    }
}

export default function YswProductFactory(context) {
    if (this instanceof YswProduct) {
        this.context = context;
    } else {
        return new YswProduct(context);
    }
}
