###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoaderFactory (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoaderFactory)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;
.super Ljava/lang/Object;
.source "AnimationLoaderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;",
        "",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "maxFpsRender",
        "",
        "bufferLengthMilliseconds",
        "<init>",
        "(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;II)V",
        "createBufferLoader",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "cacheKey",
        "",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "Companion",
        "animated-drawable_release"
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
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

.field private static final UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bufferLengthMilliseconds:I

.field private final maxFpsRender:I

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;II)V
    .registers 5

    const-string v0, "platformBitmapFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 19
    iput p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->maxFpsRender:I

    .line 20
    iput p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->bufferLengthMilliseconds:I

    return-void
.end method

.method public static final synthetic access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 17
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final createBufferLoader(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/backend/AnimationInformation;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
    .registers 12

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationInformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 29
    :try_start_12
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    if-eqz v0, :cond_23

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_3b

    monitor-exit v1

    return-object p1

    .line 34
    :cond_23
    :try_start_23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_3b

    .line 28
    monitor-exit v1

    .line 36
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;

    .line 37
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 39
    new-instance v5, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

    iget p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->maxFpsRender:I

    invoke-direct {v5, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;-><init>(I)V

    .line 41
    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->bufferLengthMilliseconds:I

    move-object v4, p2

    move-object v6, p3

    .line 36
    invoke-direct/range {v2 .. v7}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;Lcom/facebook/fresco/animation/backend/AnimationInformation;I)V

    check-cast v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    return-object v2

    :catchall_3b
    move-exception v0

    move-object p1, v0

    .line 28
    monitor-exit v1

    throw p1
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoaderFactory.Companion (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoaderFactory$Companion)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;
.super Ljava/lang/Object;
.source "AnimationLoaderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationLoaderFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,65:1\n535#2:66\n520#2,6:67\n216#3,2:73\n*S KotlinDebug\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n*L\n53#1:66\n53#1:67,6\n55#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;",
        "",
        "<init>",
        "()V",
        "UNUSED_FRAME_LOADERS",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;",
        "saveUnusedFrame",
        "",
        "cacheKey",
        "frameLoader",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "clearUnusedUntil",
        "until",
        "Ljava/util/Date;",
        "animated-drawable_release"
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearUnusedUntil(Ljava/util/Date;)V
    .registers 7

    const-string/jumbo v0, "until"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 53
    :try_start_b
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 66
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 67
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    invoke-virtual {v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getInsertedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gez v4, :cond_20

    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 73
    :cond_48
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    invoke-virtual {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->clear()V

    .line 57
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 59
    :cond_75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_b .. :try_end_77} :catchall_79

    .line 52
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final saveUnusedFrame(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;)V
    .registers 6

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;Ljava/util/Date;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
