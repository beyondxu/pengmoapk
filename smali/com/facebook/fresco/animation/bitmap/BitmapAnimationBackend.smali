###### Class com.facebook.fresco.animation.bitmap.BitmapAnimationBackend (com.facebook.fresco.animation.bitmap.BitmapAnimationBackend)
.class public final Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationBackend;
.implements Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0018\u0000 X2\u00020\u00012\u00020\u0002:\u0003VWXBO\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010+\u001a\u00020,2\u0008\u0010\'\u001a\u0004\u0018\u00010(J\u0008\u0010-\u001a\u00020 H\u0016J\u0010\u0010.\u001a\u00020 2\u0006\u0010/\u001a\u00020 H\u0016J\u0008\u00100\u001a\u00020 H\u0016J\u0008\u00101\u001a\u00020 H\u0016J\u0008\u00102\u001a\u00020 H\u0016J\u0008\u00103\u001a\u00020 H\u0016J \u00104\u001a\u00020\u000c2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u0010/\u001a\u00020 H\u0016J \u00109\u001a\u00020\u000c2\u0006\u00107\u001a\u0002082\u0006\u0010/\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0002J\u0012\u0010;\u001a\u00020,2\u0008\u0008\u0001\u0010<\u001a\u00020 H\u0016J\u0012\u0010=\u001a\u00020,2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0012\u0010@\u001a\u00020,2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010A\u001a\u00020 H\u0016J\u0008\u0010B\u001a\u00020 H\u0016J\u0008\u0010C\u001a\u00020 H\u0016J\u0008\u0010D\u001a\u00020,H\u0016J\u0008\u0010E\u001a\u00020,H\u0016J\u0008\u0010F\u001a\u00020,H\u0016J\u0012\u0010G\u001a\u00020,2\u0008\u0010H\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010I\u001a\u00020,H\u0002J \u0010J\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020 2\u000e\u0010K\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010LH\u0002J(\u0010N\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020 2\u0006\u0010O\u001a\u00020M2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020QH\u0002J \u0010S\u001a\u00020,2\u0006\u0010/\u001a\u00020 2\u0006\u0010O\u001a\u00020M2\u0006\u00107\u001a\u000208H\u0002J0\u0010T\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020 2\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010L2\u0006\u00107\u001a\u0002082\u0006\u0010:\u001a\u00020 H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapFrameCache",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "isNewRenderImplementation",
        "",
        "bitmapFramePreparationStrategy",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
        "bitmapFramePreparer",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
        "roundingOptions",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "<init>",
        "(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V",
        "cornerRadii",
        "",
        "getCornerRadii",
        "()[F",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "paint",
        "Landroid/graphics/Paint;",
        "bounds",
        "Landroid/graphics/Rect;",
        "bitmapWidth",
        "",
        "bitmapHeight",
        "path",
        "Landroid/graphics/Path;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "pathFrameNumber",
        "frameListener",
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;",
        "animationListener",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;",
        "setFrameListener",
        "",
        "getFrameCount",
        "getFrameDurationMs",
        "frameNumber",
        "width",
        "height",
        "getLoopDurationMs",
        "getLoopCount",
        "drawFrame",
        "parent",
        "Landroid/graphics/drawable/Drawable;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawFrameOrFallback",
        "frameType",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "setBounds",
        "getIntrinsicWidth",
        "getIntrinsicHeight",
        "getSizeInBytes",
        "clear",
        "preloadAnimation",
        "onInactive",
        "setAnimationListener",
        "listener",
        "updateBitmapDimensions",
        "renderFrameInBitmap",
        "targetBitmap",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "updatePath",
        "bitmap",
        "currentBoundsWidth",
        "",
        "currentBoundsHeight",
        "drawBitmap",
        "drawBitmapAndCache",
        "bitmapReference",
        "FrameListener",
        "FrameType",
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
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

.field public static final FRAME_TYPE_CACHED:I = 0x0

.field public static final FRAME_TYPE_CREATED:I = 0x2

.field public static final FRAME_TYPE_FALLBACK:I = 0x3

.field public static final FRAME_TYPE_REUSED:I = 0x1

.field public static final FRAME_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

.field private animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

.field private final bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

.field private final bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bounds:Landroid/graphics/Rect;

