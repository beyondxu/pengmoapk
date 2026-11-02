###### Class com.facebook.fresco.vito.renderer.ImageRenderer (com.facebook.fresco.vito.renderer.ImageRenderer)
.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,125:1\n46#1,2:126\n107#1,4:128\n48#1,3:132\n120#1,3:135\n112#1,3:138\n52#1:141\n107#1,4:142\n55#1:146\n120#1,3:147\n112#1,3:150\n57#1:153\n61#1,2:154\n112#1,3:156\n72#1,2:159\n91#1:161\n107#1,4:162\n120#1,3:166\n112#1,3:169\n107#1,4:172\n120#1,3:176\n112#1,3:179\n107#1,4:182\n120#1,3:186\n112#1,3:189\n107#1,4:192\n120#1,3:196\n112#1,3:199\n112#1,3:202\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n35#1:126,2\n35#1:128,4\n35#1:132,3\n35#1:135,3\n35#1:138,3\n35#1:141\n35#1:142,4\n35#1:146\n35#1:147,3\n35#1:150,3\n35#1:153\n36#1:154,2\n36#1:156,3\n37#1:159,2\n37#1:161\n47#1:162,4\n50#1:166,3\n50#1:169,3\n52#1:172,4\n55#1:176,3\n55#1:179,3\n47#1:182,4\n50#1:186,3\n50#1:189,3\n52#1:192,4\n55#1:196,3\n55#1:199,3\n62#1:202,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J?\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011J>\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\u0005*\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086\u0008\u00a2\u0006\u0002\u0010\u0014J2\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\u0005*\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u0016J>\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\u0005*\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086\u0008\u00a2\u0006\u0002\u0010\u0018J8\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086\u0008\u00a2\u0006\u0002\u0010\u001cJ.\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u001eJ!\u0010\u001f\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0010H\u0086\u0008\u00a8\u0006!"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/renderer/ImageRenderer;",
        "",
        "<init>",
        "()V",
        "createImageDataModelRenderCommand",
        "Lcom/facebook/fresco/vito/renderer/RenderCommand;",
        "Lkotlin/Function1;",
        "Landroid/graphics/Canvas;",
        "",
        "model",
        "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
        "shape",
        "Lcom/facebook/fresco/vito/renderer/Shape;",
        "paint",
        "Landroid/graphics/Paint;",
        "imageTransformation",
        "Landroid/graphics/Matrix;",
        "(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;",
        "createRenderCommand",
        "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
        "(Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;",
        "Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;",
        "(Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;",
        "Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;",
        "(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;",
        "bitmapRenderCommand",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;",
        "paintRenderCommand",
        "(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;",
        "setBitmap",
        "shaderTransformation",
        "renderer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    invoke-direct {v0}, Lcom/facebook/fresco/vito/renderer/ImageRenderer;-><init>()V

    sput-object v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createImageDataModelRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 28
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createImageDataModelRenderCommand(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .registers 7

    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_5

    const/4 p4, 0x0

    .line 41
    :cond_5
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of p0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz p0, :cond_24

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 182
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p1, p4, p0, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    .line 48
    :cond_24
    instance-of p0, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz p0, :cond_5b

    .line 49
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result p0

    if-nez p0, :cond_4f

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 186
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object p5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object p6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, p5, p6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast p1, Landroid/graphics/Shader;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 189
    new-instance p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0

    .line 52
    :cond_4f
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 192
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p1, p4, p0, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    .line 55
    :cond_5b
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 196
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object p5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object p6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, p5, p6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast p1, Landroid/graphics/Shader;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 197
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 199
    new-instance p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static synthetic createRenderCommand$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .registers 7

    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_5

    const/4 p4, 0x0

    .line 65
    :cond_5
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    instance-of p0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz p0, :cond_20

    new-instance p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0

    .line 91
    :cond_20
    new-instance p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static synthetic setBitmap$default(Lcom/facebook/fresco/vito/renderer/ImageRenderer;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/Paint;
    .registers 6

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_5

    const/4 p3, 0x0

    .line 116
    :cond_5
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance p0, Landroid/graphics/BitmapShader;

    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object p5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, p2, p4, p5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast p0, Landroid/graphics/Shader;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object p1
.end method


# virtual methods
.method public final bitmapRenderCommand(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {v0, p3, p2, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final createImageDataModelRenderCommand(Lcom/facebook/fresco/vito/renderer/ImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;

    if-eqz v0, :cond_7d

    check-cast p1, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;

    .line 127
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 128
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    return-object p2

    .line 132
    :cond_25
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz v0, :cond_5c

    .line 133
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result v0

    if-nez v0, :cond_50

    .line 134
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 135
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 138
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    .line 141
    :cond_50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 142
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    return-object p2

    .line 146
    :cond_5c
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 147
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 148
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 150
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    .line 36
    :cond_7d
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;

    if-eqz v0, :cond_9c

    check-cast p1, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;

    .line 154
    sget-object p4, Lcom/facebook/fresco/vito/renderer/util/ColorUtils;->Companion:Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->getColorInt()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p4, p1, v0}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;->multiplyColorAlpha(II)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    .line 37
    :cond_9c
    instance-of v0, p1, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    if-eqz v0, :cond_b6

    check-cast p1, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    .line 160
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v0, :cond_ae

    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0

    .line 161
    :cond_ae
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0

    .line 34
    :cond_b6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 162
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    return-object p2

    .line 48
    :cond_1f
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/CircleShape;

    if-eqz v0, :cond_56

    .line 49
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 166
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 169
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    .line 52
    :cond_4a
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 172
    new-instance p2, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;

    invoke-direct {p2, p4, p1, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    return-object p2

    .line 55
    :cond_56
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 176
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 179
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/facebook/fresco/vito/renderer/util/ColorUtils;->Companion:Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->getColorInt()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;->multiplyColorAlpha(II)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    new-instance p1, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method

.method public final createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    instance-of v0, p2, Lcom/facebook/fresco/vito/renderer/RectShape;

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0

    .line 91
    :cond_1b
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;-><init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final paintRenderCommand(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/renderer/Shape;",
            "Landroid/graphics/Paint;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;

    invoke-direct {v0, p1, p2}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;-><init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Paint;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object p1
.end method

###### Class com.facebook.fresco.vito.renderer.ImageRenderer.AnonymousClass1 (com.facebook.fresco.vito.renderer.ImageRenderer$bitmapRenderCommand$1)
.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->bitmapRenderCommand(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 107
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

###### Class com.facebook.fresco.vito.renderer.ImageRenderer.C01011 (com.facebook.fresco.vito.renderer.ImageRenderer$createRenderCommand$1)
.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $shape:Lcom/facebook/fresco/vito/renderer/Shape;

.field final synthetic $this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    iput-object p4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 73
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v0

    if-lez v0, :cond_31

    .line 75
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_66

    .line 80
    :cond_31
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v1, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 82
    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v2, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 83
    iget-object v3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v3, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v3}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    .line 84
    iget-object v4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v4, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v4}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    :goto_66
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 88
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.facebook.fresco.vito.renderer.ImageRenderer.AnonymousClass2 (com.facebook.fresco.vito.renderer.ImageRenderer$createRenderCommand$2)
.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2\n+ 2 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,125:1\n120#2,3:126\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2\n*L\n96#1:126,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $shape:Lcom/facebook/fresco/vito/renderer/Shape;

.field final synthetic $this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$paint:Landroid/graphics/Paint;

    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$imageTransformation:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 91
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    sget-object v1, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$imageTransformation:Landroid/graphics/Matrix;

    .line 126
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v3, Landroid/graphics/Shader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/fresco/vito/renderer/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

###### Class com.facebook.fresco.vito.renderer.ImageRenderer.C01021 (com.facebook.fresco.vito.renderer.ImageRenderer$paintRenderCommand$1)
.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->paintRenderCommand(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $shape:Lcom/facebook/fresco/vito/renderer/Shape;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 112
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$paintRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/fresco/vito/renderer/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method
