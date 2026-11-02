###### Class io.dcloud.common.ui.blur.DCBlurDraweeView (io.dcloud.common.ui.blur.DCBlurDraweeView)
.class public Lio/dcloud/common/ui/blur/DCBlurDraweeView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;
    }
.end annotation


# static fields
.field public static final AUTOMATICALLY:Ljava/lang/String; = "automatically"

.field public static final DARK:Ljava/lang/String; = "dark"

.field public static final EXTRALIGHT:Ljava/lang/String; = "extralight"

.field public static final LIGHT:Ljava/lang/String; = "light"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final SEMI_AUTOMATICALLY:Ljava/lang/String; = "semi-automatic"

.field public static final STATIC:Ljava/lang/String; = "static"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private invalidationLoop:Landroid/view/Choreographer$FrameCallback;

.field private isBlur:Z

.field private mAlpha:F

.field private mAttachedToWindow:Z

.field private mBlurEffect:Ljava/lang/String;

.field private mBlurRadius:I

.field private mBlurState:Ljava/lang/String;

.field private mChangeCB:Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;

.field private mCornerRadius:F

.field private mDownscaleFactor:F

.field private mFPS:I

.field private mGravityType:I

.field private mImageView:Landroid/widget/ImageView;

.field private mOverlayColorAlpha:F

.field private mPostTime:J

.field private mRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private postDelayTime:I

.field private postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

