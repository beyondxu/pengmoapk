###### Class com.facebook.imagepipeline.producers.QualifiedResourceFetchProducer (com.facebook.imagepipeline.producers.QualifiedResourceFetchProducer)
.class public final Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;
.super Lcom/facebook/imagepipeline/producers/LocalFetchProducer;
.source "QualifiedResourceFetchProducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u000fH\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;",
        "Lcom/facebook/imagepipeline/producers/LocalFetchProducer;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "pooledByteBufferFactory",
        "Lcom/facebook/common/memory/PooledByteBufferFactory;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "<init>",
        "(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V",
        "getEncodedImage",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
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
.field public static final Companion:Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;

.field public static final PRODUCER_NAME:Ljava/lang/String; = "QualifiedResourceFetchProducer"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;->Companion:Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V
    .registers 5

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pooledByteBufferFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/LocalFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    .line 24
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected getEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/EncodedImage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 v0, -0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;->getEncodedImage(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p1

    const-string v0, "getEncodedImage(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 30
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ContentResolver returned null InputStream"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getProducerName()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "QualifiedResourceFetchProducer"

    return-object v0
.end method

###### Class com.facebook.imagepipeline.producers.QualifiedResourceFetchProducer.Companion (com.facebook.imagepipeline.producers.QualifiedResourceFetchProducer$Companion)
.class public final Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;
.super Ljava/lang/Object;
.source "QualifiedResourceFetchProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;",
        "",
        "<init>",
        "()V",
        "PRODUCER_NAME",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer$Companion;-><init>()V

    return-void
.end method
