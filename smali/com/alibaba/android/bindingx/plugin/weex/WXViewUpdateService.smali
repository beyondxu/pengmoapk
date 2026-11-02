###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;
    }
.end annotation


# static fields
.field private static final EMPTY_INVOKER:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

.field private static final LAYOUT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_PROPERTY_HEIGHT:Ljava/lang/String; = "height"

.field private static final LAYOUT_PROPERTY_MARGIN_BOTTOM:Ljava/lang/String; = "margin-bottom"

.field private static final LAYOUT_PROPERTY_MARGIN_LEFT:Ljava/lang/String; = "margin-left"

.field private static final LAYOUT_PROPERTY_MARGIN_RIGHT:Ljava/lang/String; = "margin-right"

.field private static final LAYOUT_PROPERTY_MARGIN_TOP:Ljava/lang/String; = "margin-top"

.field private static final LAYOUT_PROPERTY_PADDING_BOTTOM:Ljava/lang/String; = "padding-bottom"

.field private static final LAYOUT_PROPERTY_PADDING_LEFT:Ljava/lang/String; = "padding-left"

.field private static final LAYOUT_PROPERTY_PADDING_RIGHT:Ljava/lang/String; = "padding-right"

.field private static final LAYOUT_PROPERTY_PADDING_TOP:Ljava/lang/String; = "padding-top"

.field private static final LAYOUT_PROPERTY_WIDTH:Ljava/lang/String; = "width"

.field private static final PERSPECTIVE:Ljava/lang/String; = "perspective"

.field private static final TRANSFORM_ORIGIN:Ljava/lang/String; = "transformOrigin"

.field private static final sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

