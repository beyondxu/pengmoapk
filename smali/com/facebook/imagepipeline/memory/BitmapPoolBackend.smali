###### Class com.facebook.imagepipeline.memory.BitmapPoolBackend (com.facebook.imagepipeline.memory.BitmapPoolBackend)
.class public Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;
.super Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;
.source "BitmapPoolBackend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\nH\u0096\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;",
        "Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "()V",
        "put",
        "",
        "bitmap",
        "get",
        "size",
        "",
        "getSize",
        "isReusable",
        "",
        "Companion",
        "imagepipeline_release"
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
.field public static final Companion:Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;

.field private static final TAG:Ljava/lang/String; = "BitmapPoolBackend"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->Companion:Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 24
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_13

    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->isReusable(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->get(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .registers 2

    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->getSize(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected final isReusable(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 38
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    const-string v2, "BitmapPoolBackend"

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 39
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Cannot reuse a recycled bitmap: %s"

    invoke-static {v2, p1, v1}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 42
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_27

    .line 43
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Cannot reuse an immutable bitmap: %s"

    invoke-static {v2, p1, v1}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_27
    return v3
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->isReusable(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/memory/LruBucketsPoolBackend;->put(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2

    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;->put(Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.memory.BitmapPoolBackend.Companion (com.facebook.imagepipeline.memory.BitmapPoolBackend$Companion)
.class public final Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;
.super Ljava/lang/Object;
.source "BitmapPoolBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend$Companion;-><init>()V

    return-void
.end method
