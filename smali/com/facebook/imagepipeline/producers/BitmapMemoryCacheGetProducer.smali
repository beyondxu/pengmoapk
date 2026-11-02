###### Class com.facebook.imagepipeline.producers.BitmapMemoryCacheGetProducer (com.facebook.imagepipeline.producers.BitmapMemoryCacheGetProducer)
.class public final Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;
.super Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;
.source "BitmapMemoryCacheGetProducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B7\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ8\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\n0\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\n0\u000e2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0014H\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;",
        "Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;",
        "memoryCache",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "inputProducer",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "Lcom/facebook/common/references/CloseableReference;",
        "<init>",
        "(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V",
        "wrapConsumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "consumer",
        "cacheKey",
        "isMemoryCacheEnabled",
        "",
        "getProducerName",
        "",
        "getOriginSubcategory",
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
.field public static final Companion:Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;

.field private static final ORIGIN_SUBCATEGORY:Ljava/lang/String; = "pipe_ui"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "BitmapMemoryCacheGetProducer"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;->Companion:Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "memoryCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKeyFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    return-void
.end method


# virtual methods
.method protected getOriginSubcategory()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "pipe_ui"

    return-object v0
.end method

.method protected getProducerName()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method

.method protected wrapConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;Z)Lcom/facebook/imagepipeline/producers/Consumer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string p3, "consumer"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "cacheKey"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

###### Class com.facebook.imagepipeline.producers.BitmapMemoryCacheGetProducer.Companion (com.facebook.imagepipeline.producers.BitmapMemoryCacheGetProducer$Companion)
.class public final Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheGetProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;",
        "",
        "<init>",
        "()V",
        "PRODUCER_NAME",
        "",
        "ORIGIN_SUBCATEGORY",
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer$Companion;-><init>()V

    return-void
.end method
