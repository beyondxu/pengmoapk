###### Class com.alibaba.android.bindingx.core.internal.JSMath (com.alibaba.android.bindingx.core.internal.JSMath)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath;
.super Ljava/lang/Object;
.source "JSMath.java"


# static fields
.field public static E:Ljava/lang/Object;

.field private static PI:Ljava/lang/Object;

.field private static abs:Ljava/lang/Object;

.field private static acos:Ljava/lang/Object;

.field private static asArray:Ljava/lang/Object;

.field private static asin:Ljava/lang/Object;

.field private static atan:Ljava/lang/Object;

.field private static atan2:Ljava/lang/Object;

.field private static cbrt:Ljava/lang/Object;

.field private static ceil:Ljava/lang/Object;

.field private static cos:Ljava/lang/Object;

.field private static evaluateColor:Ljava/lang/Object;

.field private static exp:Ljava/lang/Object;

.field private static floor:Ljava/lang/Object;

.field private static log:Ljava/lang/Object;

.field private static matrix:Ljava/lang/Object;

.field private static max:Ljava/lang/Object;

.field private static min:Ljava/lang/Object;

.field private static pow:Ljava/lang/Object;

.field private static rgb:Ljava/lang/Object;

.field private static rgba:Ljava/lang/Object;

.field private static round:Ljava/lang/Object;

.field private static sArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private static scale:Ljava/lang/Object;

.field private static sign:Ljava/lang/Object;

.field private static sin:Ljava/lang/Object;

.field private static sqrt:Ljava/lang/Object;

.field private static tan:Ljava/lang/Object;

