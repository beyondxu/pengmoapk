###### Class com.taobao.weex.ui.flat.FlatGUIContext (com.taobao.weex.ui.flat.FlatGUIContext)
.class public Lcom/taobao/weex/ui/flat/FlatGUIContext;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# instance fields
.field private mViewWidgetRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/flat/WidgetContainer;",
            ">;"
        }
    .end annotation
.end field

.field private widgetToComponent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    return-void
.end method

.method private checkComponent(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 5

    if-eqz p1, :cond_6e

    .line 1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    .line 3
    const-string v2, "opacity"

    invoke-virtual {v0, v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 4
    const-string/jumbo v2, "transform"

    invoke-virtual {v0, v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 5
    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 6
    const-string v2, "elevation"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 7
    const-string v2, "ariaHidden"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 8
    const-string v2, "ariaLabel"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 9
    const-string v2, "fixedSize"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 10
    const-string v2, "disabled"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 11
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->isFixed()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 12
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->isSticky()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 13
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 14
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_6e

    :cond_6c
    const/4 p1, 0x1

    return p1

    :cond_6e
    const/4 p1, 0x0

    return p1
.end method

.method private getComponent(Lcom/taobao/weex/ui/flat/widget/Widget;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->destroy()V

    goto :goto_f

    .line 6
    :cond_25
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/flat/WidgetContainer;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/flat/WidgetContainer;->unmountFlatGUI()V

    goto :goto_34

    .line 11
    :cond_4a
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    return-object p1
.end method

.method public getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/flat/WidgetContainer;

    return-object p1
.end method

.method public getWidgetContainerView(Lcom/taobao/weex/ui/flat/widget/Widget;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getComponent(Lcom/taobao/weex/ui/flat/widget/Widget;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Z",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent<",
            "*>;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p3

    const-string v0, "_root"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2d

    if-eqz p2, :cond_24

    .line 4
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 5
    :cond_24
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->checkComponent(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    return p1
.end method

.method public register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;)V
    .registers 5

    .line 1
    instance-of v0, p2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    .line 3
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
