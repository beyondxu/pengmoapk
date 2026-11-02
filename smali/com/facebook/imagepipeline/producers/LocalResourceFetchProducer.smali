###### Class com.facebook.imagepipeline.producers.LocalResourceFetchProducer (com.facebook.imagepipeline.producers.LocalResourceFetchProducer)
.class public final Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;
.super Lcom/facebook/imagepipeline/producers/LocalFetchProducer;
.source "LocalResourceFetchProducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;",
        "Lcom/facebook/imagepipeline/producers/LocalFetchProducer;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "pooledByteBufferFactory",
        "Lcom/facebook/common/memory/PooledByteBufferFactory;",
        "resources",
        "Landroid/content/res/Resources;",
        "<init>",
        "(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/res/Resources;)V",
        "getEncodedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "getLength",
        "",
        "getProducerName",
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
.field public static final Companion:Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;

.field public static final PRODUCER_NAME:Ljava/lang/String; = "LocalResourceFetchProducer"


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->Companion:Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/res/Resources;)V
    .registers 5

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pooledByteBufferFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    .line 23
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private final getLength(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .registers 5

    const/4 v0, 0x0

    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->resources:Landroid/content/res/Resources;

    sget-object v2, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->Companion:Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;

    invoke-static {v2, p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;->access$getResourceId(Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_11} :catch_1f
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    long-to-int p1, v1

    if-eqz v0, :cond_26

    .line 40
    :try_start_14
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_26

    goto :goto_26

    :catchall_18
    move-exception p1

    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1e

    .line 41
    :catch_1e
    :cond_1e
    throw p1

    :catch_1f
    nop

    if-eqz v0, :cond_25

    .line 40
    :try_start_22
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    const/4 p1, -0x1

    :catch_26
    :cond_26
    :goto_26
    return p1
.end method


# virtual methods
.method protected getEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->resources:Landroid/content/res/Resources;

    sget-object v1, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->Companion:Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;

    invoke-static {v1, p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;->access$getResourceId(Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->getLength(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result p1

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p1

    return-object p1
.end method

.method protected getProducerName()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "LocalResourceFetchProducer"

    return-object v0
.end method

###### Class com.facebook.imagepipeline.producers.LocalResourceFetchProducer.Companion (com.facebook.imagepipeline.producers.LocalResourceFetchProducer$Companion)
.class public final Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;
.super Ljava/lang/Object;
.source "LocalResourceFetchProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;",
        "",
        "<init>",
        "()V",
        "PRODUCER_NAME",
        "",
        "getResourceId",
        "",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
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

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getResourceId(Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer$Companion;->getResourceId(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result p0

    return p0
.end method

.method private final getResourceId(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .registers 3

    .line 53
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 54
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
