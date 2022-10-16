import PageManager from '../../theme/page-manager';

/**
 * This class need be added to the app.js.
 *
 * @since 1.0.0
 * @author YourStoreWizards
 */
class YswHome extends PageManager {
    onReady() {
        this.init();
    }

    init() {
        // Remove this if other methods are added to this class
    }
}

export default function YswHomeFactory(context) {
    if (this instanceof YswHome) {
        this.context = context;
    } else {
        return new YswHome(context);
    }
}