.field private final cornerRadii:[F

.field private frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

.field private final isNewRenderImplementation:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private pathFrameNumber:I

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;


# direct methods
.method public static synthetic $r8$lambda$QM3MPtF-kjx2B7OQ_Y5ADx2p9HU(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->preloadAnimation$lambda$2(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fnC-_7RYJSvWlD4WMf4L9CpXgtA(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->preloadAnimation$lambda$1(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->Companion:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

    .line 394
    const-class v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V
    .registers 10

    const-string v0, "platformBitmapFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationInformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 43
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 44
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 45
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 46
    iput-boolean p5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 47
    iput-object p6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 48
    iput-object p7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    if-eqz p8, :cond_46

    .line 54
    invoke-virtual {p8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadius()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_35

    .line 59
    invoke-virtual {p8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadii()[F

    move-result-object p1

    goto :goto_47

    :cond_35
    const/16 p1, 0x8

    .line 55
    new-array p2, p1, [F

    .line 56
    invoke-virtual {p8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadius()F

    move-result p3

    const/4 p6, 0x6

    const/4 p7, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static/range {p2 .. p7}, Lkotlin/collections/ArraysKt;->fill$default([FFIIILjava/lang/Object;)V

    move-object p1, p2

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    .line 53
    :goto_47
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    .line 100
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 107
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 108
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    const/4 p1, -0x1

    .line 109
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    .line 115
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updateBitmapDimensions()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 21

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_b

    :cond_9
    move-object/from16 v9, p8

    :goto_b
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 41
    invoke-direct/range {v1 .. v9}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V

    return-void
.end method

.method private final drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .registers 7

    .line 340
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 343
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 346
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 345
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updatePath(ILandroid/graphics/Bitmap;FF)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 347
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_23
    const/4 p1, 0x0

    .line 349
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    if-eqz p2, :cond_2c

    .line 372
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 376
    :cond_9
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    const/4 p3, 0x3

    if-eq p4, p3, :cond_23

    .line 380
    iget-boolean p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-nez p3, :cond_23

    .line 381
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {p3, p1, p2, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->onFrameRendered(ILcom/facebook/common/references/CloseableReference;I)V

    .line 383
    :cond_23
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    if-eqz p2, :cond_2a

    invoke-interface {p2, p0, p1, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onFrameDrawn(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;II)V

    :cond_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1
.end method

.method private final drawFrameOrFallback(Landroid/graphics/Canvas;II)Z
    .registers 13

    const/4 v0, 0x0

    .line 162
    :try_start_1
    iget-boolean v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    .line 164
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz p3, :cond_18

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-interface {p3, p2, v1, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->getBitmapFrame(III)Lcom/facebook/common/references/CloseableReference;

    move-result-object p3
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_c1

    goto :goto_19

    :cond_18
    move-object p3, v0

    :goto_19
    if-eqz p3, :cond_33

    .line 166
    :try_start_1b
    invoke-virtual {p3}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 167
    invoke-virtual {p3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, v0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_46

    .line 214
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v3

    .line 172
    :cond_33
    :try_start_33
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz p2, :cond_42

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    invoke-interface {p2, v1, p1, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(IILkotlin/jvm/functions/Function0;)V
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_46

    .line 214
    :cond_42
    invoke-static {p3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v2

    :catchall_46
    move-exception p1

    move-object v0, p3

    goto/16 :goto_c2

    :cond_4a
    const/4 v1, -0x1

    if-eqz p3, :cond_a9

    const/4 v4, 0x2

    if-eq p3, v3, :cond_8f

    const/4 v5, 0x3

    if-eq p3, v4, :cond_65

    if-eq p3, v5, :cond_59

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v2

    .line 208
    :cond_59
    :try_start_59
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getFallbackFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 209
    invoke-direct {p0, p2, v0, p1, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_c1

    const/4 v3, -0x1

    goto :goto_b3

    .line 194
    :cond_65
    :try_start_65
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    iget-object v8, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3, v6, v7, v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_71} :catch_81
    .catchall {:try_start_65 .. :try_end_71} :catchall_c1

    .line 203
    :try_start_71
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->renderFrameInBitmap(ILcom/facebook/common/references/CloseableReference;)Z

    move-result p3

    if-eqz p3, :cond_7e

    .line 204
    invoke-direct {p0, p2, v0, p1, v4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_7e

    const/4 v2, 0x1

    :cond_7e
    move p3, v2

    const/4 v3, 0x3

    goto :goto_b3

    :catch_81
    move-exception p1

    .line 198
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->TAG:Ljava/lang/Class;

    const-string p3, "Failed to create frame bitmap"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2, p3, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_c1

    .line 214
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v2

    .line 184
    :cond_8f
    :try_start_8f
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    iget v5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    invoke-interface {p3, p2, v5, v6}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getBitmapToReuseForFrame(III)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 187
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->renderFrameInBitmap(ILcom/facebook/common/references/CloseableReference;)Z

    move-result p3

    if-eqz p3, :cond_a6

    .line 188
    invoke-direct {p0, p2, v0, p1, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_a6

    const/4 v2, 0x1

    :cond_a6
    move p3, v2

    const/4 v3, 0x2

    goto :goto_b3

    .line 178
    :cond_a9
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getCachedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 179
    invoke-direct {p0, p2, v0, p1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_b3
    .catchall {:try_start_8f .. :try_end_b3} :catchall_c1

    .line 214
    :goto_b3
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    if-nez p3, :cond_c0

    if-ne v3, v1, :cond_bb

    goto :goto_c0

    .line 219
    :cond_bb
    invoke-direct {p0, p1, p2, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawFrameOrFallback(Landroid/graphics/Canvas;II)Z

    move-result p1

    return p1

    :cond_c0
    :goto_c0
    return p3

    :catchall_c1
    move-exception p1

    .line 214
    :goto_c2
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1
.end method

.method private static final preloadAnimation$lambda$1(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;->onAnimationLoaded()V

    .line 256
    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final preloadAnimation$lambda$2(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;->onAnimationLoaded()V

    .line 261
    :cond_d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final renderFrameInBitmap(ILcom/facebook/common/references/CloseableReference;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_20

    .line 302
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_20

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 308
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    :cond_1f
    return p1

    :cond_20
    :goto_20
    const/4 p1, 0x0

    return p1
.end method

.method private final updateBitmapDimensions()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 281
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 283
    :cond_17
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    if-ne v0, v1, :cond_2b

    .line 285
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_29
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    :cond_2b
    return-void
.end method

.method private final updatePath(ILandroid/graphics/Bitmap;FF)Z
    .registers 11

    .line 319
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_6
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_c

    return v1

    .line 326
    :cond_c
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 327
    new-instance p2, Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {p2, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 328
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 329
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, p2, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 330
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 331
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 332
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 333
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 332
    invoke-virtual {p2, v0, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 335
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    return v1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->clearFrames()V

    :cond_b
    return-void

    .line 247
    :cond_c
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->clear()V

    return-void
.end method

.method public drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .registers 12

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "canvas"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    if-eqz p1, :cond_11

    invoke-interface {p1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onDrawFrameStart(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    :cond_11
    const/4 p1, 0x0

    .line 137
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawFrameOrFallback(Landroid/graphics/Canvas;II)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 141
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    if-eqz p2, :cond_1f

    invoke-interface {p2, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onFrameDropped(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 145
    :cond_1f
    iget-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-nez p2, :cond_38

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    if-eqz v1, :cond_38

    .line 146
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_38

    .line 147
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    move-object v3, p0

    check-cast v3, Lcom/facebook/fresco/animation/backend/AnimationBackend;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v4, p3

    .line 146
    invoke-static/range {v0 .. v7}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->prepareFrames$default(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_38
    return p1
.end method

.method public final getCornerRadii()[F
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    return-object v0
.end method

.method public getFrameCount()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameDurationMs(I)I
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    move-result p1

    return p1
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getLoopDurationMs()I
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    move-result v0

    return v0
.end method

.method public getSizeInBytes()I
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getSizeInBytes()I

    move-result v0

    return v0
.end method

.method public height()I
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    move-result v0

    return v0
.end method

.method public onInactive()V
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-eqz v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->onStop()V

    :cond_b
    return-void

    .line 269
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->clear()V

    return-void
.end method

.method public preloadAnimation()V
    .registers 8

    .line 252
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    if-nez v0, :cond_1b

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    if-eqz v2, :cond_1b

    .line 253
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v1, :cond_33

    .line 254
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    move-object v4, p0

    check-cast v4, Lcom/facebook/fresco/animation/backend/AnimationBackend;

    .line 253
    new-instance v6, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V

    return-void

    .line 258
    :cond_1b
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    if-eqz v0, :cond_33

    .line 259
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    move-result v2

    .line 258
    new-instance v3, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(IILkotlin/jvm/functions/Function0;)V

    :cond_33
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updateBitmapDimensions()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setFrameListener(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    return-void
.end method

.method public width()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    move-result v0

    return v0
.end method

###### Class com.facebook.fresco.animation.bitmap.BitmapAnimationBackend.Companion (com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$Companion)
.class public final Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;",
        "",
        "<init>",
        "()V",
        "FRAME_TYPE_UNKNOWN",
        "",
        "FRAME_TYPE_CACHED",
        "FRAME_TYPE_REUSED",
        "FRAME_TYPE_CREATED",
        "FRAME_TYPE_FALLBACK",
        "TAG",
        "Ljava/lang/Class;",
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
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

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.fresco.animation.bitmap.BitmapAnimationBackend.FrameListener (com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$FrameListener)
.class public interface abstract Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;",
        "",
        "onDrawFrameStart",
        "",
        "backend",
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
        "frameNumber",
        "",
        "onFrameDrawn",
        "frameType",
        "onFrameDropped",
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


# virtual methods
.method public abstract onDrawFrameStart(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V
.end method

.method public abstract onFrameDrawn(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;II)V
.end method

.method public abstract onFrameDropped(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V
.end method

###### Class com.facebook.fresco.animation.bitmap.BitmapAnimationBackend.FrameType (com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$FrameType)
.class public interface abstract annotation Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FrameType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;",
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

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation

###### Class com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$$ExternalSyntheticLambda0 (com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->$r8$lambda$fnC-_7RYJSvWlD4WMf4L9CpXgtA(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$$ExternalSyntheticLambda1 (com.facebook.fresco.animation.bitmap.BitmapAnimationBackend$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->$r8$lambda$QM3MPtF-kjx2B7OQ_Y5ADx2p9HU(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
