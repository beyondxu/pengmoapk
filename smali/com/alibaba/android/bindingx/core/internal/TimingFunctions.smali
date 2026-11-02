###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions (com.alibaba.android.bindingx.core.internal.TimingFunctions)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.super Ljava/lang/Object;
.source "TimingFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;,
        Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    }
.end annotation


# static fields
.field private static final cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache<",
            "Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static cubicBezier:Ljava/lang/Object;

.field private static easeInBack:Ljava/lang/Object;

.field private static easeInBounce:Ljava/lang/Object;

.field private static easeInCirc:Ljava/lang/Object;

.field private static easeInCubic:Ljava/lang/Object;

.field private static easeInElastic:Ljava/lang/Object;

.field private static easeInExpo:Ljava/lang/Object;

.field private static easeInOutBack:Ljava/lang/Object;

.field private static easeInOutBounce:Ljava/lang/Object;

.field private static easeInOutCirc:Ljava/lang/Object;

.field private static easeInOutCubic:Ljava/lang/Object;

.field private static easeInOutElastic:Ljava/lang/Object;

.field private static easeInOutExpo:Ljava/lang/Object;

.field private static easeInOutQuad:Ljava/lang/Object;

.field private static easeInOutQuart:Ljava/lang/Object;

.field private static easeInOutQuint:Ljava/lang/Object;

.field private static easeInOutSine:Ljava/lang/Object;

.field private static easeInQuad:Ljava/lang/Object;

.field private static easeInQuart:Ljava/lang/Object;

.field private static easeInQuint:Ljava/lang/Object;

.field private static easeInSine:Ljava/lang/Object;

.field private static easeOutBack:Ljava/lang/Object;

.field private static easeOutBounce:Ljava/lang/Object;

.field private static easeOutCirc:Ljava/lang/Object;

.field private static easeOutCubic:Ljava/lang/Object;

.field private static easeOutElastic:Ljava/lang/Object;

.field private static easeOutExpo:Ljava/lang/Object;

.field private static easeOutQuad:Ljava/lang/Object;

.field private static easeOutQuart:Ljava/lang/Object;

.field private static easeOutQuint:Ljava/lang/Object;

.field private static easeOutSine:Ljava/lang/Object;

