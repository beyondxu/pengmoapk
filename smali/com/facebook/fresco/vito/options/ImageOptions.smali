###### Class com.facebook.fresco.vito.options.ImageOptions (com.facebook.fresco.vito.options.ImageOptions)
.class public final Lcom/facebook/fresco/vito/options/ImageOptions;
.super Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/ImageOptions$Builder;,
        Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 W2\u00020\u0001:\u0002VWB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010H\u001a\u00020\u0003J\u0006\u0010I\u001a\u00020\u001bJ\u0006\u0010J\u001a\u00020\u001bJ\u0006\u0010K\u001a\u00020\u001bJ\u000e\u0010L\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020\u0000J\u0013\u0010N\u001a\u00020\u001b2\u0008\u0010O\u001a\u0004\u0018\u00010PH\u0096\u0002J\u0008\u0010Q\u001a\u00020\u0007H\u0016J\u0008\u0010R\u001a\u00020SH\u0016J\u0008\u0010T\u001a\u00020UH\u0014R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078GX\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000b\u001a\u00020\u00078GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00078GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\rR\u0013\u0010 \u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0011R\u0013\u0010\"\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0015R\u001a\u0010$\u001a\u0004\u0018\u00010\u00078GX\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008%\u0010\tR\u0016\u0010&\u001a\u00020\u00078GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\rR\u0013\u0010(\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0015R\u0013\u0010*\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0019R\u0013\u0010,\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0011R\u0011\u0010.\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001dR\u0013\u00100\u001a\u0004\u0018\u000101\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0016\u00104\u001a\u00020\u00078GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\rR\u0013\u00106\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\u0011R\u0013\u00108\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u0011R\u000e\u0010:\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010;\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\rR\u000e\u0010=\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010?\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010\u001dR\u0013\u0010@\u001a\u0004\u0018\u00010A\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0011\u0010D\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u001dR\u0011\u0010F\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010\u001d\u00a8\u0006X"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions;",
        "builder",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        "<init>",
        "(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V",
        "placeholderColor",
        "",
        "getPlaceholderColor",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "placeholderRes",
        "getPlaceholderRes",
        "()I",
        "placeholderDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getPlaceholderDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "placeholderScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "getPlaceholderScaleType",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "placeholderFocusPoint",
        "Landroid/graphics/PointF;",
        "getPlaceholderFocusPoint",
        "()Landroid/graphics/PointF;",
        "placeholderApplyRoundingOptions",
        "",
        "getPlaceholderApplyRoundingOptions",
        "()Z",
        "progressRes",
        "getProgressRes",
        "progressDrawable",
        "getProgressDrawable",
        "progressScaleType",
        "getProgressScaleType",
        "errorColor",
        "getErrorColor",
        "errorRes",
        "getErrorRes",
        "errorScaleType",
        "getErrorScaleType",
        "errorFocusPoint",
        "getErrorFocusPoint",
        "errorDrawable",
        "getErrorDrawable",
        "errorApplyRoundingOptions",
        "getErrorApplyRoundingOptions",
        "actualImageColorFilter",
        "Landroid/graphics/ColorFilter;",
        "getActualImageColorFilter",
        "()Landroid/graphics/ColorFilter;",
        "overlayRes",
        "getOverlayRes",
        "overlayDrawable",
        "getOverlayDrawable",
        "backgroundDrawable",
        "getBackgroundDrawable",
        "_resizeToViewport",
        "fadeDurationMs",
        "getFadeDurationMs",
        "_autoPlay",
        "_autoStop",
        "isPerfMediaRemountInstrumentationFix",
        "customDrawableFactory",
        "Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "getCustomDrawableFactory",
        "()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "experimentalDynamicSize",
        "getExperimentalDynamicSize",
        "experimentalDynamicSizeWithCacheFallback",
        "getExperimentalDynamicSizeWithCacheFallback",
        "extend",
        "shouldAutoPlay",
        "shouldAutoStop",
        "shouldResizeToViewport",
        "equalsForActualImage",
        "other",
        "equals",
        "otherObject",
        "",
        "hashCode",
        "toString",
        "",
        "toStringHelper",
        "Lcom/facebook/common/internal/Objects$ToStringHelper;",
        "Builder",
        "Companion",
        "options_release"
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
.field public static final Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

