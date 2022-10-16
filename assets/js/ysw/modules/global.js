class YswGlobal {
    constructor(context) {
        this.context = context;
        this.init();
    }

    init() {
        // Remove this if other methods are added to this class
    }
}

export default function YswGlobalFactory(context) {
    if (this instanceof YswGlobal) {
        this.context = context;
    } else {
        return new YswGlobal(context);
    }
}