.field private static linear:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 84
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->linear:Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cubicBezier:Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    .line 145
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuad:Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuad:Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuad:Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCubic:Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCubic:Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCubic:Ljava/lang/Object;

    .line 229
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuart:Ljava/lang/Object;

    .line 242
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuart:Ljava/lang/Object;

    .line 255
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuart:Ljava/lang/Object;

    .line 271
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuint:Ljava/lang/Object;

    .line 284
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuint:Ljava/lang/Object;

    .line 297
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuint:Ljava/lang/Object;

    .line 313
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInSine:Ljava/lang/Object;

    .line 326
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutSine:Ljava/lang/Object;

    .line 339
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutSine:Ljava/lang/Object;

    .line 352
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInExpo:Ljava/lang/Object;

    .line 365
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutExpo:Ljava/lang/Object;

    .line 378
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutExpo:Ljava/lang/Object;

    .line 400
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCirc:Ljava/lang/Object;

    .line 413
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCirc:Ljava/lang/Object;

    .line 426
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCirc:Ljava/lang/Object;

    .line 443
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInElastic:Ljava/lang/Object;

    .line 472
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutElastic:Ljava/lang/Object;

    .line 500
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutElastic:Ljava/lang/Object;

    .line 531
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBack:Ljava/lang/Object;

    .line 545
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBack:Ljava/lang/Object;

    .line 559
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBack:Ljava/lang/Object;

    .line 576
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce:Ljava/lang/Object;

    .line 589
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce:Ljava/lang/Object;

    .line 602
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBounce:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
    .registers 4

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->isCacheHit(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    .registers 1

    .line 42
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    return-object v0
.end method

.method static synthetic access$200(DDDD)D
    .registers 8

    .line 42
    invoke-static/range {p0 .. p7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(DDDD)D
    .registers 8

    .line 42
    invoke-static/range {p0 .. p7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static applyToScope(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    const-string v0, "linear"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->linear:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "easeInQuad"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuad:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "easeOutQuad"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuad:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "easeInOutQuad"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuad:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "easeInCubic"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCubic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "easeOutCubic"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCubic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "easeInOutCubic"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCubic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "easeInQuart"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuart:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "easeOutQuart"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuart:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "easeInOutQuart"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuart:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "easeInQuint"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInQuint:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "easeOutQuint"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutQuint:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "easeInOutQuint"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutQuint:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "easeInSine"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInSine:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "easeOutSine"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutSine:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "easeInOutSine"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutSine:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "easeInExpo"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInExpo:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "easeOutExpo"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutExpo:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "easeInOutExpo"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutExpo:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "easeInCirc"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInCirc:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "easeOutCirc"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutCirc:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "easeInOutCirc"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutCirc:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "easeInElastic"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInElastic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "easeOutElastic"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutElastic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "easeInOutElastic"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutElastic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "easeInBack"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBack:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "easeOutBack"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBack:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "easeInOutBack"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBack:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "easeInBounce"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "easeOutBounce"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "easeInOutBounce"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInOutBounce:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "cubicBezier"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cubicBezier:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static easeInBounce(DDDD)D
    .registers 16

    sub-double v0, p6, p0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    .line 619
    invoke-static/range {v0 .. v7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce(DDDD)D

    move-result-wide p0

    sub-double p4, v4, p0

    add-double/2addr p4, p2

    return-wide p4
.end method

.method private static easeOutBounce(DDDD)D
    .registers 11

    div-double/2addr p0, p6

    const-wide p6, 0x3fd745d1745d1746L    # 0.36363636363636365

    const-wide v0, 0x401e400000000000L    # 7.5625

    cmpg-double v2, p0, p6

    if-gez v2, :cond_17

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    :goto_13
    mul-double p4, p4, v0

    add-double/2addr p4, p2

    return-wide p4

    :cond_17
    const-wide p6, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v2, p0, p6

    if-gez v2, :cond_2e

    const-wide p6, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr p0, p6

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    :goto_2c
    add-double/2addr v0, p0

    goto :goto_13

    :cond_2e
    const-wide p6, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v2, p0, p6

    if-gez v2, :cond_44

    const-wide p6, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr p0, p6

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    const-wide/high16 p0, 0x3fee000000000000L    # 0.9375

    goto :goto_2c

    :cond_44
    const-wide p6, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr p0, p6

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    const-wide p0, 0x3fef800000000000L    # 0.984375

    goto :goto_2c
.end method

.method private static isCacheHit(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
    .registers 7

    .line 133
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->getAll()Ljava/util/Deque;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    .line 135
    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x1:F

    invoke-static {v2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x2:F

    invoke-static {v2, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y1:F

    .line 136
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y2:F

    invoke-static {v2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass1 (com.alibaba.android.bindingx.core.internal.TimingFunctions$1)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 88
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 89
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 90
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 92
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass10 (com.alibaba.android.bindingx.core.internal.TimingFunctions$10)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 246
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 247
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 248
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 249
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    mul-double v8, v8, v0

    mul-double v8, v8, v0

    sub-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 251
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass11 (com.alibaba.android.bindingx.core.internal.TimingFunctions$11)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 259
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 260
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 261
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 262
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_49

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_49
    neg-double v4, v4

    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v0

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 267
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass12 (com.alibaba.android.bindingx.core.internal.TimingFunctions$12)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 275
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 276
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 277
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 278
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 280
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass13 (com.alibaba.android.bindingx.core.internal.TimingFunctions$13)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 288
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 289
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 290
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 291
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    mul-double v8, v8, v0

    mul-double v8, v8, v0

    mul-double v8, v8, v0

    add-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 293
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass14 (com.alibaba.android.bindingx.core.internal.TimingFunctions$14)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 301
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 302
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 303
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 304
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_4b

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4b
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v0

    mul-double v6, v6, v0

    add-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 309
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass15 (com.alibaba.android.bindingx.core.internal.TimingFunctions$15)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 317
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 318
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 319
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 320
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v8, v4

    div-double/2addr v0, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v0, v0, v6

    .line 322
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v8, v8, v0

    add-double/2addr v8, v4

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass16 (com.alibaba.android.bindingx.core.internal.TimingFunctions$16)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 330
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 331
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 332
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 333
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v0, v0, v6

    .line 335
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass17 (com.alibaba.android.bindingx.core.internal.TimingFunctions$17)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 343
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 344
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 345
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 346
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v8

    div-double/2addr v0, v6

    .line 348
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass18 (com.alibaba.android.bindingx.core.internal.TimingFunctions$18)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 356
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 357
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 358
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 359
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmpl-double p1, v0, v8

    if-nez p1, :cond_37

    goto :goto_48

    :cond_37
    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 361
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    :goto_48
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass19 (com.alibaba.android.bindingx.core.internal.TimingFunctions$19)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 369
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 370
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 371
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 372
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double p1, v0, v6

    if-nez p1, :cond_36

    add-double/2addr v2, v4

    goto :goto_48

    :cond_36
    const-wide/high16 v8, -0x3fdc000000000000L    # -10.0

    mul-double v0, v0, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 374
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    :goto_48
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass2 (com.alibaba.android.bindingx.core.internal.TimingFunctions$2)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 104
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x4

    .line 106
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x5

    .line 107
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const/4 v13, 0x6

    .line 108
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x7

    .line 109
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-wide v15, v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 111
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double v2, v0, v7

    if-nez v2, :cond_6a

    add-double v3, v15, v5

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_6a
    double-to-float v2, v9

    double-to-float v9, v11

    double-to-float v10, v13

    double-to-float v3, v3

    .line 117
    invoke-static {v2, v9, v10, v3}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$000(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    move-result-object v4

    if-nez v4, :cond_80

    .line 119
    new-instance v4, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    invoke-direct {v4, v2, v9, v10, v3}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;-><init>(FFFF)V

    .line 120
    invoke-static {}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$100()Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->add(Ljava/lang/Object;)V

    :cond_80
    div-double/2addr v0, v7

    double-to-float v0, v0

    .line 124
    invoke-virtual {v4, v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->getInterpolation(F)F

    move-result v0

    float-to-double v0, v0

    mul-double v5, v5, v0

    add-double/2addr v5, v15

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass20 (com.alibaba.android.bindingx.core.internal.TimingFunctions$20)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 382
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 383
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 384
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 385
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmpl-double p1, v0, v9

    if-nez p1, :cond_37

    return-object v2

    :cond_37
    cmpl-double p1, v0, v7

    if-nez p1, :cond_41

    add-double/2addr v3, v5

    .line 391
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_41
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    div-double/2addr v0, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v7

    if-gez p1, :cond_5d

    div-double/2addr v5, v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v7

    mul-double v0, v0, v11

    .line 394
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v5, v5, v0

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_5d
    div-double/2addr v5, v9

    const-wide/high16 v11, -0x3fdc000000000000L    # -10.0

    sub-double/2addr v0, v7

    mul-double v0, v0, v11

    .line 396
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v9

    mul-double v5, v5, v0

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass21 (com.alibaba.android.bindingx.core.internal.TimingFunctions$21)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 404
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 405
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 406
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 407
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    div-double/2addr v0, v6

    mul-double v0, v0, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    .line 409
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass22 (com.alibaba.android.bindingx.core.internal.TimingFunctions$22)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 417
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 418
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 419
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 420
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v0, v0, v0

    sub-double/2addr v6, v0

    .line 422
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass23 (com.alibaba.android.bindingx.core.internal.TimingFunctions$23)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 430
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 431
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 432
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 433
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_4d

    neg-double v4, v4

    div-double/2addr v4, v8

    mul-double v0, v0, v0

    sub-double v0, v6, v0

    .line 436
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4d
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v0, v0, v0

    sub-double v0, v6, v0

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass24 (com.alibaba.android.bindingx.core.internal.TimingFunctions$24)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 447
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x2

    .line 448
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x3

    .line 449
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 450
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v2, v0, v10

    if-nez v2, :cond_39

    return-object v3

    :cond_39
    div-double/2addr v0, v8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v0, v2

    if-nez v10, :cond_46

    add-double/2addr v4, v6

    .line 459
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_46
    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double v10, v10, v8

    .line 462
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v16, v6, v12

    if-gez v16, :cond_5f

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double v12, v10, v12

    goto :goto_69

    :cond_5f
    div-double v12, v10, v14

    div-double v16, v6, v6

    .line 466
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    :goto_69
    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v2, v2, v0

    move-wide/from16 v16, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 468
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v6, v6, v2

    mul-double v0, v0, v8

    sub-double/2addr v0, v12

    mul-double v0, v0, v16

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    neg-double v0, v6

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass25 (com.alibaba.android.bindingx.core.internal.TimingFunctions$25)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 475
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x2

    .line 476
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x3

    .line 477
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 478
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v2, v0, v10

    if-nez v2, :cond_39

    return-object v3

    :cond_39
    div-double/2addr v0, v8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v0, v2

    if-nez v10, :cond_46

    add-double/2addr v4, v6

    .line 487
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_46
    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double v2, v2, v8

    .line 490
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v14, v6, v10

    if-gez v14, :cond_5f

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double v10, v2, v10

    goto :goto_69

    :cond_5f
    div-double v10, v2, v12

    div-double v14, v6, v6

    .line 494
    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    mul-double v10, v10, v14

    :goto_69
    const-wide/high16 v14, -0x3fdc000000000000L    # -10.0

    mul-double v14, v14, v0

    move-wide/from16 v16, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 496
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v6

    mul-double v0, v0, v8

    sub-double/2addr v0, v10

    mul-double v0, v0, v16

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v12, v12, v0

    add-double/2addr v12, v6

    add-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass26 (com.alibaba.android.bindingx.core.internal.TimingFunctions$26)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 503
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x2

    .line 504
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x3

    .line 505
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 506
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v2, v0, v10

    if-nez v2, :cond_39

    return-object v3

    :cond_39
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v10, v8, v2

    div-double/2addr v0, v10

    cmpl-double v10, v0, v2

    if-nez v10, :cond_48

    add-double/2addr v4, v6

    .line 515
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_48
    const-wide v10, 0x3fdcccccccccccccL    # 0.44999999999999996

    mul-double v10, v10, v8

    .line 518
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v16, v6, v12

    if-gez v16, :cond_61

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double v12, v10, v12

    goto :goto_6b

    :cond_61
    div-double v12, v10, v14

    div-double v16, v6, v6

    .line 522
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    :goto_6b
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v0, v16

    if-gez v18, :cond_95

    sub-double v0, v0, v16

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    move-wide/from16 v18, v14

    mul-double v14, v0, v16

    .line 525
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v6, v6, v2

    mul-double v0, v0, v8

    sub-double/2addr v0, v12

    mul-double v0, v0, v18

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double v6, v6, v0

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_95
    move-wide/from16 v18, v14

    sub-double v0, v0, v16

    const-wide/high16 v14, -0x3fdc000000000000L    # -10.0

    mul-double v14, v14, v0

    .line 527
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v6

    mul-double v0, v0, v8

    sub-double/2addr v0, v12

    mul-double v0, v0, v18

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v0

    add-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass27 (com.alibaba.android.bindingx.core.internal.TimingFunctions$27)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 535
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 536
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 537
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 538
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    const-wide v6, 0x40059cd5f99c38b0L    # 2.70158

    mul-double v6, v6, v0

    const-wide v0, 0x3ffb39abf3387161L    # 1.70158

    sub-double/2addr v6, v0

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 541
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass28 (com.alibaba.android.bindingx.core.internal.TimingFunctions$28)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 549
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 550
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 551
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 552
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    const-wide v10, 0x40059cd5f99c38b0L    # 2.70158

    mul-double v10, v10, v0

    const-wide v0, 0x3ffb39abf3387161L    # 1.70158

    add-double/2addr v10, v0

    mul-double v8, v8, v10

    add-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 555
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass29 (com.alibaba.android.bindingx.core.internal.TimingFunctions$29)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 562
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 563
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 564
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 565
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 566
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x400cc25fe974a340L    # 3.5949095

    const-wide v12, 0x4004c25fe974a340L    # 2.5949095

    cmpg-double p1, v0, v6

    if-gez p1, :cond_54

    div-double/2addr v4, v8

    mul-double v6, v0, v0

    mul-double v10, v10, v0

    sub-double/2addr v10, v12

    mul-double v6, v6, v10

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 570
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_54
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v10, v10, v0

    add-double/2addr v10, v12

    mul-double v6, v6, v10

    add-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 572
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass3 (com.alibaba.android.bindingx.core.internal.TimingFunctions$3)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 149
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 150
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 151
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 152
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 154
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass30 (com.alibaba.android.bindingx.core.internal.TimingFunctions$30)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 580
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v2, 0x2

    .line 581
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v2, 0x3

    .line 582
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 583
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 585
    invoke-static/range {v3 .. v10}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$200(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass31 (com.alibaba.android.bindingx.core.internal.TimingFunctions$31)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 593
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v2, 0x2

    .line 594
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v2, 0x3

    .line 595
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 596
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 598
    invoke-static/range {v3 .. v10}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$300(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass32 (com.alibaba.android.bindingx.core.internal.TimingFunctions$32)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 606
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 607
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v5, 0x3

    .line 608
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 609
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v7, v12, v5

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v7

    if-gez v2, :cond_4c

    mul-double v6, v0, v5

    const-wide/16 v8, 0x0

    .line 612
    invoke-static/range {v6 .. v13}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$200(DDDD)D

    move-result-wide v0

    mul-double v0, v0, v14

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4c
    mul-double v0, v0, v5

    sub-double v6, v0, v12

    const-wide/16 v8, 0x0

    .line 614
    invoke-static/range {v6 .. v13}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->access$300(DDDD)D

    move-result-wide v0

    mul-double v0, v0, v14

    mul-double v10, v10, v14

    add-double/2addr v0, v10

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass4 (com.alibaba.android.bindingx.core.internal.TimingFunctions$4)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 163
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 164
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 165
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    neg-double v4, v4

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 167
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass5 (com.alibaba.android.bindingx.core.internal.TimingFunctions$5)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 175
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 176
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 177
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 178
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_45

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_45
    neg-double v4, v4

    div-double/2addr v4, v8

    sub-double/2addr v0, v6

    sub-double v8, v0, v8

    mul-double v0, v0, v8

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 183
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass6 (com.alibaba.android.bindingx.core.internal.TimingFunctions$6)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 192
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 193
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 194
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 196
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass7 (com.alibaba.android.bindingx.core.internal.TimingFunctions$7)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 204
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 205
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 206
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 207
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double v8, v0, v0

    mul-double v8, v8, v0

    add-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    .line 209
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass8 (com.alibaba.android.bindingx.core.internal.TimingFunctions$8)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 218
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 219
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 220
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v6

    if-gez p1, :cond_47

    div-double/2addr v4, v8

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 223
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_47
    div-double/2addr v4, v8

    sub-double/2addr v0, v8

    mul-double v6, v0, v0

    mul-double v6, v6, v0

    add-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v4, v2

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.AnonymousClass9 (com.alibaba.android.bindingx.core.internal.TimingFunctions$9)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 234
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 235
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 236
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v0

    add-double/2addr v4, v2

    .line 238
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.BezierInterpolatorWrapper (com.alibaba.android.bindingx.core.internal.TimingFunctions$BezierInterpolatorWrapper)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BezierInterpolatorWrapper"
.end annotation


# instance fields
.field private mInnerInterpolator:Landroid/view/animation/Interpolator;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method constructor <init>(FFFF)V
    .registers 5

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x1:F

    .line 662
    iput p2, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y1:F

    .line 663
    iput p3, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x2:F

    .line 664
    iput p4, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y2:F

    .line 665
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->mInnerInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->mInnerInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.TimingFunctions.InnerCache (com.alibaba.android.bindingx.core.internal.TimingFunctions$InnerCache)
.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
.super Ljava/lang/Object;
.source "TimingFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final deque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    .line 644
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    .line 647
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method getAll()Ljava/util/Deque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->deque:Ljava/util/ArrayDeque;

    return-object v0
.end method