.field private static final sTransformPropertyUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 60
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    .line 61
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->EMPTY_INVOKER:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

    .line 79
    const-string v10, "padding-top"

    const-string v11, "padding-bottom"

    const-string/jumbo v2, "width"

    const-string v3, "height"

    const-string v4, "margin-left"

    const-string v5, "margin-right"

    const-string v6, "margin-top"

    const-string v7, "margin-bottom"

    const-string v8, "padding-left"

    const-string v9, "padding-right"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->LAYOUT_PROPERTIES:Ljava/util/List;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sUIHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    .line 89
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "opacity"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.translate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.translateX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.translateY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.scale"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.scaleX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.scaleY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.rotate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.rotateZ"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.rotateX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string/jumbo v3, "transform.rotateY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "background-color"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "color"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "scroll.contentOffset"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "scroll.contentOffsetX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "scroll.contentOffsetY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "border-top-left-radius"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "border-top-right-radius"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "border-bottom-left-radius"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v3, "border-bottom-right-radius"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

    invoke-direct {v2, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    const-string v1, "border-radius"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;
    .registers 1

    .line 58
    invoke-static {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->findScrollTarget(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D
    .registers 3

    .line 58
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->getRealSize(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2300(Ljava/lang/Runnable;)V
    .registers 1

    .line 58
    invoke-static {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearCallbacks()V
    .registers 2

    .line 150
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private static findScrollTarget(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;
    .registers 2

    .line 843
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXScroller;

    if-nez v0, :cond_b

    .line 844
    const-string p0, "scroll offset only support on Scroller Component"

    invoke-static {p0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 847
    :cond_b
    check-cast p0, Lcom/taobao/weex/ui/component/WXScroller;

    .line 848
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static findUpdater(Ljava/lang/String;)Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;
    .registers 3

    .line 120
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;

    if-eqz v0, :cond_b

    return-object v0

    .line 124
    :cond_b
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->LAYOUT_PROPERTIES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 125
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->setPropertyName(Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown property ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    .line 129
    sget-object p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->EMPTY_INVOKER:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

    return-object p0
.end method

.method private static getRealSize(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D
    .registers 4

    const/4 v0, 0x0

    .line 838
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, v0}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->webToNative(D[Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static runOnUIThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 146
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/bindingx/core/WeakRunnable;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/core/WeakRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$1)
.class synthetic Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BackgroundUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BackgroundUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackgroundUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 607
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 615
    instance-of p1, p3, Ljava/lang/Integer;

    if-nez p1, :cond_5

    return-void

    .line 618
    :cond_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 619
    new-instance p3, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;Landroid/view/View;I)V

    invoke-static {p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BackgroundUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BackgroundUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

.field final synthetic val$d:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;Landroid/view/View;I)V
    .registers 4

    .line 619
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$targetView:Landroid/view/View;

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    .line 624
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$targetView:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 625
    :cond_10
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_1c

    .line 626
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 627
    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setColor(I)V

    return-void

    .line 628
    :cond_1c
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_27

    .line 629
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 630
    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_27
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusBottomLeftUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusBottomLeftUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BorderRadiusBottomLeftUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 726
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 734
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 737
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 738
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusBottomLeftUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusBottomLeftUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;

.field final synthetic val$d:D

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 738
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->val$d:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 741
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 742
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_1c

    .line 743
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 744
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->val$d:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_1c
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusBottomRightUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusBottomRightUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BorderRadiusBottomRightUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 751
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 759
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 762
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 763
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusBottomRightUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusBottomRightUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;

.field final synthetic val$d:D

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 763
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->val$d:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 766
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 767
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_1c

    .line 768
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 769
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->val$d:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_1c
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusTopLeftUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusTopLeftUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BorderRadiusTopLeftUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 676
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 684
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 687
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 688
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusTopLeftUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusTopLeftUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;

.field final synthetic val$d:D

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 688
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->val$d:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 691
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 692
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_1c

    .line 693
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 694
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->val$d:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_1c
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusTopRightUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusTopRightUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BorderRadiusTopRightUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 701
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 709
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 712
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 713
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusTopRightUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusTopRightUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;

.field final synthetic val$d:D

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 713
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->val$d:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 716
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 717
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_1c

    .line 718
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 719
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->val$d:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_1c
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BorderRadiusUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 776
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 785
    instance-of p1, p3, Ljava/util/ArrayList;

    if-eqz p1, :cond_17

    .line 786
    check-cast p3, Ljava/util/ArrayList;

    .line 787
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p5, 0x4

    if-eq p1, p5, :cond_e

    goto :goto_2c

    .line 791
    :cond_e
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;Landroid/view/View;Ljava/util/ArrayList;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void

    .line 818
    :cond_17
    instance-of p1, p3, Ljava/lang/Double;

    if-eqz p1, :cond_2c

    .line 819
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 820
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    :cond_2c
    :goto_2c
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

.field final synthetic val$l:Ljava/util/ArrayList;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;Landroid/view/View;Ljava/util/ArrayList;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 5

    .line 791
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 794
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 795
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_a2

    .line 797
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_26

    .line 798
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_27

    :cond_26
    move-wide v1, v3

    .line 800
    :goto_27
    iget-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_3f

    .line 801
    iget-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_40

    :cond_3f
    move-wide v5, v3

    .line 803
    :goto_40
    iget-object v7, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Double;

    if-eqz v7, :cond_58

    .line 804
    iget-object v7, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_59

    :cond_58
    move-wide v7, v3

    .line 806
    :goto_59
    iget-object v9, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Double;

    if-eqz v9, :cond_70

    .line 807
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$l:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 810
    :cond_70
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 811
    sget-object v9, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v10}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v9, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 812
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v5, v6, v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v5

    double-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 813
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v7, v8, v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v5

    double-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 814
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v3, v4, v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_a2
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.BorderRadiusUpdater.AnonymousClass2 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$BorderRadiusUpdater$2)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 820
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 823
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 824
    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_46

    .line 825
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 826
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 827
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 828
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 829
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_46
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ColorUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ColorUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ColorUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 637
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 645
    instance-of p4, p3, Ljava/lang/Integer;

    if-nez p4, :cond_5

    return-void

    .line 648
    :cond_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 649
    new-instance p4, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;Landroid/view/View;ILcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {p4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ColorUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ColorUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

.field final synthetic val$component:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$d:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;Landroid/view/View;ILcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    .line 649
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 652
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 653
    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 654
    :cond_e
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v1, v1, Lcom/taobao/weex/ui/component/WXText;

    if-eqz v1, :cond_45

    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXTextView;

    if-eqz v1, :cond_45

    .line 656
    :try_start_18
    check-cast v0, Lcom/taobao/weex/ui/view/WXTextView;

    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXTextView;->setTextColor(I)V

    .line 657
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    .line 660
    const-string v1, "can not update text color, try fallback to call the old API"

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    check-cast v0, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 663
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 665
    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$d:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 667
    :cond_40
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_45
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentOffsetUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2100(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_59

    .line 165
    :cond_7
    instance-of p1, p3, Ljava/lang/Double;

    if-eqz p1, :cond_1c

    .line 166
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 167
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void

    :cond_1c
    move-object v5, p4

    .line 174
    instance-of p1, p3, Ljava/util/ArrayList;

    if-eqz p1, :cond_59

    .line 175
    check-cast p3, Ljava/util/ArrayList;

    .line 176
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_59

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Double;

    if-eqz p2, :cond_59

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    instance-of p4, p4, Ljava/lang/Double;

    if-eqz p4, :cond_59

    .line 177
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 178
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 179
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;D)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    :cond_59
    :goto_59
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field final synthetic val$val:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 167
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$scrollView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$val:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$scrollView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$val:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$scrollView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$val:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetUpdater.AnonymousClass2 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetUpdater$2)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field final synthetic val$x:D

.field final synthetic val$y:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;D)V
    .registers 8

    .line 179
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$scrollView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$x:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    iput-wide p6, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$y:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$scrollView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$x:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$scrollView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$y:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater$2;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetXUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetXUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentOffsetXUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 192
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2100(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_b

    .line 204
    :cond_7
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_c

    :goto_b
    return-void

    .line 207
    :cond_c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 208
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetXUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetXUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field final synthetic val$val:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 208
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->val$scrollView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->val$val:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->val$scrollView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->val$val:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetYUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetYUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentOffsetYUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 217
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    instance-of p2, p3, Ljava/lang/Double;

    if-nez p2, :cond_5

    goto :goto_b

    .line 228
    :cond_5
    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2100(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_b
    return-void

    .line 232
    :cond_c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 233
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ContentOffsetYUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ContentOffsetYUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field final synthetic val$val:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 233
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->val$scrollView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->val$val:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->val$scrollView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->val$val:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.LayoutUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$LayoutUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutUpdater"
.end annotation


# instance fields
.field private propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setPropertyName(Ljava/lang/String;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 559
    instance-of p2, p3, Ljava/lang/Double;

    if-eqz p2, :cond_c6

    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto/16 :goto_c6

    .line 562
    :cond_e
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 564
    iget-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v1, "width"

    const-string v2, "height"

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_c8

    goto/16 :goto_96

    :sswitch_28
    const-string v0, "margin-bottom"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_32

    goto/16 :goto_96

    :cond_32
    const/16 v3, 0x9

    goto/16 :goto_96

    :sswitch_36
    const-string v0, "margin-top"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_40

    goto/16 :goto_96

    :cond_40
    const/16 v3, 0x8

    goto :goto_96

    :sswitch_43
    const-string v0, "margin-left"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4c

    goto :goto_96

    :cond_4c
    const/4 v3, 0x7

    goto :goto_96

    :sswitch_4e
    const-string v0, "padding-left"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_57

    goto :goto_96

    :cond_57
    const/4 v3, 0x6

    goto :goto_96

    :sswitch_59
    const-string v0, "padding-bottom"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_62

    goto :goto_96

    :cond_62
    const/4 v3, 0x5

    goto :goto_96

    :sswitch_64
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6b

    goto :goto_96

    :cond_6b
    const/4 v3, 0x4

    goto :goto_96

    :sswitch_6d
    const-string v0, "padding-right"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_76

    goto :goto_96

    :cond_76
    const/4 v3, 0x3

    goto :goto_96

    :sswitch_78
    const-string v0, "margin-right"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_81

    goto :goto_96

    :cond_81
    const/4 v3, 0x2

    goto :goto_96

    :sswitch_83
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8a

    goto :goto_96

    :cond_8a
    const/4 v3, 0x1

    goto :goto_96

    :sswitch_8c
    const-string v0, "padding-top"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_95

    goto :goto_96

    :cond_95
    const/4 v3, 0x0

    :goto_96
    const/4 p5, 0x0

    packed-switch v3, :pswitch_data_f2

    move-object v1, p5

    goto :goto_b5

    .line 582
    :pswitch_9c
    const-string v1, "marginBottom"

    goto :goto_b5

    .line 579
    :pswitch_9f
    const-string v1, "marginTop"

    goto :goto_b5

    .line 573
    :pswitch_a2
    const-string v1, "marginLeft"

    goto :goto_b5

    .line 585
    :pswitch_a5
    const-string v1, "paddingLeft"

    goto :goto_b5

    .line 594
    :pswitch_a8
    const-string v1, "paddingBottom"

    goto :goto_b5

    .line 588
    :pswitch_ab
    const-string v1, "paddingRight"

    goto :goto_b5

    .line 576
    :pswitch_ae
    const-string v1, "marginRight"

    goto :goto_b5

    :pswitch_b1
    move-object v1, v2

    goto :goto_b5

    .line 591
    :pswitch_b3
    const-string v1, "paddingTop"

    .line 598
    :goto_b5
    :pswitch_b5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto :goto_c6

    .line 601
    :cond_bc
    invoke-static {p2, p3, p4}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-static {p1, v1, p2}, Lcom/taobao/weex/dom/transition/WXTransition;->asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V

    .line 602
    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->propertyName:Ljava/lang/String;

    :cond_c6
    :goto_c6
    return-void

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x5987fe67 -> :sswitch_8c
        -0x48c76ed9 -> :sswitch_83
        -0x34ed1ec3 -> :sswitch_78
        -0x17a0fea0 -> :sswitch_6d
        0x6be2dc6 -> :sswitch_64
        0x88e4367 -> :sswitch_59
        0x28846843 -> :sswitch_4e
        0x381698c6 -> :sswitch_43
        0x756c34b6 -> :sswitch_36
        0x7c565f2a -> :sswitch_28
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_b5
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
    .end packed-switch
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.NOpUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$NOpUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NOpUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.OpacityUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$OpacityUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpacityUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 242
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 250
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 253
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    double-to-float p1, p3

    .line 255
    new-instance p3, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;Landroid/view/View;F)V

    invoke-static {p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.OpacityUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$OpacityUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;

.field final synthetic val$alpha:F

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;Landroid/view/View;F)V
    .registers 4

    .line 255
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;->val$targetView:Landroid/view/View;

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;->val$targetView:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;->val$alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.RotateUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$RotateUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RotateUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 437
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 446
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 450
    :cond_5
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;

    invoke-direct {p1, p0, p5, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.RotateUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$RotateUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 450
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$config:Ljava/util/Map;

    const-string v1, "perspective"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizedPerspectiveValue(Landroid/content/Context;I)I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v2, "transformOrigin"

    .line 457
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    .line 456
    invoke-static {v1, v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_32

    .line 460
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setCameraDistance(F)V

    :cond_32
    if-eqz v1, :cond_4e

    .line 463
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 464
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 467
    :cond_4e
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 468
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.RotateXUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$RotateXUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RotateXUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 474
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 482
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 485
    :cond_5
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;

    invoke-direct {p1, p0, p5, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.RotateXUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$RotateXUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 485
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$config:Ljava/util/Map;

    const-string v1, "perspective"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizedPerspectiveValue(Landroid/content/Context;I)I

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v2, "transformOrigin"

    .line 492
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    .line 491
    invoke-static {v1, v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_32

    .line 495
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setCameraDistance(F)V

    :cond_32
    if-eqz v1, :cond_4e

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 502
    :cond_4e
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 503
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.RotateYUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$RotateYUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RotateYUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 510
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 518
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 521
    :cond_5
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;

    invoke-direct {p1, p0, p5, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.RotateYUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$RotateYUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 521
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$config:Ljava/util/Map;

    const-string v1, "perspective"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizedPerspectiveValue(Landroid/content/Context;I)I

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v2, "transformOrigin"

    .line 528
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    .line 527
    invoke-static {v1, v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_32

    .line 531
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setCameraDistance(F)V

    :cond_32
    if-eqz v1, :cond_4e

    .line 534
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 538
    :cond_4e
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 539
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ScaleUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ScaleUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 335
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;

    invoke-direct {p1, p0, p5, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ScaleUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ScaleUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 343
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$config:Ljava/util/Map;

    const-string v1, "perspective"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizedPerspectiveValue(Landroid/content/Context;I)I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v2, "transformOrigin"

    .line 350
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    .line 349
    invoke-static {v1, v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_32

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setCameraDistance(F)V

    :cond_32
    if-eqz v1, :cond_4e

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 360
    :cond_4e
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_66

    .line 361
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 362
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 363
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 364
    :cond_66
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_a5

    .line 365
    check-cast v0, Ljava/util/ArrayList;

    .line 366
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Double;

    if-eqz v2, :cond_a5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_a5

    .line 367
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 369
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 370
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_a5
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ScaleXUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ScaleXUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleXUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 379
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 387
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 390
    :cond_5
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;

    invoke-direct {p1, p0, p5, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ScaleXUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ScaleXUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 390
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v1, "transformOrigin"

    .line 394
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    .line 393
    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 398
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 401
    :cond_30
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 402
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ScaleYUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ScaleYUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleYUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 408
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 416
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 419
    :cond_5
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;

    invoke-direct {p1, p0, p5, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.ScaleYUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$ScaleYUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 419
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v1, "transformOrigin"

    .line 423
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$targetView:Landroid/view/View;

    .line 422
    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 426
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 427
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 430
    :cond_30
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 431
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.TranslateUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$TranslateUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TranslateUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 264
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 273
    instance-of p1, p3, Ljava/util/ArrayList;

    if-nez p1, :cond_5

    goto :goto_3f

    .line 277
    :cond_5
    check-cast p3, Ljava/util/ArrayList;

    .line 278
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p5, 0x2

    if-lt p1, p5, :cond_3f

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    instance-of p5, p5, Ljava/lang/Double;

    if-eqz p5, :cond_3f

    const/4 p5, 0x1

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_3f

    .line 279
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 280
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 281
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;D)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    :cond_3f
    :goto_3f
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.TranslateUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$TranslateUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

.field final synthetic val$x1:D

.field final synthetic val$y1:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;D)V
    .registers 8

    .line 281
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$x1:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    iput-wide p6, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$y1:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$targetView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$x1:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$targetView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$y1:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.TranslateXUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$TranslateXUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TranslateXUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 292
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 300
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 303
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 304
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.TranslateXUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$TranslateXUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;

.field final synthetic val$d:D

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 304
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->val$d:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->val$targetView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->val$d:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.TranslateYUpdater (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$TranslateYUpdater)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TranslateYUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .registers 2

    .line 314
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 322
    instance-of p1, p3, Ljava/lang/Double;

    if-nez p1, :cond_5

    return-void

    .line 325
    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 326
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService.TranslateYUpdater.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXViewUpdateService$TranslateYUpdater$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;

.field final synthetic val$d:D

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;Landroid/view/View;DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 6

    .line 326
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->val$d:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->val$targetView:Landroid/view/View;

    iget-wide v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->val$d:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater$1;->val$translator:Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
