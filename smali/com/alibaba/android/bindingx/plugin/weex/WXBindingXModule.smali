###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule)
.class public Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXBindingXModule.java"


# instance fields
.field private mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

.field private mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/alibaba/android/bindingx/core/BindingXCore;)Lcom/alibaba/android/bindingx/core/BindingXCore;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    return-object p1
.end method

.method static createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
    .registers 3

    if-nez p0, :cond_5

    const/16 p0, 0x2ee

    goto :goto_9

    .line 275
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result p0

    .line 277
    :goto_9
    new-instance v0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;-><init>()V

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;

    invoke-direct {v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;-><init>()V

    .line 278
    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withViewFinder(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;

    invoke-direct {v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;-><init>()V

    .line 289
    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withViewUpdater(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;-><init>(I)V

    .line 321
    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withDeviceResolutionTranslator(Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->build()Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object p0

    return-object p0
.end method

.method private prepareInternal()V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    if-nez v0, :cond_c

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    .line 83
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-nez v0, :cond_2f

    .line 84
    new-instance v0, Lcom/alibaba/android/bindingx/core/BindingXCore;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 86
    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const-string v2, "scroll"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const-string v2, "pan"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    :goto_12
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v3, :cond_17

    goto :goto_1d

    :cond_17
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    :goto_1d
    if-nez p1, :cond_21

    .line 114
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_21
    move-object v3, p1

    new-instance v4, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/taobao/weex/bridge/JSCallback;)V

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doBind(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 125
    const-string/jumbo v0, "token"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public bindAsync(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;

    move-result-object p1

    if-eqz p3, :cond_b

    if-eqz p1, :cond_b

    .line 133
    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 261
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public getComputedStyle(Ljava/lang/String;)Ljava/util/Map;
    .registers 21
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 166
    invoke-direct {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 167
    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v1

    .line 169
    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 171
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v1

    .line 173
    :cond_1c
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_25

    .line 175
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v1

    .line 178
    :cond_25
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 180
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v5

    float-to-double v5, v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "height"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-left"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-top"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-right"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-bottom"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-left"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-top"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-right"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-bottom"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string/jumbo v6, "translateX"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string/jumbo v6, "translateY"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getRotationX()F

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizeRotation(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "rotateX"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizeRotation(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "rotateY"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizeRotation(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "rotateZ"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "scaleX"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "scaleY"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "opacity"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v8, 0x2

    if-eqz v5, :cond_1e6

    .line 207
    instance-of v9, v5, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v9, :cond_1e6

    .line 208
    check-cast v5, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 209
    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v9}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 210
    array-length v9, v5

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1e6

    .line 211
    aget v9, v5, v7

    float-to-double v9, v9

    .line 212
    aget v11, v5, v8

    float-to-double v11, v11

    const/4 v13, 0x6

    .line 213
    aget v13, v5, v13

    float-to-double v13, v13

    .line 214
    aget v5, v5, v6

    move-wide v15, v9

    const/16 p1, 0x2

    float-to-double v8, v5

    move-wide/from16 v17, v13

    move-wide v12, v11

    move-wide v10, v15

    move-wide/from16 v14, v17

    goto :goto_1ee

    :cond_1e6
    const/16 p1, 0x2

    const-wide/16 v9, 0x0

    move-wide v12, v9

    move-wide v14, v12

    move-wide v8, v14

    move-wide v10, v8

    .line 217
    :goto_1ee
    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v10, v11, v5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v10, "border-top-left-radius"

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v12, v13, v5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v10, "border-top-right-radius"

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v14, v15, v5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v10, "border-bottom-left-radius"

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v1, v8, v9, v5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v5, "border-bottom-right-radius"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "rgba(%d,%d,%d,%f)"

    const-wide v9, 0x406fe00000000000L    # 255.0

    const/4 v11, 0x1

    if-eqz v1, :cond_29c

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_24b

    .line 225
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    goto :goto_260

    .line 226
    :cond_24b
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_25e

    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v1

    goto :goto_260

    :cond_25e
    const/high16 v1, -0x1000000

    .line 230
    :goto_260
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v9

    .line 231
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 232
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 233
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/16 v16, 0x3

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v14, v13, v7

    aput-object v15, v13, v11

    aput-object v1, v13, p1

    aput-object v12, v13, v16

    invoke-static {v5, v8, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "background-color"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29e

    :cond_29c
    const/16 v16, 0x3

    .line 237
    :goto_29e
    instance-of v1, v2, Lcom/taobao/weex/ui/component/WXText;

    if-eqz v1, :cond_30b

    instance-of v1, v3, Lcom/taobao/weex/ui/view/WXTextView;

    if-eqz v1, :cond_30b

    .line 238
    check-cast v3, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_30b

    .line 240
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_30b

    .line 241
    instance-of v2, v1, Landroid/text/SpannableString;

    if-eqz v2, :cond_30b

    .line 242
    move-object v2, v1

    check-cast v2, Landroid/text/SpannableString;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v7, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_30b

    .line 243
    array-length v2, v1

    if-ne v2, v11, :cond_30b

    .line 244
    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    .line 246
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v9

    .line 247
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 248
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 249
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v7

    aput-object v9, v3, v11

    aput-object v1, v3, p1

    aput-object v2, v3, v16

    invoke-static {v10, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30b
    return-object v4
.end method

.method public getComputedStyleAsync(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->getComputedStyle(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 160
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onActivityPause()V
    .registers 4

    .line 340
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResume()V
    .registers 4

    .line 352
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public prepare(Ljava/util/Map;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    return-void
.end method

.method public supportFeatures()Ljava/util/List;
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    const-string v0, "scroll"

    const-string v1, "experimentalGestureFeatures"

    const-string v2, "pan"

    const-string v3, "orientation"

    const-string/jumbo v4, "timing"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/util/Map;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {v0, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doUnbind(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public unbindAll()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    :cond_7
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 90
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 87
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass2 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$2)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 97
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 94
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass3 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$3)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_11

    .line 119
    const-string/jumbo v0, "\u89e6\u53d1\u53bb\u5f80\u524d\u7aef\u7684\u56de\u8c03"

    const-string v1, "callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass4 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$4)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$002(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/alibaba/android/bindingx/core/BindingXCore;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 268
    :cond_17
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->clearCallbacks()V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass5 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$5)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPort:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 321
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;->val$viewPort:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs nativeToWeb(D[Ljava/lang/Object;)D
    .registers 4

    double-to-float p1, p1

    .line 329
    iget p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;->val$viewPort:I

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public varargs webToNative(D[Ljava/lang/Object;)D
    .registers 4

    double-to-float p1, p1

    .line 324
    iget p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;->val$viewPort:I

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass6 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$6)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs synchronouslyUpdateViewOnUIThread(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p6, :cond_4a

    .line 298
    array-length v0, p6

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4a

    const/4 v0, 0x0

    aget-object v0, p6, v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    aget-object p6, p6, v1

    instance-of v1, p6, Ljava/lang/String;

    if-nez v1, :cond_15

    goto :goto_4a

    .line 304
    :cond_15
    check-cast v0, Ljava/lang/String;

    .line 305
    check-cast p6, Ljava/lang/String;

    .line 307
    invoke-static {p6, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unexpected error. component not found [ref:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",instanceId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_3f
    invoke-static {p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->findUpdater(Ljava/lang/String;)Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;

    move-result-object v1

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V

    :cond_4a
    :goto_4a
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass7 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$7)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 282
    array-length v0, p2

    if-lez v0, :cond_12

    const/4 v0, 0x0

    aget-object p2, p2, v0

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_12

    .line 285
    :cond_b
    check-cast p2, Ljava/lang/String;

    .line 286
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass8 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$8)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->onActivityPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityPause()V

    :cond_11
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass9 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$9)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->onActivityResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityResume()V

    :cond_11
    return-void
.end method