.field private removePostDelayed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "DCBlurDraweeView"

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->TAG:Ljava/lang/String;

    const p1, 0x3e4ccccd    # 0.2f

    .line 6
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mDownscaleFactor:F

    const/16 p1, 0xf

    .line 11
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurRadius:I

    const/16 p1, 0x3c

    .line 16
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mFPS:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mCornerRadius:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 26
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mAlpha:F

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    const/16 p1, 0x11

    .line 47
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mGravityType:I

    .line 56
    const-string/jumbo p1, "static"

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    .line 57
    const-string p1, "none"

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurEffect:Ljava/lang/String;

    const-wide/16 v0, 0x5dc

    .line 59
    iput-wide v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mPostTime:J

    .line 101
    new-instance p1, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;

    invoke-direct {p1, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;-><init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidationLoop:Landroid/view/Choreographer$FrameCallback;

    const/16 p1, 0x32

    .line 112
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postDelayTime:I

    .line 113
    new-instance p1, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;

    invoke-direct {p1, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;-><init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

    .line 189
    new-instance p1, Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;

    invoke-direct {p1, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;-><init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->removePostDelayed:Ljava/lang/Runnable;

    const p1, 0x3f19999a    # 0.6f

    .line 307
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mOverlayColorAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6

    .line 308
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 309
    const-string p1, "DCBlurDraweeView"

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->TAG:Ljava/lang/String;

    const p1, 0x3e4ccccd    # 0.2f

    .line 313
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mDownscaleFactor:F

    const/16 p1, 0xf

    .line 318
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurRadius:I

    const/16 p1, 0x3c

    .line 323
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mFPS:I

    const/4 p1, 0x0

    .line 328
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mCornerRadius:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 333
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mAlpha:F

    const/4 p1, 0x0

    .line 352
    iput-boolean p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    const/16 p1, 0x11

    .line 354
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mGravityType:I

    .line 363
    const-string/jumbo p1, "static"

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    .line 364
    const-string p1, "none"

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurEffect:Ljava/lang/String;

    const-wide/16 v0, 0x5dc

    .line 366
    iput-wide v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mPostTime:J

    .line 408
    new-instance p1, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;

    invoke-direct {p1, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;-><init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidationLoop:Landroid/view/Choreographer$FrameCallback;

    const/16 p1, 0x32

    .line 419
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postDelayTime:I

    .line 420
    new-instance p1, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;

    invoke-direct {p1, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;-><init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

    .line 496
    new-instance p1, Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;

    invoke-direct {p1, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;-><init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V

    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->removePostDelayed:Ljava/lang/Runnable;

    const p1, 0x3f19999a    # 0.6f

    .line 614
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mOverlayColorAlpha:F

    .line 615
    iput-boolean p2, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    .line 616
    iput-object p3, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    if-eqz p2, :cond_56

    .line 618
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->initImageView()V

    :cond_56
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mFPS:I

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postDelayTime:I

    return p0
.end method

.method static synthetic access$300(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method private getActivityView()Landroid/view/View;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_16

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDownscaledBitmapForView(Landroid/view/View;Landroid/graphics/Rect;FI)Landroid/graphics/Bitmap;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v1, p3, v0

    cmpl-float v2, p3, v0

    if-ltz v2, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_b
    const/high16 p3, 0x3f000000    # 0.5f

    .line 1
    :goto_d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_c8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_c8

    if-lez v0, :cond_c8

    if-lez v2, :cond_c8

    .line 6
    iget v2, p2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, p3

    .line 7
    iget v3, p2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    add-int/2addr v3, p4

    int-to-float v3, v3

    mul-float v3, v3, p3

    .line 9
    iget v4, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mGravityType:I

    const/16 v5, 0x11

    if-eq v4, v5, :cond_57

    const/16 v5, 0x30

    if-eq v4, v5, :cond_49

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_5d

    .line 22
    :cond_49
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p3

    sub-float/2addr v3, p4

    goto :goto_62

    .line 23
    :cond_57
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/lit8 p4, p4, 0x2

    :goto_5d
    add-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    :goto_62
    const/4 p4, 0x4

    .line 38
    invoke-direct {p0, p4}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->setViewVisibility(I)V

    .line 39
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 40
    new-instance v5, Lio/dcloud/common/ui/blur/BlurCanvas;

    invoke-direct {v5, v4}, Lio/dcloud/common/ui/blur/BlurCanvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    invoke-virtual {v6, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 43
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 45
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getOverlayColor()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 47
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    const/4 p1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->setViewVisibility(I)V

    int-to-float p1, v0

    mul-float p3, p1, v1

    float-to-int p3, p3

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int v0, v1

    .line 54
    invoke-static {p3, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 55
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p3, p3

    div-float/2addr p3, p1

    int-to-float p1, v0

    div-float/2addr p1, p2

    .line 57
    invoke-virtual {v2, p3, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 59
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getBlurBGColor()I

    move-result p1

    .line 60
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x3

    .line 62
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 p2, 0x0

    .line 63
    invoke-virtual {v1, v4, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object p4

    .line 65
    :cond_c8
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No screen available (width or height = 0)"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getOverlayColor()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurEffect:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_5e

    goto :goto_32

    :sswitch_12
    const-string v1, "extralight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_32

    :cond_26
    const/4 v3, 0x1

    goto :goto_32

    :sswitch_28
    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    packed-switch v3, :pswitch_data_6c

    return v2

    .line 9
    :pswitch_36
    iget v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mOverlayColorAlpha:F

    const-string v1, "#FFFFFF"

    invoke-static {v1, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 10
    :pswitch_43
    iget v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mOverlayColorAlpha:F

    const-string v1, "#F8F8F8"

    invoke-static {v1, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 13
    :pswitch_50
    iget v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mOverlayColorAlpha:F

    const-string v1, "#454545"

    invoke-static {v1, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_5e
    .sparse-switch
        0x2eef76 -> :sswitch_28
        0x6233516 -> :sswitch_1d
        0x2d45ab06 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_43
        :pswitch_36
    .end packed-switch
.end method

.method private getPositionInScreen()Landroid/graphics/Point;
    .registers 4

    .line 1
    invoke-direct {p0, p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getPositionInScreen(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private getPositionInScreen(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 4

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_c

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1

    .line 7
    :cond_c
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_22

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1

    .line 13
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_40

    if-nez v0, :cond_30

    .line 19
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1

    .line 22
    :cond_30
    invoke-direct {p0, v0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getPositionInScreen(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0

    .line 24
    :catch_40
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    return-object p1
.end method

.method private initImageView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    goto :goto_23

    .line 3
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_23

    .line 4
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_23
    :goto_23
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 8
    iget v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mCornerRadius:F

    invoke-virtual {p0, v0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->setCornerRadius(F)V

    return-void
.end method

.method private pauseBlur()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-nez v0, :cond_9

    goto :goto_15

    :cond_9
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    .line 6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidationLoop:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private setViewVisibility(I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mChangeCB:Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0, p1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private startBlur()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-nez v0, :cond_9

    goto :goto_2d

    .line 5
    :cond_9
    iget v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mFPS:I

    if-lez v0, :cond_2d

    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    const-string/jumbo v1, "static"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 8
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidationLoop:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public checkBlurEffect(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "dark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "extralight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public getBlurBGColor()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurEffect:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_4c

    goto :goto_32

    :sswitch_12
    const-string v1, "extralight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_32

    :cond_26
    const/4 v3, 0x1

    goto :goto_32

    :sswitch_28
    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    packed-switch v3, :pswitch_data_5a

    return v2

    .line 9
    :pswitch_36
    const-string v0, "#F2FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 10
    :pswitch_3d
    const-string v0, "#F2F8F8F8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 13
    :pswitch_44
    const-string v0, "#F2454545"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_4c
    .sparse-switch
        0x2eef76 -> :sswitch_28
        0x6233516 -> :sswitch_1d
        0x2d45ab06 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method

.method public invalidate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-eqz v0, :cond_1a

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->makeBlur()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 5
    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1a
    return-void
.end method

.method public makeBlur()Landroid/graphics/Bitmap;
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-nez v0, :cond_13

    goto/16 :goto_d6

    .line 5
    :cond_13
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 6
    :cond_1d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getActivityView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    return-object v1

    :cond_2f
    const/4 v0, 0x2

    .line 14
    new-array v2, v0, [I

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getPositionInScreen()Landroid/graphics/Point;

    move-result-object v2

    .line 17
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 18
    invoke-virtual {p0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_45

    return-object v1

    .line 22
    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 24
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v6, 0x0

    if-lt v3, v4, :cond_56

    const/4 v3, 0x1

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    :goto_57
    if-eqz v3, :cond_5c

    .line 25
    iget v7, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurRadius:I

    goto :goto_5d

    :cond_5c
    const/4 v7, 0x0

    .line 28
    :goto_5d
    :try_start_5d
    iget-object v8, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v10

    add-int/2addr v4, v2

    invoke-direct {v9, v10, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mDownscaleFactor:F

    .line 30
    invoke-direct {p0, v8, v9, v2, v7}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getDownscaledBitmapForView(Landroid/view/View;Landroid/graphics/Rect;FI)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7b
    if-eqz v1, :cond_d6

    .line 46
    invoke-static {}, Lio/dcloud/common/ui/blur/BlurManager;->getInstance()Lio/dcloud/common/ui/blur/BlurManager;

    move-result-object v2

    iget v4, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurRadius:I

    invoke-virtual {v2, v1, v4, v6}, Lio/dcloud/common/ui/blur/BlurManager;->processNatively(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v7

    .line 47
    iget v4, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mDownscaleFactor:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    if-eqz v3, :cond_91

    move v4, v2

    goto :goto_92

    :cond_91
    const/4 v4, 0x0

    :goto_92
    if-eqz v3, :cond_9c

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v5, v7

    goto :goto_a0

    :cond_9c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 50
    :goto_a0
    iget v7, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mGravityType:I

    const/16 v8, 0x11

    if-eq v7, v8, :cond_bf

    const/16 v8, 0x30

    if-eq v7, v8, :cond_af

    const/16 v8, 0x50

    if-eq v7, v8, :cond_bf

    goto :goto_ce

    :cond_af
    if-eqz v3, :cond_b7

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_bb

    :cond_b7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_bb
    const/4 v4, 0x5

    add-int/lit8 v5, v0, -0x5

    goto :goto_ce

    :cond_bf
    if-eqz v3, :cond_ca

    .line 59
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v3, v2

    goto :goto_ce

    :cond_ca
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 72
    :goto_ce
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 73
    invoke-static {v1, v6, v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_d6
    :goto_d6
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mAttachedToWindow:Z

    .line 3
    iget-boolean v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-eqz v1, :cond_57

    .line 4
    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_58

    :goto_1a
    const/4 v0, -0x1

    goto :goto_3b

    :sswitch_1c
    const-string v0, "automatically"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_27
    const-string v2, "semi-automatic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_1a

    :sswitch_30
    const-string/jumbo v0, "static"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v0, 0x0

    :cond_3b
    :goto_3b
    packed-switch v0, :pswitch_data_66

    goto :goto_57

    .line 16
    :pswitch_3f
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->removeEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    .line 17
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->startBlur()V

    return-void

    .line 18
    :pswitch_46
    iget-wide v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mPostTime:J

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidate(J)V

    .line 19
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->addEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    return-void

    .line 20
    :pswitch_4f
    iget-wide v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mPostTime:J

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidate(J)V

    .line 21
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->removeEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    :cond_57
    :goto_57
    return-void

    :sswitch_data_58
    .sparse-switch
        -0x35323192 -> :sswitch_30
        0x3d6ef28c -> :sswitch_27
        0x75e4dfa3 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_46
        :pswitch_3f
    .end packed-switch
.end method

.method public onContentScrollEnd()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->pauseBlur()V

    return-void
.end method

.method public onContentScrollStart()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->startBlur()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mAttachedToWindow:Z

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->pauseBlur()V

    .line 4
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->removeEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-boolean p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-eqz p1, :cond_c

    .line 3
    iget-wide p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mPostTime:J

    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidate(J)V

    :cond_c
    return-void
.end method

.method public onSplashclosed()V
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mPostTime:J

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidate(J)V

    return-void
.end method

.method public postInvalidate(J)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-nez v0, :cond_9

    goto :goto_28

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->removePostDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->postInvalidationLoop:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->removePostDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    add-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_28
    :goto_28
    return-void
.end method

.method public setBlur(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-eqz p1, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_b

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->initImageView()V

    :cond_b
    return-void
.end method

.method public setBlurEffect(Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurEffect:Ljava/lang/String;

    .line 2
    iget-boolean p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->isBlur:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->getBlurBGColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_18
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBlurLayoutChangeCallBack(Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mChangeCB:Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;

    return-void
.end method

.method public setBlurRadius(I)V
    .registers 3

    if-gez p1, :cond_5

    const/16 p1, 0xf

    goto :goto_b

    :cond_5
    const/16 v0, 0x19

    if-le p1, v0, :cond_b

    const/16 p1, 0x19

    .line 1
    :cond_b
    :goto_b
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurRadius:I

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidate()V

    return-void
.end method

.method public setBlurState(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    return-void
.end method

.method public setContentFocusable(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mBlurState:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_52

    goto :goto_32

    :sswitch_11
    const-string v1, "automatically"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_32

    :cond_1a
    const/4 v2, 0x2

    goto :goto_32

    :sswitch_1c
    const-string v1, "semi-automatic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_32

    :cond_25
    const/4 v2, 0x1

    goto :goto_32

    :sswitch_27
    const-string/jumbo v1, "static"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    packed-switch v2, :pswitch_data_60

    return-void

    :pswitch_36
    if-eqz p1, :cond_3c

    .line 17
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->startBlur()V

    return-void

    .line 19
    :cond_3c
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->pauseBlur()V

    return-void

    :pswitch_40
    if-eqz p1, :cond_46

    .line 20
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->addEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    return-void

    .line 22
    :cond_46
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->removeEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    return-void

    .line 27
    :pswitch_4a
    invoke-static {p0}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->removeEventChangedCallBack(Lio/dcloud/common/ui/blur/AppEventForBlurManager$OnAppChangedCallBack;)V

    .line 28
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->pauseBlur()V

    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        -0x35323192 -> :sswitch_27
        0x3d6ef28c -> :sswitch_1c
        0x75e4dfa3 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_40
        :pswitch_36
    .end packed-switch
.end method

.method public setCornerRadius(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mCornerRadius:F

    .line 5
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidate()V

    return-void
.end method

.method public setDownscaleFactor(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mDownscaleFactor:F

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidate()V

    return-void
.end method

.method public setFPS(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRunning:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->pauseBlur()V

    .line 5
    :cond_7
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mFPS:I

    return-void
.end method

.method public setGravityType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mGravityType:I

    return-void
.end method

.method public setOverlayColorAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mOverlayColorAlpha:F

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    :cond_f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->mRootView:Ljava/lang/ref/WeakReference;

    return-void
.end method

###### Class io.dcloud.common.ui.blur.DCBlurDraweeView.AnonymousClass1 (io.dcloud.common.ui.blur.DCBlurDraweeView$1)
.class Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/blur/DCBlurDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 5

    .line 1
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-nez p1, :cond_9

    .line 2
    iget-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-virtual {p1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidate()V

    .line 4
    :cond_9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$1;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-static {p2}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->access$000(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)I

    move-result p2

    const/16 v0, 0x3e8

    div-int/2addr v0, p2

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

###### Class io.dcloud.common.ui.blur.DCBlurDraweeView.AnonymousClass2 (io.dcloud.common.ui.blur.DCBlurDraweeView$2)
.class Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/blur/DCBlurDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-static {p1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->access$100(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 4
    :cond_9
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-nez p1, :cond_12

    .line 5
    iget-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-virtual {p1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->invalidate()V

    .line 7
    :cond_12
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$2;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-static {p2}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->access$200(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

###### Class io.dcloud.common.ui.blur.DCBlurDraweeView.AnonymousClass3 (io.dcloud.common.ui.blur.DCBlurDraweeView$3)
.class Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/blur/DCBlurDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/ui/blur/DCBlurDraweeView$3;->this$0:Lio/dcloud/common/ui/blur/DCBlurDraweeView;

    invoke-static {v1}, Lio/dcloud/common/ui/blur/DCBlurDraweeView;->access$300(Lio/dcloud/common/ui/blur/DCBlurDraweeView;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

###### Class io.dcloud.common.ui.blur.DCBlurDraweeView.BlurLayoutChangeCallBack (io.dcloud.common.ui.blur.DCBlurDraweeView$BlurLayoutChangeCallBack)
.class public interface abstract Lio/dcloud/common/ui/blur/DCBlurDraweeView$BlurLayoutChangeCallBack;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/blur/DCBlurDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlurLayoutChangeCallBack"
.end annotation


# virtual methods
.method public abstract setVisibility(I)V
.end method
