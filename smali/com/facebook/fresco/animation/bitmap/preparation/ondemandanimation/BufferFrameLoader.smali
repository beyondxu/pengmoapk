###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;
.super Ljava/lang/Object;
.source "BufferFrameLoader.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;,
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferFrameLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFrameLoader.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1#2:253\n1863#3,2:254\n774#3:256\n865#3,2:257\n1863#3,2:259\n1863#3,2:261\n1863#3,2:263\n*S KotlinDebug\n*F\n+ 1 BufferFrameLoader.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader\n*L\n109#1:254,2\n137#1:256\n137#1:257,2\n144#1:259,2\n198#1:261,2\n204#1:263,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 82\u00020\u0001:\u000278B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ \u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bH\u0017J\u0010\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u000bH\u0003J&\u0010%\u001a\u00020&2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000b2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0(H\u0017J\u0010\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020\u000bH\u0016J\u0008\u0010+\u001a\u00020&H\u0016J\u0018\u0010,\u001a\u00020&2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bH\u0002J*\u0010-\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000b2\u0008\u0008\u0002\u0010.\u001a\u00020\u000bH\u0003J.\u0010/\u001a\u00020&2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u000202012\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bH\u0002J\u0012\u00103\u001a\u0004\u0018\u0001042\u0006\u0010$\u001a\u00020\u000bH\u0002J\u0012\u0010+\u001a\u00020&*\u0008\u0012\u0004\u0012\u00020201H\u0002J \u00105\u001a\u0008\u0012\u0004\u0012\u00020201*\u0008\u0012\u0004\u0012\u000202012\u0006\u00106\u001a\u000202H\u0002J\u000c\u0010*\u001a\u00020\u000b*\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "fpsCompressor",
        "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "bufferLengthMilliseconds",
        "",
        "<init>",
        "(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;Lcom/facebook/fresco/animation/backend/AnimationInformation;I)V",
        "getAnimationInformation",
        "()Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "bufferSize",
        "bufferFramesHash",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;",
        "thresholdFrame",
        "isFetching",
        "",
        "frameSequence",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;",
        "lastRenderedFrameNumber",
        "compressionFrameMap",
        "",
        "renderableFrameIndexes",
        "",
        "getFrame",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;",
        "frameNumber",
        "width",
        "height",
        "findNearestToRender",
        "targetFrame",
        "prepareFrames",
        "",
        "onAnimationLoaded",
        "Lkotlin/Function0;",
        "compressToFps",
        "fps",
        "clear",
        "loadNextFrames",
        "extractDemandedFrame",
        "count",
        "obtainFrame",
        "targetBitmap",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "findNearestFrame",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;",
        "set",
        "src",
        "BufferFrame",
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
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;

.field private static final THRESHOLD_PERCENTAGE:F = 0.5f


# instance fields
.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

.field private final bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferLengthMilliseconds:I

.field private final bufferSize:I

.field private compressionFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fpsCompressor:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

.field private final frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

.field private volatile isFetching:Z

.field private lastRenderedFrameNumber:I

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private renderableFrameIndexes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile thresholdFrame:I