.field private static translate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$1;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sin:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$2;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->cos:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$3;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$3;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->tan:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$4;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$4;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->asin:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$5;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$5;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->acos:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$6;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$6;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->atan:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$7;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$7;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->atan2:Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$8;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$8;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->pow:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$9;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$9;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->exp:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$10;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$10;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sqrt:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$11;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$11;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->cbrt:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$12;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$12;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->log:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$13;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$13;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->abs:Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$14;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$14;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sign:Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$15;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$15;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->ceil:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$16;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$16;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->floor:Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$17;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$17;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->round:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$18;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$18;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->max:Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$19;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$19;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->min:Ljava/lang/Object;

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->PI:Ljava/lang/Object;

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->E:Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$20;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$20;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->translate:Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$21;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$21;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->scale:Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$22;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$22;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->matrix:Ljava/lang/Object;

    .line 220
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$23;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$23;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->rgb:Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$24;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$24;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->rgba:Ljava/lang/Object;

    .line 251
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 253
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$25;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$25;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->evaluateColor:Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$26;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$26;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->asArray:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Landroid/animation/ArgbEvaluator;
    .registers 1

    .line 36
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method static applyOrientationValuesToScope(Ljava/util/Map;DDDDDDDDD)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DDDDDDDDD)V"
        }
    .end annotation

    .line 294
    const-string v0, "alpha"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "beta"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "gamma"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-double/2addr p1, p7

    .line 298
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "dalpha"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-double/2addr p3, p9

    .line 299
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "dbeta"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-double/2addr p5, p11

    .line 300
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "dgamma"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo p1, "x"

    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo p1, "y"

    invoke-static/range {p15 .. p16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo p1, "z"

    invoke-static/range {p17 .. p18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static applyScrollValuesToScope(Ljava/util/Map;DDDDDDLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DDDDDD",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    const/4 v1, 0x0

    .line 314
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p3, p4, v2}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "y"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p5, p6, v2}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string p6, "dx"

    invoke-interface {p0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-array p5, v1, [Ljava/lang/Object;

    invoke-interface {v0, p7, p8, p5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string p6, "dy"

    invoke-interface {p0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-array p5, v1, [Ljava/lang/Object;

    invoke-interface {v0, p9, p10, p5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string/jumbo p6, "tdx"

    invoke-interface {p0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-array p5, v1, [Ljava/lang/Object;

    move-wide p6, p11

    invoke-interface {v0, p6, p7, p5}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string/jumbo p6, "tdy"

    invoke-interface {p0, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string p5, "internal_x"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string p1, "internal_y"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static applyTimingValuesToScope(Ljava/util/Map;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D)V"
        }
    .end annotation

    .line 309
    const-string/jumbo v0, "t"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    .line 328
    const-string v0, "sin"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sin:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v0, "cos"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->cos:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v0, "tan"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->tan:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "asin"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->asin:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "acos"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->acos:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "atan"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->atan:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "atan2"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->atan2:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "pow"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->pow:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "exp"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->exp:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "sqrt"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sqrt:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "cbrt"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->cbrt:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "log"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->log:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "abs"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->abs:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "sign"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sign:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "ceil"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->ceil:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "floor"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->floor:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "round"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->round:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "max"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->max:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "min"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->min:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, "PI"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->PI:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "E"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->E:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string/jumbo v0, "translate"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->translate:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, "scale"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->scale:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "matrix"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->matrix:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "rgb"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->rgb:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "rgba"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->rgba:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "evaluateColor"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->evaluateColor:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "asArray"

    sget-object v1, Lcom/alibaba/android/bindingx/core/internal/JSMath;->asArray:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static applyXYToScope(Ljava/util/Map;DDLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DD",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 285
    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p5, p1, p2, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p5, p3, p4, v0}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string/jumbo v0, "y"

    invoke-interface {p0, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string p5, "internal_x"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string p1, "internal_y"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseColor(Ljava/lang/String;)I
    .registers 4

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 269
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 270
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 272
    :cond_20
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 273
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    .line 266
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown color"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass1 (com.alibaba.android.bindingx.core.internal.JSMath$1)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$1;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass10 (com.alibaba.android.bindingx.core.internal.JSMath$10)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$10;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass11 (com.alibaba.android.bindingx.core.internal.JSMath$11)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$11;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass12 (com.alibaba.android.bindingx.core.internal.JSMath$12)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$12;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass13 (com.alibaba.android.bindingx.core.internal.JSMath$13)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$13;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass14 (com.alibaba.android.bindingx.core.internal.JSMath$14)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$14;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_17

    const/4 p1, 0x1

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_17
    if-nez p1, :cond_1e

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1e
    cmpg-double p1, v1, v3

    if-gez p1, :cond_28

    const/4 p1, -0x1

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_28
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass15 (com.alibaba.android.bindingx.core.internal.JSMath$15)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$15;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass16 (com.alibaba.android.bindingx.core.internal.JSMath$16)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$16;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass17 (com.alibaba.android.bindingx.core.internal.JSMath$17)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$17;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass18 (com.alibaba.android.bindingx.core.internal.JSMath$18)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$18;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_31

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_18
    if-ge v1, v0, :cond_2c

    .line 154
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-lez v6, :cond_29

    move-wide v2, v4

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 159
    :cond_2c
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass19 (com.alibaba.android.bindingx.core.internal.JSMath$19)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$19;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_31

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_18
    if-ge v1, v0, :cond_2c

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-gez v6, :cond_29

    move-wide v2, v4

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 175
    :cond_2c
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass2 (com.alibaba.android.bindingx.core.internal.JSMath$2)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$2;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass20 (com.alibaba.android.bindingx.core.internal.JSMath$20)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$20;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
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

    if-eqz p1, :cond_b

    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_b

    :cond_a
    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass21 (com.alibaba.android.bindingx.core.internal.JSMath$21)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$21;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
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

    if-eqz p1, :cond_b

    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_b

    :cond_a
    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass22 (com.alibaba.android.bindingx.core.internal.JSMath$22)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$22;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
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

    if-eqz p1, :cond_b

    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    goto :goto_b

    :cond_a
    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass23 (com.alibaba.android.bindingx.core.internal.JSMath$23)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$23;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 8
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

    if-eqz p1, :cond_37

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    goto :goto_37

    :cond_a
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 228
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 229
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-int p1, v0

    double-to-int v0, v2

    double-to-int v1, v4

    .line 231
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_37
    :goto_37
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass24 (com.alibaba.android.bindingx.core.internal.JSMath$24)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$24;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 235
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

    if-eqz p1, :cond_4a

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_a

    goto :goto_4a

    :cond_a
    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 243
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 244
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x3

    .line 246
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double v6, v6, v8

    double-to-int p1, v6

    double-to-int v0, v0

    double-to-int v1, v2

    double-to-int v2, v4

    .line 247
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4a
    :goto_4a
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass25 (com.alibaba.android.bindingx.core.internal.JSMath$25)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$25;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 8
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

    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->access$000(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->access$000(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 258
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 259
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 260
    invoke-static {}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->access$100()Landroid/animation/ArgbEvaluator;

    move-result-object p1

    double-to-float v2, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass26 (com.alibaba.android.bindingx.core.internal.JSMath$26)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$26;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 2
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

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass3 (com.alibaba.android.bindingx.core.internal.JSMath$3)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$3;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass4 (com.alibaba.android.bindingx.core.internal.JSMath$4)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$4;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass5 (com.alibaba.android.bindingx.core.internal.JSMath$5)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$5;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass6 (com.alibaba.android.bindingx.core.internal.JSMath$6)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$6;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass7 (com.alibaba.android.bindingx.core.internal.JSMath$7)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$7;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass8 (com.alibaba.android.bindingx.core.internal.JSMath$8)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$8;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.core.internal.JSMath.AnonymousClass9 (com.alibaba.android.bindingx.core.internal.JSMath$9)
.class Lcom/alibaba/android/bindingx/core/internal/JSMath$9;
.super Ljava/lang/Object;
.source "JSMath.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/JSMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
