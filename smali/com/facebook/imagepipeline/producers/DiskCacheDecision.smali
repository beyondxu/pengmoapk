###### Class com.facebook.imagepipeline.producers.DiskCacheDecision (com.facebook.imagepipeline.producers.DiskCacheDecision)
.class public final Lcom/facebook/imagepipeline/producers/DiskCacheDecision;
.super Ljava/lang/Object;
.source "DiskCacheDecision.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\rB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/DiskCacheDecision;",
        "",
        "<init>",
        "()V",
        "chooseDiskCacheForRequest",
        "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "smallDiskCache",
        "defaultDiskCache",
        "dynamicDiskCaches",
        "",
        "",
        "DiskCacheDecisionNoDiskCacheChosenException",
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
.field public static final INSTANCE:Lcom/facebook/imagepipeline/producers/DiskCacheDecision;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/imagepipeline/producers/DiskCacheDecision;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/producers/DiskCacheDecision;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/producers/DiskCacheDecision;->INSTANCE:Lcom/facebook/imagepipeline/producers/DiskCacheDecision;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final chooseDiskCacheForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/util/Map;)Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            ">;)",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v1, :cond_e

    return-object p1

    .line 26
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne p1, v0, :cond_17

    return-object p2

    .line 29
    :cond_17
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    sget-object p2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne p1, p2, :cond_2e

    if-eqz p3, :cond_2e

    .line 30
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getDiskCacheId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 32
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    return-object p0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.facebook.imagepipeline.producers.DiskCacheDecision.DiskCacheDecisionNoDiskCacheChosenException (com.facebook.imagepipeline.producers.DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException)
.class public final Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;
.super Ljava/lang/Exception;
.source "DiskCacheDecision.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DiskCacheDecision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiskCacheDecisionNoDiskCacheChosenException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00060\u0002j\u0002`\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;",
        "Lkotlin/Exception;",
        "Ljava/lang/Exception;",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
