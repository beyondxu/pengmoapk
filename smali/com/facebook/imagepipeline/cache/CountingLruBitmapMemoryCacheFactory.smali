###### Class com.facebook.imagepipeline.cache.CountingLruBitmapMemoryCacheFactory (com.facebook.imagepipeline.cache.CountingLruBitmapMemoryCacheFactory)
.class public Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;ZZLcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .registers 14
    .param p6    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;",
            "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
            "ZZ",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;)",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;-><init>(Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;)V

    .line 37
    new-instance v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    move-object v3, p1

    move-object v2, p3

    move v5, p4

    move v6, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;ZZ)V

    .line 46
    invoke-interface {p2, v0}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.cache.CountingLruBitmapMemoryCacheFactory.AnonymousClass1 (com.facebook.imagepipeline.cache.CountingLruBitmapMemoryCacheFactory$1)
.class Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/ValueDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;->create(Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;ZZLcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;->this$0:Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSizeInBytes(Lcom/facebook/imagepipeline/image/CloseableImage;)I
    .registers 2

    .line 33
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->getSizeInBytes()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSizeInBytes(Ljava/lang/Object;)I
    .registers 2

    .line 30
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;->getSizeInBytes(Lcom/facebook/imagepipeline/image/CloseableImage;)I

    move-result p1

    return p1
.end method