.field private static defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;


# instance fields
.field private final _autoPlay:Z

.field private final _autoStop:Z

.field private final _resizeToViewport:Z

.field private final actualImageColorFilter:Landroid/graphics/ColorFilter;

.field private final backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

.field private final errorApplyRoundingOptions:Z

.field private final errorColor:Ljava/lang/Integer;

.field private final errorDrawable:Landroid/graphics/drawable/Drawable;

.field private final errorFocusPoint:Landroid/graphics/PointF;

.field private final errorRes:I

.field private final errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final experimentalDynamicSize:Z

.field private final experimentalDynamicSizeWithCacheFallback:Z

.field private final fadeDurationMs:I

.field private final isPerfMediaRemountInstrumentationFix:Z

.field private final overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final overlayRes:I

.field private final placeholderApplyRoundingOptions:Z

.field private final placeholderColor:Ljava/lang/Integer;

.field private final placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private final placeholderFocusPoint:Landroid/graphics/PointF;

.field private final placeholderRes:I

.field private final placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final progressDrawable:Landroid/graphics/drawable/Drawable;

.field private final progressRes:I

.field private final progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 473
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    invoke-direct {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;-><init>()V

    .line 474
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->placeholderScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->progressScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    .line 476
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->errorScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    .line 477
    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->priority(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 478
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V

    .line 22
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderColor$options_release()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 24
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderFocusPoint$options_release()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderApplyRoundingOptions$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 30
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 31
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 35
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorColor$options_release()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 37
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 38
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorFocusPoint$options_release()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorApplyRoundingOptions$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 43
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_actualImageColorFilter$options_release()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_overlayRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 47
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_overlayDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_backgroundDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_resizeToViewport$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 53
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_fadeDurationMs$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 54
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_autoPlay$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 55
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_autoStop$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 56
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_perfMediaRemountInstrumentationFix$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 57
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_customDrawableFactory$options_release()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_experimentalDynamicSize$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->experimentalDynamicSize:Z

    .line 60
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_experimentalDynamicSizeWithCacheFallback$options_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->experimentalDynamicSizeWithCacheFallback:Z

    return-void
.end method

.method public static final synthetic access$getDefaultImageOptions$cp()Lcom/facebook/fresco/vito/options/ImageOptions;
    .registers 1

    .line 19
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    return-object v0
.end method

.method public static final synthetic access$setDefaultImageOptions$cp(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .registers 1

    .line 19
    sput-object p0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    return-void
.end method

.method public static final create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final defaults()Lcom/facebook/fresco/vito/options/ImageOptions;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_1b0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_1b0

    .line 103
    :cond_17
    check-cast p1, Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 104
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    if-eqz v1, :cond_ec

    .line 105
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 106
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    if-ne v1, v2, :cond_eb

    .line 107
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 108
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 109
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 110
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    if-ne v1, v2, :cond_eb

    .line 111
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 112
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    if-ne v1, v2, :cond_eb

    .line 113
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 114
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 115
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    if-ne v1, v2, :cond_eb

    .line 116
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v1, v2, :cond_eb

    .line 117
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 118
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 119
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    if-ne v1, v2, :cond_eb

    .line 120
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 121
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 122
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 123
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v1, v2, :cond_eb

    .line 124
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    if-ne v1, v2, :cond_eb

    .line 125
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    if-ne v1, v2, :cond_eb

    .line 126
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    if-ne v1, v2, :cond_eb

    .line 127
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 128
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 129
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    if-eq v1, v2, :cond_1a9

    :cond_eb
    return v0

    .line 133
    :cond_ec
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 134
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    if-ne v1, v2, :cond_1b0

    .line 135
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 136
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 137
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 138
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    if-ne v1, v2, :cond_1b0

    .line 139
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 140
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    if-ne v1, v2, :cond_1b0

    .line 141
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 142
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 143
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    if-ne v1, v2, :cond_1b0

    .line 144
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v1, v2, :cond_1b0

    .line 145
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 146
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 147
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    if-ne v1, v2, :cond_1b0

    .line 148
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_1b0

    .line 149
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v1, v2, :cond_1b0

    .line 150
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 151
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v1, v2, :cond_1b0

    .line 152
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    if-ne v1, v2, :cond_1b0

    .line 153
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    if-ne v1, v2, :cond_1b0

    .line 154
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    if-ne v1, v2, :cond_1b0

    .line 155
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 156
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_1a9

    goto :goto_1b0

    .line 160
    :cond_1a9
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    move-result p1

    return p1

    :cond_1b0
    :goto_1b0
    return v0
.end method

.method public final equalsForActualImage(Lcom/facebook/fresco/vito/options/ImageOptions;)Z
    .registers 5

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_9

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 75
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v0, v2, :cond_54

    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 77
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 78
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 79
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v0, v2, :cond_54

    .line 80
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    if-ne v0, v2, :cond_54

    .line 81
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    if-ne v0, v2, :cond_54

    .line 82
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 83
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    if-eq v0, v2, :cond_8a

    :cond_54
    return v1

    .line 87
    :cond_55
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v0, v2, :cond_91

    .line 88
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 89
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 90
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 91
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v0, v2, :cond_91

    .line 92
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_91

    .line 96
    :cond_8a
    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    move-result p1

    return p1

    :cond_91
    :goto_91
    return v1
.end method

.method public final extend()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 2

    .line 62
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getActualImageColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getCustomDrawableFactory()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-object v0
.end method

.method public final getErrorApplyRoundingOptions()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    return v0
.end method

.method public final getErrorColor()Ljava/lang/Integer;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getErrorFocusPoint()Landroid/graphics/PointF;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getErrorRes()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    return v0
.end method

.method public final getErrorScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getExperimentalDynamicSize()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->experimentalDynamicSize:Z

    return v0
.end method

.method public final getExperimentalDynamicSizeWithCacheFallback()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->experimentalDynamicSizeWithCacheFallback:Z

    return v0
.end method

.method public final getFadeDurationMs()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    return v0
.end method

.method public final getOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getOverlayRes()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    return v0
.end method

.method public final getPlaceholderApplyRoundingOptions()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    return v0
.end method

.method public final getPlaceholderColor()Ljava/lang/Integer;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderFocusPoint()Landroid/graphics/PointF;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getPlaceholderRes()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    return v0
.end method

.method public final getPlaceholderScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getProgressRes()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    return v0
.end method

.method public final getProgressScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 164
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 165
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 166
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 168
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x0

    :goto_7b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 178
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_91

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    goto :goto_92

    :cond_91
    const/4 v1, 0x0

    :goto_92
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    goto :goto_9f

    :cond_9e
    const/4 v1, 0x0

    :goto_9f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 180
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ab

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    :goto_ac
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v1, :cond_b8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b9

    :cond_b8
    const/4 v1, 0x0

    :goto_b9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 182
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_c5

    invoke-virtual {v1}, Landroid/graphics/ColorFilter;->hashCode()I

    move-result v1

    goto :goto_c6

    :cond_c5
    const/4 v1, 0x0

    :goto_c6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 183
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_ef
    add-int/2addr v0, v2

    return v0
.end method

.method public final isPerfMediaRemountInstrumentationFix()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    return v0
.end method

.method public final shouldAutoPlay()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    return v0
.end method

.method public final shouldAutoStop()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    return v0
.end method

.method public final shouldResizeToViewport()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 193
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImageOptions{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;
    .registers 4

    .line 196
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 197
    const-string v1, "placeholderColor"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 198
    const-string v1, "placeholderRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 199
    const-string v1, "placeholderDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 200
    const-string v1, "placeholderScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 201
    const-string v1, "placeholderFocusPoint"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 202
    const-string v1, "placeholderApplyRoundingOptions"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 203
    const-string v1, "progressRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 204
    const-string v1, "progressDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 205
    const-string v1, "progressScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 206
    const-string v1, "errorColor"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 207
    const-string v1, "errorRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 208
    const-string v1, "errorScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 209
    const-string v1, "errorFocusPoint"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 210
    const-string v1, "errorDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 211
    const-string v1, "errorApplyRoundingOptions"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 212
    const-string v1, "actualImageColorFilter"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 213
    const-string v1, "overlayRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 214
    const-string v1, "overlayDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 215
    const-string v1, "backgroundDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 216
    const-string v1, "resizeToViewport"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 217
    const-string v1, "autoPlay"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 218
    const-string v1, "autoStop"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 219
    const-string v1, "mPerfMediaRemountInstrumentationFix"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 220
    const-string v1, "fadeDurationMs"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 221
    const-string v1, "customDrawableFactory"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "add(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.fresco.vito.options.ImageOptions.Builder (com.facebook.fresco.vito.options.ImageOptions$Builder)
.class public final Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
.super Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n1#1,492:1\n466#1,2:493\n466#1,2:495\n466#1,2:497\n466#1,2:499\n466#1,2:501\n466#1,2:503\n466#1,2:505\n466#1,2:507\n466#1,2:509\n466#1,2:511\n466#1,2:513\n466#1,2:515\n466#1,2:517\n466#1,2:519\n466#1,2:521\n466#1,2:523\n466#1,2:525\n466#1,2:527\n466#1,2:529\n466#1,2:531\n466#1,2:533\n466#1,2:535\n466#1,2:537\n466#1,2:539\n466#1,2:541\n466#1,2:543\n466#1,2:545\n466#1,2:547\n466#1,2:549\n466#1,2:551\n466#1,2:553\n*S KotlinDebug\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n288#1:493,2\n297#1:495,2\n304#1:497,2\n310#1:499,2\n319#1:501,2\n326#1:503,2\n330#1:505,2\n335#1:507,2\n339#1:509,2\n345#1:511,2\n351#1:513,2\n355#1:515,2\n359#1:517,2\n365#1:519,2\n369#1:521,2\n372#1:523,2\n377#1:525,2\n382#1:527,2\n387#1:529,2\n391#1:531,2\n396#1:533,2\n401#1:535,2\n403#1:537,2\n412#1:539,2\n419#1:541,2\n421#1:543,2\n432#1:545,2\n441#1:547,2\n450#1:549,2\n454#1:551,2\n459#1:553,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008/\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0010\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0010\u0010p\u001a\u00020\u00002\u0008\u0010p\u001a\u0004\u0018\u00010\u0014J\u001a\u0010p\u001a\u00020\u00002\u0008\u0010p\u001a\u0004\u0018\u00010\u00142\u0008\u0010q\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010r\u001a\u00020\u00002\u0008\u0008\u0001\u0010r\u001a\u00020\u0008J\u0010\u0010s\u001a\u00020\u00002\u0008\u0008\u0001\u0010s\u001a\u00020\u0008J\u001a\u0010s\u001a\u00020\u00002\u0008\u0008\u0001\u0010s\u001a\u00020\u00082\u0008\u0010q\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010q\u001a\u00020\u00002\u0008\u0010q\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010t\u001a\u00020\u00002\u0008\u0010t\u001a\u0004\u0018\u00010 J\u000e\u0010u\u001a\u00020\u00002\u0006\u0010u\u001a\u00020&J\u0010\u0010v\u001a\u00020\u00002\u0008\u0008\u0001\u0010v\u001a\u00020\u0008J\u0010\u0010w\u001a\u00020\u00002\u0008\u0008\u0001\u0010w\u001a\u00020\u0008J\u0010\u0010x\u001a\u00020\u00002\u0008\u0010x\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010y\u001a\u00020\u00002\u0008\u0010y\u001a\u0004\u0018\u00010 J\u0010\u0010z\u001a\u00020\u00002\u0008\u0010z\u001a\u0004\u0018\u00010\u0014J\u000e\u0010{\u001a\u00020\u00002\u0006\u0010{\u001a\u00020&J\u0010\u0010|\u001a\u00020\u00002\u0008\u0010|\u001a\u0004\u0018\u00010\u0014J\u001a\u0010|\u001a\u00020\u00002\u0008\u0010|\u001a\u0004\u0018\u00010\u00142\u0008\u0010}\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010~\u001a\u00020\u00002\u0008\u0008\u0001\u0010~\u001a\u00020\u0008J\u001a\u0010~\u001a\u00020\u00002\u0008\u0008\u0001\u0010~\u001a\u00020\u00082\u0008\u0010}\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010}\u001a\u00020\u00002\u0008\u0010}\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010\u007f\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u0008J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0014J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0014J\u0012\u0010\u0084\u0001\u001a\u00020\u00002\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010GJ\u0010\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020&J\u0010\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020&J\u0010\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020&J\u0010\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020&J\u0010\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\u0008J\u0012\u0010\u008c\u0001\u001a\u00020\u00002\t\u0010\u008d\u0001\u001a\u0004\u0018\u00010eJ\u0010\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020&J\u0010\u0010\u0090\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020&J\t\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\'\u0010\u0093\u0001\u001a\u00020\u00002\u001b\u0010\u0094\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0012\u0005\u0012\u00030\u0096\u00010\u0095\u0001\u00a2\u0006\u0003\u0008\u0097\u0001H\u0082\u0008R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001e\u0010+\u001a\u00020\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0010\"\u0004\u0008-\u0010\u0012R\u001c\u0010.\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0016\"\u0004\u00080\u0010\u0018R\u001c\u00101\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u001c\"\u0004\u00083\u0010\u001eR\"\u00104\u001a\u0004\u0018\u00010\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u00085\u0010\n\"\u0004\u00086\u0010\u000cR\u001e\u00107\u001a\u00020\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0010\"\u0004\u00089\u0010\u0012R\u001c\u0010:\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u001c\"\u0004\u0008<\u0010\u001eR\u001c\u0010=\u001a\u0004\u0018\u00010 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\"\"\u0004\u0008?\u0010$R\u001c\u0010@\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u0016\"\u0004\u0008B\u0010\u0018R\u001a\u0010C\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010(\"\u0004\u0008E\u0010*R\u001c\u0010F\u001a\u0004\u0018\u00010GX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001e\u0010L\u001a\u00020\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\u0010\"\u0004\u0008N\u0010\u0012R\u001c\u0010O\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010\u0016\"\u0004\u0008Q\u0010\u0018R\u001c\u0010R\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010\u0016\"\u0004\u0008T\u0010\u0018R\u001a\u0010U\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010(\"\u0004\u0008W\u0010*R\u001a\u0010X\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010(\"\u0004\u0008Z\u0010*R\u001a\u0010[\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010(\"\u0004\u0008]\u0010*R\u001a\u0010^\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010(\"\u0004\u0008`\u0010*R\u001a\u0010a\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u0010\"\u0004\u0008c\u0010\u0012R\u001c\u0010d\u001a\u0004\u0018\u00010eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\u001a\u0010j\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010(\"\u0004\u0008l\u0010*R\u001a\u0010m\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010(\"\u0004\u0008o\u0010*\u00a8\u0006\u0098\u0001"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "<init>",
        "()V",
        "defaultOptions",
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "(Lcom/facebook/fresco/vito/options/ImageOptions;)V",
        "_placeholderColor",
        "",
        "get_placeholderColor$options_release",
        "()Ljava/lang/Integer;",
        "set_placeholderColor$options_release",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "_placeholderRes",
        "get_placeholderRes$options_release",
        "()I",
        "set_placeholderRes$options_release",
        "(I)V",
        "_placeholderDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "get_placeholderDrawable$options_release",
        "()Landroid/graphics/drawable/Drawable;",
        "set_placeholderDrawable$options_release",
        "(Landroid/graphics/drawable/Drawable;)V",
        "_placeholderScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "get_placeholderScaleType$options_release",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "set_placeholderScaleType$options_release",
        "(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V",
        "_placeholderFocusPoint",
        "Landroid/graphics/PointF;",
        "get_placeholderFocusPoint$options_release",
        "()Landroid/graphics/PointF;",
        "set_placeholderFocusPoint$options_release",
        "(Landroid/graphics/PointF;)V",
        "_placeholderApplyRoundingOptions",
        "",
        "get_placeholderApplyRoundingOptions$options_release",
        "()Z",
        "set_placeholderApplyRoundingOptions$options_release",
        "(Z)V",
        "_progressRes",
        "get_progressRes$options_release",
        "set_progressRes$options_release",
        "_progressDrawable",
        "get_progressDrawable$options_release",
        "set_progressDrawable$options_release",
        "_progressScaleType",
        "get_progressScaleType$options_release",
        "set_progressScaleType$options_release",
        "_errorColor",
        "get_errorColor$options_release",
        "set_errorColor$options_release",
        "_errorRes",
        "get_errorRes$options_release",
        "set_errorRes$options_release",
        "_errorScaleType",
        "get_errorScaleType$options_release",
        "set_errorScaleType$options_release",
        "_errorFocusPoint",
        "get_errorFocusPoint$options_release",
        "set_errorFocusPoint$options_release",
        "_errorDrawable",
        "get_errorDrawable$options_release",
        "set_errorDrawable$options_release",
        "_errorApplyRoundingOptions",
        "get_errorApplyRoundingOptions$options_release",
        "set_errorApplyRoundingOptions$options_release",
        "_actualImageColorFilter",
        "Landroid/graphics/ColorFilter;",
        "get_actualImageColorFilter$options_release",
        "()Landroid/graphics/ColorFilter;",
        "set_actualImageColorFilter$options_release",
        "(Landroid/graphics/ColorFilter;)V",
        "_overlayRes",
        "get_overlayRes$options_release",
        "set_overlayRes$options_release",
        "_overlayDrawable",
        "get_overlayDrawable$options_release",
        "set_overlayDrawable$options_release",
        "_backgroundDrawable",
        "get_backgroundDrawable$options_release",
        "set_backgroundDrawable$options_release",
        "_resizeToViewport",
        "get_resizeToViewport$options_release",
        "set_resizeToViewport$options_release",
        "_autoPlay",
        "get_autoPlay$options_release",
        "set_autoPlay$options_release",
        "_autoStop",
        "get_autoStop$options_release",
        "set_autoStop$options_release",
        "_perfMediaRemountInstrumentationFix",
        "get_perfMediaRemountInstrumentationFix$options_release",
        "set_perfMediaRemountInstrumentationFix$options_release",
        "_fadeDurationMs",
        "get_fadeDurationMs$options_release",
        "set_fadeDurationMs$options_release",
        "_customDrawableFactory",
        "Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "get_customDrawableFactory$options_release",
        "()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "set_customDrawableFactory$options_release",
        "(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)V",
        "_experimentalDynamicSize",
        "get_experimentalDynamicSize$options_release",
        "set_experimentalDynamicSize$options_release",
        "_experimentalDynamicSizeWithCacheFallback",
        "get_experimentalDynamicSizeWithCacheFallback$options_release",
        "set_experimentalDynamicSizeWithCacheFallback$options_release",
        "placeholder",
        "placeholderScaleType",
        "placeholderColor",
        "placeholderRes",
        "placeholderFocusPoint",
        "placeholderApplyRoundingOptions",
        "errorColor",
        "errorRes",
        "errorScaleType",
        "errorFocusPoint",
        "errorDrawable",
        "errorApplyRoundingOptions",
        "progress",
        "progressScaleType",
        "progressRes",
        "overlayRes",
        "overlay",
        "overlayDrawable",
        "background",
        "drawable",
        "colorFilter",
        "autoPlay",
        "autoStop",
        "perfMediaRemountInstrumentationFix",
        "fix",
        "resizeToViewport",
        "fadeDurationMs",
        "fadeInDurationMs",
        "customDrawableFactory",
        "drawableFactory",
        "experimentalDynamicSize",
        "dynamicSize",
        "experimentalDynamicSizeWithCacheFallback",
        "dynamicSizeWithCacheFallback",
        "build",
        "modify",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "options_release"
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
.field private _actualImageColorFilter:Landroid/graphics/ColorFilter;

.field private _autoPlay:Z

.field private _autoStop:Z

.field private _backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private _customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

.field private _errorApplyRoundingOptions:Z

.field private _errorColor:Ljava/lang/Integer;

.field private _errorDrawable:Landroid/graphics/drawable/Drawable;

.field private _errorFocusPoint:Landroid/graphics/PointF;

.field private _errorRes:I

.field private _errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private _experimentalDynamicSize:Z

.field private _experimentalDynamicSizeWithCacheFallback:Z

.field private _fadeDurationMs:I

.field private _overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private _overlayRes:I

.field private _perfMediaRemountInstrumentationFix:Z

.field private _placeholderApplyRoundingOptions:Z

.field private _placeholderColor:Ljava/lang/Integer;

.field private _placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private _placeholderFocusPoint:Landroid/graphics/PointF;

.field private _placeholderRes:I

.field private _placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private _progressDrawable:Landroid/graphics/drawable/Drawable;

.field private _progressRes:I

.field private _progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private _resizeToViewport:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 257
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .registers 3

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 260
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 261
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 262
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 264
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    .line 265
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderApplyRoundingOptions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    .line 266
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 267
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 269
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 270
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 271
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 272
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    .line 273
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorApplyRoundingOptions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    .line 275
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 276
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getOverlayRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 277
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldResizeToViewport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    .line 279
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldAutoPlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    .line 280
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldAutoStop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 281
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getFadeDurationMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    .line 282
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getCustomDrawableFactory()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 283
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getExperimentalDynamicSize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    .line 285
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getExperimentalDynamicSizeWithCacheFallback()Z

    move-result p1

    .line 284
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSizeWithCacheFallback:Z

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;"
        }
    .end annotation

    .line 466
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final autoPlay(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 539
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 412
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    return-object p0
.end method

.method public final autoStop(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 541
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 419
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-object p0
.end method

.method public final background(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 535
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 401
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    return-object v0
.end method

.method public build()Lcom/facebook/fresco/vito/options/ImageOptions;
    .registers 2

    .line 463
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V

    return-object v0
.end method

.method public final colorFilter(Landroid/graphics/ColorFilter;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 537
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 404
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final customDrawableFactory(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 549
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 451
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-object p0
.end method

.method public final errorApplyRoundingOptions(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 519
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 366
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    return-object p0
.end method

.method public final errorColor(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 509
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 341
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final errorDrawable(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 517
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 362
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final errorFocusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 515
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 356
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final errorRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 511
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 347
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 348
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final errorScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 513
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 352
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final experimentalDynamicSize(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 551
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 455
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return-object p0
.end method

.method public final experimentalDynamicSizeWithCacheFallback(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 553
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 460
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSizeWithCacheFallback:Z

    return-object p0
.end method

.method public final fadeDurationMs(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 547
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 442
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    return-object p0
.end method

.method public final get_actualImageColorFilter$options_release()Landroid/graphics/ColorFilter;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final get_autoPlay$options_release()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    return v0
.end method

.method public final get_autoStop$options_release()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return v0
.end method

.method public final get_backgroundDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_customDrawableFactory$options_release()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-object v0
.end method

.method public final get_errorApplyRoundingOptions$options_release()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    return v0
.end method

.method public final get_errorColor$options_release()Ljava/lang/Integer;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final get_errorDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_errorFocusPoint$options_release()Landroid/graphics/PointF;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final get_errorRes$options_release()I
    .registers 2

    .line 236
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    return v0
.end method

.method public final get_errorScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final get_experimentalDynamicSize$options_release()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return v0
.end method

.method public final get_experimentalDynamicSizeWithCacheFallback$options_release()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSizeWithCacheFallback:Z

    return v0
.end method

.method public final get_fadeDurationMs$options_release()I
    .registers 2

    .line 252
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    return v0
.end method

.method public final get_overlayDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_overlayRes$options_release()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    return v0
.end method

.method public final get_perfMediaRemountInstrumentationFix$options_release()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    return v0
.end method

.method public final get_placeholderApplyRoundingOptions$options_release()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    return v0
.end method

.method public final get_placeholderColor$options_release()Ljava/lang/Integer;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final get_placeholderDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_placeholderFocusPoint$options_release()Landroid/graphics/PointF;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final get_placeholderRes$options_release()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return v0
.end method

.method public final get_placeholderScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final get_progressDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_progressRes$options_release()I
    .registers 2

    .line 231
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return v0
.end method

.method public final get_progressScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final get_resizeToViewport$options_release()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    return v0
.end method

.method public final overlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 533
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 397
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 398
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    return-object p0
.end method

.method public final overlayRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 531
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 392
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final perfMediaRemountInstrumentationFix(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 543
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 422
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 493
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 289
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 291
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 4

    .line 495
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 298
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 299
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 301
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-object p0
.end method

.method public final placeholderApplyRoundingOptions(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 507
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 336
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    return-object p0
.end method

.method public final placeholderColor(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 497
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 306
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderFocusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 505
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 331
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final placeholderRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 499
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 311
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 313
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderRes(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 4

    .line 501
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 320
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 321
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 323
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 503
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 327
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final progress(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 521
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 369
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final progress(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 4

    .line 523
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 373
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 374
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final progressRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 525
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 377
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return-object p0
.end method

.method public final progressRes(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 4

    .line 527
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 383
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 384
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final progressScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 529
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 388
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final resizeToViewport(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3

    .line 545
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 433
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    return-object p0
.end method

.method public final set_actualImageColorFilter$options_release(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final set_autoPlay$options_release(Z)V
    .registers 2

    .line 249
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    return-void
.end method

.method public final set_autoStop$options_release(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-void
.end method

.method public final set_backgroundDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_customDrawableFactory$options_release(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-void
.end method

.method public final set_errorApplyRoundingOptions$options_release(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    return-void
.end method

.method public final set_errorColor$options_release(Ljava/lang/Integer;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    return-void
.end method

.method public final set_errorDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_errorFocusPoint$options_release(Landroid/graphics/PointF;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public final set_errorRes$options_release(I)V
    .registers 2

    .line 236
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    return-void
.end method

.method public final set_errorScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final set_experimentalDynamicSize$options_release(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return-void
.end method

.method public final set_experimentalDynamicSizeWithCacheFallback$options_release(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSizeWithCacheFallback:Z

    return-void
.end method

.method public final set_fadeDurationMs$options_release(I)V
    .registers 2

    .line 252
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    return-void
.end method

.method public final set_overlayDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_overlayRes$options_release(I)V
    .registers 2

    .line 243
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    return-void
.end method

.method public final set_perfMediaRemountInstrumentationFix$options_release(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    return-void
.end method

.method public final set_placeholderApplyRoundingOptions$options_release(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    return-void
.end method

.method public final set_placeholderColor$options_release(Ljava/lang/Integer;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    return-void
.end method

.method public final set_placeholderDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_placeholderFocusPoint$options_release(Landroid/graphics/PointF;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public final set_placeholderRes$options_release(I)V
    .registers 2

    .line 225
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-void
.end method

.method public final set_placeholderScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final set_progressDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_progressRes$options_release(I)V
    .registers 2

    .line 231
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return-void
.end method

.method public final set_progressScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final set_resizeToViewport$options_release(Z)V
    .registers 2

    .line 248
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    return-void
.end method

###### Class com.facebook.fresco.vito.options.ImageOptions.Companion (com.facebook.fresco.vito.options.ImageOptions$Companion)
.class public final Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
.super Ljava/lang/Object;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0008\u0010\u000c\u001a\u00020\u000bH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/ImageOptions$Companion;",
        "",
        "<init>",
        "()V",
        "defaultImageOptions",
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "defaults",
        "setDefaults",
        "",
        "imageOptions",
        "extend",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        "create",
        "options_release"
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

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 489
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final defaults()Lcom/facebook/fresco/vito/options/ImageOptions;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 480
    invoke-static {}, Lcom/facebook/fresco/vito/options/ImageOptions;->access$getDefaultImageOptions$cp()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    invoke-direct {v0, p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    return-object v0
.end method

.method public final setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "imageOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-static {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->access$setDefaultImageOptions$cp(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    return-void
.end method
