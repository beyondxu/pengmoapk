###### Class com.taobao.weex.ui.view.border.BorderStyle (com.taobao.weex.ui.view.border.BorderStyle)
.class final enum Lcom/taobao/weex/ui/view/border/BorderStyle;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/view/border/BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/border/BorderStyle;

.field public static final enum DASHED:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field public static final enum DOTTED:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field public static final enum SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/ui/view/border/BorderStyle;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/ui/view/border/BorderStyle;

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->DASHED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->DOTTED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    const-string v1, "DASHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->DASHED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    const-string v1, "DOTTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->DOTTED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 4
    invoke-static {}, Lcom/taobao/weex/ui/view/border/BorderStyle;->$values()[Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->$VALUES:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/border/BorderStyle;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/border/BorderStyle;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->$VALUES:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/border/BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-object v0
.end method


# virtual methods
.method getLineShader(FILcom/taobao/weex/dom/CSSShorthand$EDGE;)Landroid/graphics/Shader;
    .registers 15

    .line 1
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle$1;->$SwitchMap$com$taobao$weex$ui$view$border$BorderStyle:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_10

    if-eq v0, v3, :cond_24

    goto :goto_38

    .line 3
    :cond_10
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p3, v0, :cond_80

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne p3, v0, :cond_1b

    goto :goto_80

    .line 6
    :cond_1b
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-eq p3, v0, :cond_69

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne p3, v0, :cond_24

    goto :goto_69

    .line 11
    :cond_24
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const/high16 v1, 0x40c00000    # 6.0f

    if-eq p3, v0, :cond_51

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne p3, v0, :cond_2f

    goto :goto_51

    .line 14
    :cond_2f
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-eq p3, v0, :cond_3a

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    if-ne p3, v0, :cond_38

    goto :goto_3a

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_3a
    :goto_3a
    new-instance v0, Landroid/graphics/LinearGradient;

    mul-float p1, p1, v1

    filled-new-array {p2, v2}, [I

    move-result-object v5

    new-array v6, v3, [F

    fill-array-data v6, :array_98

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :cond_51
    :goto_51
    const/high16 p3, 0x40c00000    # 6.0f

    .line 16
    new-instance v1, Landroid/graphics/LinearGradient;

    mul-float v5, p1, p3

    filled-new-array {p2, v2}, [I

    move-result-object v6

    new-array v7, v3, [F

    fill-array-data v7, :array_a0

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1

    :cond_69
    :goto_69
    const/4 p3, 0x0

    .line 17
    new-instance v2, Landroid/graphics/LinearGradient;

    mul-float v5, p1, v1

    filled-new-array {p2, p3}, [I

    move-result-object v7

    new-array v8, v3, [F

    fill-array-data v8, :array_a8

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v2

    :cond_80
    :goto_80
    const/4 p3, 0x0

    const/4 v0, 0x2

    .line 18
    new-instance v3, Landroid/graphics/LinearGradient;

    mul-float v7, p1, v1

    filled-new-array {p2, p3}, [I

    move-result-object v8

    new-array v9, v0, [F

    fill-array-data v9, :array_b0

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v3

    :array_98
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_a0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_a8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_b0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

###### Class com.taobao.weex.ui.view.border.BorderStyle.AnonymousClass1 (com.taobao.weex.ui.view.border.BorderStyle$1)
.class synthetic Lcom/taobao/weex/ui/view/border/BorderStyle$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/border/BorderStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$weex$ui$view$border$BorderStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/ui/view/border/BorderStyle;->values()[Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle$1;->$SwitchMap$com$taobao$weex$ui$view$border$BorderStyle:[I

    :try_start_9
    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->DOTTED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle$1;->$SwitchMap$com$taobao$weex$ui$view$border$BorderStyle:[I

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->DASHED:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