# direct methods
.method public static synthetic $r8$lambda$-nbFvRJxcKEPx1PM62JX2o1fhSY(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames$lambda$2(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;Lcom/facebook/fresco/animation/backend/AnimationInformation;I)V
    .registers 7

    const-string v0, "platformBitmapFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fpsCompressor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationInformation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 33
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 34
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fpsCompressor:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

    .line 35
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 36
    iput p5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferLengthMilliseconds:I

    .line 40
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result p1

    mul-int p1, p1, p5

    div-int/lit16 p1, p1, 0x3e8

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    .line 41
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance p2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;-><init>(I)V

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    .line 48
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->renderableFrameIndexes:Ljava/util/Set;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressToFps(I)V

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 52
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->thresholdFrame:I

    return-void
.end method

.method private final clear(Lcom/facebook/common/references/CloseableReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_17
    return-void
.end method

.method private final extractDemandedFrame(IIII)Z
    .registers 15

    .line 137
    iget-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    invoke-virtual {p4, p1, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->sublist(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 256
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    check-cast p4, Ljava/util/Collection;

    .line 257
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->renderableFrameIndexes:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 257
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 258
    :cond_36
    check-cast p4, Ljava/util/List;

    .line 140
    move-object p1, p4

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "<get-keys>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_fd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 145
    iget-object v5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7b

    goto :goto_5c

    .line 149
    :cond_7b
    iget v5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    return v4

    .line 153
    :cond_8b
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_97

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 154
    :cond_97
    iget-object v5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    const/4 v7, 0x0

    if-eqz v5, :cond_b1

    .line 157
    invoke-virtual {v5}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    if-eqz v8, :cond_b1

    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    goto :goto_b2

    :cond_b1
    move-object v8, v7

    :goto_b2
    if-eqz v8, :cond_b5

    goto :goto_cd

    .line 163
    :cond_b5
    new-instance v5, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    iget-object v8, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    invoke-virtual {v8, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(II)Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    const-string v9, "createBitmap(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    .line 164
    invoke-virtual {v5}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    .line 166
    :goto_cd
    invoke-virtual {v5, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->setUpdatingFrame(Z)V

    .line 167
    check-cast v8, Ljava/io/Closeable;

    :try_start_d2
    move-object v3, v8

    check-cast v3, Lcom/facebook/common/references/CloseableReference;

    invoke-direct {p0, v3, v2, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->obtainFrame(Lcom/facebook/common/references/CloseableReference;III)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_f6

    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 168
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v5, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->setUpdatingFrame(Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5c

    :catchall_f6
    move-exception p1

    .line 167
    :try_start_f7
    throw p1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception p2

    invoke-static {v8, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 175
    :cond_fd
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_10c

    iget p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    goto :goto_123

    .line 177
    :cond_10c
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p3, p1

    mul-float p3, p3, p2

    float-to-int p2, p3

    sub-int/2addr p1, v3

    .line 179
    invoke-static {p2, v4, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 180
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 174
    :goto_123
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->thresholdFrame:I

    return v3
.end method

.method static synthetic extractDemandedFrame$default(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;IIIIILjava/lang/Object;)Z
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 129
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->extractDemandedFrame(IIII)Z

    move-result p0

    return p0
.end method

.method private final findNearestFrame(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .registers 7

    .line 208
    new-instance v0, Lkotlin/ranges/IntRange;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 209
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    sub-int v1, p1, v1

    invoke-virtual {v3, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getPosition(I)I

    move-result v1

    .line 210
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    if-eqz v3, :cond_49

    .line 211
    invoke-virtual {v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isFrameAvailable()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v3, v2

    :goto_3e
    if-eqz v3, :cond_49

    .line 212
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;

    invoke-virtual {v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;-><init>(ILcom/facebook/common/references/CloseableReference;)V

    :cond_49
    if-eqz v2, :cond_12

    :cond_4b
    return-object v2
.end method

.method private final findNearestToRender(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    .registers 4

    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestFrame(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 81
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    const-string v1, "clone(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getFrameNumber()I

    move-result p1

    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 83
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-direct {p1, v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V

    return-object p1

    .line 85
    :cond_21
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-direct {p1, v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V

    return-object p1
.end method

.method private final fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I
    .registers 9

    .line 231
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    move-result v0

    invoke-interface {p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result p1

    div-int/2addr v0, p1

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private final loadNextFrames(II)V
    .registers 5

    .line 115
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->isFetching:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->isFetching:Z

    .line 120
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;

    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final loadNextFrames$lambda$2(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V
    .registers 12

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    :goto_6
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    .line 123
    invoke-static/range {v2 .. v8}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->extractDemandedFrame$default(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;IIIIILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 125
    iput-boolean v1, v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->isFetching:Z

    return-void

    :cond_1d
    move-object p0, v2

    move p1, v4

    move p2, v5

    goto :goto_6
.end method

.method private final obtainFrame(Lcom/facebook/common/references/CloseableReference;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;III)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestFrame(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;

    move-result-object p3

    .line 193
    const-string p4, "get(...)"

    if-eqz p3, :cond_66

    invoke-virtual {p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_66

    check-cast v0, Ljava/io/Closeable;

    :try_start_16
    move-object v1, v0

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 194
    invoke-virtual {p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getFrameNumber()I

    move-result p3

    const/4 v2, 0x0

    if-ge p3, p2, :cond_59

    .line 197
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->set(Lcom/facebook/common/references/CloseableReference;Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;

    .line 198
    new-instance v1, Lkotlin/ranges/IntRange;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v1, p3, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Ljava/lang/Iterable;

    .line 261
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_55

    move-object p3, p2

    check-cast p3, Lkotlin/collections/IntIterator;

    invoke-virtual {p3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p3

    .line 198
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {v1, p3, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z
    :try_end_54
    .catchall {:try_start_16 .. :try_end_54} :catchall_5f

    goto :goto_39

    .line 199
    :cond_55
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 201
    :cond_59
    :try_start_59
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5f

    .line 193
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_66

    :catchall_5f
    move-exception p1

    :try_start_60
    throw p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 203
    :cond_66
    :goto_66
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->clear(Lcom/facebook/common/references/CloseableReference;)V

    .line 204
    new-instance p3, Lkotlin/ranges/IntRange;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast p3, Ljava/lang/Iterable;

    .line 263
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_75
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_91

    move-object p3, p2

    check-cast p3, Lkotlin/collections/IntIterator;

    invoke-virtual {p3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p3

    .line 204
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p3, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z

    goto :goto_75

    :cond_91
    return-void
.end method

.method private final set(Lcom/facebook/common/references/CloseableReference;Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 223
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 224
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_26
    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    .line 109
    invoke-virtual {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->release()V

    goto :goto_11

    .line 110
    :cond_21
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    return-void
.end method

.method public compressToFps(I)V
    .registers 6

    .line 97
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    mul-int v0, v0, v1

    .line 99
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fpsCompressor:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

    .line 101
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result v3

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 99
    invoke-virtual {v1, v0, v2, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->calculateReducedIndexes(III)Ljava/util/Map;

    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    .line 104
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->renderableFrameIndexes:Ljava/util/Set;

    return-void
.end method

.method public getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    return-object v0
.end method

.method public getFrame(III)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    .registers 8

    .line 58
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 60
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 62
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isFrameAvailable()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    if-eqz v0, :cond_48

    .line 65
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->thresholdFrame:I

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->isTargetAhead(III)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 67
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames(II)V

    .line 69
    :cond_38
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    sget-object p3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-direct {p1, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V

    return-object p1

    .line 72
    :cond_48
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames(II)V

    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestToRender(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    move-result-object p1

    return-object p1

    .line 58
    :cond_50
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestToRender(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader$DefaultImpls;->onStop(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;)V

    return-void
.end method

.method public prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onAnimationLoaded"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames(II)V

    .line 92
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader.BufferFrame (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader$BufferFrame)
.class final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
.super Ljava/lang/Object;
.source "BufferFrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferFrame"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;",
        "",
        "bitmapRef",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "(Lcom/facebook/common/references/CloseableReference;)V",
        "getBitmapRef",
        "()Lcom/facebook/common/references/CloseableReference;",
        "isUpdatingFrame",
        "",
        "()Z",
        "setUpdatingFrame",
        "(Z)V",
        "isFrameAvailable",
        "release",
        "",
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


# instance fields
.field private final bitmapRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private isUpdatingFrame:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bitmapRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lcom/facebook/common/references/CloseableReference;

    return-void
.end method


# virtual methods
.method public final getBitmapRef()Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lcom/facebook/common/references/CloseableReference;

    return-object v0
.end method

.method public final isFrameAvailable()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isUpdatingFrame:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final isUpdatingFrame()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isUpdatingFrame:Z

    return v0
.end method

.method public final release()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method public final setUpdatingFrame(Z)V
    .registers 2

    .line 234
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isUpdatingFrame:Z

    return-void
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader.Companion (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader$Companion)
.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;
.super Ljava/lang/Object;
.source "BufferFrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;",
        "",
        "<init>",
        "()V",
        "THRESHOLD_PERCENTAGE",
        "",
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

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader$$ExternalSyntheticLambda0 (com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.BufferFrameLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;

    iput p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;

    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->$r8$lambda$-nbFvRJxcKEPx1PM62JX2o1fhSY(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V

    return-void
.end method
