###### Class io.dcloud.common.adapter.util.PlatformUtil (io.dcloud.common.adapter.util.PlatformUtil)
.class public Lio/dcloud/common/adapter/util/PlatformUtil;
.super Lio/dcloud/common/adapter/util/SP;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static APS_COVER:Z = false

.field public static final ASSETS_RESOUCE:B = 0x0t

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field public static final FILE_RESOUCE:B = 0x2t

.field private static MAX_SPAN_IN_ONE_SCREEN:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final SRC_RESOUCE:B = 0x1t

.field private static final URI_HTC_LAUNCER:Ljava/lang/String; = "content://com.htc.launcher.settings/favorites?notify=true"

.field private static final URI_SAMSUNG_LAUNCER:Ljava/lang/String; = "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

.field private static _SCREEN_CONTENT_HEIGHT:I

.field private static _SCREEN_HEIGHT:I

.field private static _SCREEN_STATUSBAR_HEIGHT:I

.field private static _SCREEN_WIDTH:I

.field private static _blackpixels:[I

.field private static _pixels:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string/jumbo v0, "title"

    const-string v1, "iconResource"

    const-string v2, "_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x10

    .line 72
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->MAX_SPAN_IN_ONE_SCREEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/SP;-><init>()V

    return-void
.end method

.method private static GET_BLACK_LINE(I)[I
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    if-eqz v0, :cond_7

    array-length v0, v0

    if-eq v0, p0, :cond_18

    .line 2
    :cond_7
    new-array p0, p0, [I

    sput-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    const/4 p0, 0x0

    .line 3
    :goto_c
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    array-length v1, v0

    if-ge p0, v1, :cond_18

    const/high16 v1, -0x1000000

    .line 4
    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    .line 7
    :cond_18
    sget-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_blackpixels:[I

    return-object p0
.end method

.method private static GET_WIHTE_LINE(I)[I
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    if-eqz v0, :cond_7

    array-length v0, v0

    if-eq v0, p0, :cond_17

    .line 2
    :cond_7
    new-array p0, p0, [I

    sput-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    const/4 p0, 0x0

    .line 3
    :goto_c
    sget-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    array-length v1, v0

    if-ge p0, v1, :cond_17

    const/4 v1, -0x1

    .line 4
    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    .line 7
    :cond_17
    sget-object p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    return-object p0
.end method

.method public static MESURE_SCREEN_CONTENT_HEIGHT(Landroid/app/Activity;)I
    .registers 3

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    if-nez v0, :cond_31

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 7
    sget v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    if-ltz v1, :cond_28

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_31

    :cond_28
    const/4 v0, 0x0

    .line 8
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 12
    :cond_31
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    return p0
.end method

.method public static MESURE_SCREEN_STATUSBAR_HEIGHT(Landroid/app/Activity;)I
    .registers 3

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    if-nez v0, :cond_31

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 7
    sget v1, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    if-ltz v1, :cond_28

    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_31

    :cond_28
    const/4 v0, 0x0

    .line 8
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 9
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    .line 12
    :cond_31
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    return p0
.end method

.method public static RESET_H_W()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    .line 2
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    .line 3
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_STATUSBAR_HEIGHT:I

    .line 4
    sput v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_CONTENT_HEIGHT:I

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_pixels:[I

    return-void
.end method

.method public static SCREEN_HEIGHT(Landroid/content/Context;)I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    .line 4
    :cond_10
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_HEIGHT:I

    return p0
.end method

.method public static SCREEN_WIDTH(Landroid/content/Context;)I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    .line 4
    :cond_10
    sget p0, Lio/dcloud/common/adapter/util/PlatformUtil;->_SCREEN_WIDTH:I

    return p0
.end method

.method public static captureView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1
    const-string v1, "ARGB"

    const/4 v2, 0x1

    invoke-static {p0, v2, v2, v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static captureView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1f

    .line 29
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v6

    invoke-virtual {p0, v5, v6, v7, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_22

    .line 31
    :cond_1f
    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 33
    :goto_22
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 36
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 37
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 39
    :cond_47
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-eqz v4, :cond_4f

    .line 40
    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    :cond_4f
    return-object p1

    :catch_50
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static captureView(Landroid/view/View;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 2
    sget-boolean p2, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-eqz p2, :cond_8

    return-object v0

    :cond_8
    if-eqz p3, :cond_f

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_13
    if-eqz p3, :cond_1a

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_1e
    if-nez p2, :cond_21

    return-object v0

    .line 10
    :cond_21
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 11
    const-string v3, "ARGB"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2d

    .line 12
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 14
    :cond_2d
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 15
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_43

    .line 18
    iget v1, p3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p4, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    :cond_43
    invoke-virtual {p0, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_52

    .line 23
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_52
    return-object p2
.end method

.method public static captureWebViewContent(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x0

    .line 1
    :try_start_1
    move-object v1, p0

    check-cast v1, Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/AbsoluteLayout;->getFrameView()Lio/dcloud/common/adapter/ui/AdaFrameView;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0x12

    .line 2
    invoke-virtual {v1, v2, v3, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 3
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_24

    :catch_1f
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_24
    if-nez v1, :cond_27

    return-object v0

    :cond_27
    if-eqz p2, :cond_2e

    .line 8
    sget-boolean p2, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-eqz p2, :cond_2e

    return-object v0

    :cond_2e
    if-eqz p3, :cond_35

    .line 11
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_39
    if-eqz p3, :cond_40

    .line 13
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_4f

    :cond_40
    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float p2, p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    :goto_4f
    if-nez p0, :cond_52

    return-object v0

    .line 17
    :cond_52
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 18
    const-string v3, "ARGB"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5e

    .line 19
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 21
    :cond_5e
    invoke-static {p0, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 22
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_74

    .line 25
    iget p4, p3, Landroid/graphics/Rect;->left:I

    neg-int p4, p4

    int-to-float p4, p4

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    :cond_74
    invoke-virtual {v1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_83

    .line 28
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_83
    return-object p0
.end method

.method public static checkClass(Ljava/lang/String;)Z
    .registers 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static checkGTAndYoumeng()Z
    .registers 1

    .line 1
    const-string v0, "io.dcloud.feature.apsGt.GTPushService"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "io.dcloud.feature.statistics.UmengStatisticsMgr"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public static checkLauncherScreenSpace(Landroid/content/Context;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    const-string v1, "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    const-string v2, "screen"

    const-string v6, "spanX"

    const-string v7, "spanY"

    filled-new-array {v2, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7e

    .line 5
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->queryMaxLauncherScreenCount(Landroid/content/Context;)I

    move-result p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Samsung Launcher: max screen num = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PlatformUtil"

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 9
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 10
    sget v5, Lio/dcloud/common/adapter/util/PlatformUtil;->MAX_SPAN_IN_ONE_SCREEN:I

    mul-int p0, p0, v5

    :goto_41
    const/4 v5, 0x0

    .line 12
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 13
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 14
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_5b
    .catchall {:try_start_42 .. :try_end_50} :catchall_58

    mul-int v6, v6, v5

    sub-int/2addr p0, v6

    goto :goto_41

    .line 22
    :cond_54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_75

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_7a

    :catch_5b
    move-exception v0

    move-object p0, v0

    .line 23
    :try_start_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check Launcher space"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_5d .. :try_end_71} :catchall_58

    .line 26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    :goto_75
    if-lez p0, :cond_78

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    return v2

    .line 27
    :goto_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 28
    throw p0

    :cond_7e
    return v2
.end method

.method public static createShortut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    .line 9
    const-string p3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    const-string p1, "duplicate"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static createShortut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 7

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string p1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    const-string p1, "duplicate"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static destroyDrawingCache(Landroid/view/View;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-void
.end method

.method public static disableWebViewMultiProcess(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string/jumbo v0, "webview_multiprocess"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_49

    .line 3
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_49

    .line 5
    const-class p0, Landroid/provider/Settings$Global;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sNameValueCache"

    const-class v2, Landroid/provider/Settings$Global;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {p0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mValues"

    invoke-static {v1, v2, p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 11
    instance-of v1, p0, Ljava/util/HashMap;

    if-eqz v1, :cond_49

    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 13
    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_49
    return-void
.end method

.method public static getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;
    .registers 11

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;-><init>()V

    const/4 v1, 0x0

    .line 6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 7
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_16

    goto :goto_64

    .line 11
    :cond_16
    const-string v4, "android.content.res.AssetManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 13
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 15
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/AssetManager;

    .line 17
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 18
    const-string v7, "addAssetPath"

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v8

    .line 21
    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 25
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v5, p1, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 26
    iget p0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez p0, :cond_55

    move-object p1, v1

    goto :goto_6a

    .line 30
    :cond_55
    iget p1, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_65

    .line 31
    :try_start_5d
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_62

    goto :goto_6a

    :catchall_62
    move-exception p0

    goto :goto_67

    :cond_64
    :goto_64
    return-object v0

    :catchall_65
    move-exception p0

    move-object p1, v1

    .line 37
    :goto_67
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_6a
    iput-object v1, v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object p1, v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private static getBestActivityInfo(Ljava/util/List;Ljava/util/LinkedList;)Landroid/content/pm/ActivityInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 5
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_25
    const p0, 0x7fffffff

    const/4 v2, 0x0

    .line 10
    :goto_29
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 12
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p0, :cond_3f

    move-object v2, v3

    move p0, v4

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_42
    return-object v2
.end method

.method public static getFileContent(Ljava/lang/String;I)[B
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1a

    .line 4
    :try_start_7
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_e
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    goto :goto_1a

    :catchall_c
    move-exception p1

    goto :goto_16

    :catch_e
    move-exception v0

    .line 7
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c

    .line 9
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-object p1

    .line 10
    :goto_16
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 11
    throw p1

    .line 12
    :cond_1a
    :goto_1a
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-object p1
.end method

.method public static getFileContent4S(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "p"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p1

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 9
    aget-object p1, v3, p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 10
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_4
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 21
    :goto_d
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_d

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p1, 0x2

    :cond_d
    if-nez p1, :cond_14

    .line 5
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    .line 7
    const-class p1, Lio/dcloud/common/adapter/util/PlatformUtil;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_22
    if-ne p1, v2, :cond_3c

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 11
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3d

    return-object p0

    :cond_3c
    return-object v0

    :catch_3d
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const-string v0, "file:///android_asset/"

    const-string v1, "android_asset/"

    const-string v2, "assets://"

    .line 1
    :try_start_6
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->useAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_14} :catch_70
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_5e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_3a

    const-string v4, ""

    if-eqz v3, :cond_1d

    .line 5
    :try_start_18
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 6
    :cond_1d
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 7
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 8
    :cond_28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 9
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :cond_32
    :goto_32
    sget-object v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAssetMgr:Landroid/content/res/AssetManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_39} :catch_70
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_39} :catch_5e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_39} :catch_3a

    return-object p0

    .line 23
    :catch_3a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformUtil.getResInputStream Exception pFilePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_81

    .line 24
    :catch_4c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformUtil.getResInputStream IOException pFilePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_81

    .line 25
    :catch_5e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformUtil.getResInputStream FileNotFoundException pFilePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_81

    .line 26
    :catch_70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlatformUtil.getResInputStream RuntimeException pFilePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :goto_81
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "platform"

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    .line 1
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_f

    :catchall_a
    move-exception p0

    goto :goto_39

    :catch_c
    move-exception p0

    goto :goto_41

    :cond_e
    move-object v2, v1

    :goto_f
    if-nez v2, :cond_15

    .line 4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_15} :catch_c
    .catchall {:try_start_5 .. :try_end_15} :catchall_a

    :cond_15
    move-object p0, v1

    :goto_16
    if-eqz v2, :cond_2e

    .line 10
    :try_start_18
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1f
    .catchall {:try_start_18 .. :try_end_1c} :catchall_a

    if-eqz p0, :cond_20

    goto :goto_2e

    :catch_1f
    nop

    :cond_20
    if-nez p0, :cond_29

    .line 17
    :try_start_22
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_29
    .catchall {:try_start_22 .. :try_end_26} :catchall_a

    if-eqz p0, :cond_29

    goto :goto_2e

    .line 23
    :catch_29
    :cond_29
    :try_start_29
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_16

    :cond_2e
    :goto_2e
    if-eqz p0, :cond_48

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_38} :catch_c
    .catchall {:try_start_29 .. :try_end_38} :catchall_a

    return-object p0

    .line 33
    :goto_39
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 34
    :goto_41
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-object v1
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 29
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    array-length p2, p3

    if-nez p2, :cond_14

    move-object p3, v0

    :cond_14
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_14

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_13} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_16

    goto :goto_24

    :cond_14
    move-object p2, v0

    goto :goto_24

    :catch_16
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    .line 14
    :catch_1c
    const-string p2, "NoSuchMethodException"

    goto :goto_21

    .line 15
    :catch_1f
    const-string p2, "ClassNotFoundException"

    :goto_21
    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    :goto_24
    if-eqz v0, :cond_4d

    .line 27
    const-string p3, "getJsContent"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4d

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-object p2
.end method

.method public static invokeSetFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2b

    const/4 v2, 0x0

    :goto_9
    if-eqz v1, :cond_21

    .line 7
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_12
    .catchall {:try_start_b .. :try_end_f} :catchall_2b

    if-eqz v2, :cond_13

    goto :goto_21

    :catch_12
    nop

    :cond_13
    if-nez v2, :cond_1c

    .line 14
    :try_start_15
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1c
    .catchall {:try_start_15 .. :try_end_19} :catchall_2b

    if-eqz v2, :cond_1c

    goto :goto_21

    .line 20
    :catch_1c
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_9

    :cond_21
    :goto_21
    if-eqz v2, :cond_35

    const/4 p1, 0x1

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    invoke-virtual {v2, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2b

    return p1

    :catchall_2b
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "platform"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEmulator()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static isLineWhiteBitmap(Landroid/graphics/Bitmap;Z)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3
    new-array v2, v0, [I

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p1, :cond_29

    .line 8
    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_BLACK_LINE(I)[I

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    or-int/2addr p0, p1

    :cond_29
    return p0
.end method

.method private static isPureColor([I)Z
    .registers 7

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    .line 2
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_10

    aget v5, p0, v4

    if-eq v1, v5, :cond_d

    const/4 v3, 0x0

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    return v3
.end method

.method public static isResFileExists(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lio/dcloud/common/adapter/util/AndroidResources;->sAssetMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    return p0

    :catch_e
    :cond_e
    return v0
.end method

.method public static isWhiteBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;ZZ)Z

    move-result p0

    return p0
.end method

.method public static isWhiteBitmap(Landroid/graphics/Bitmap;ZZ)Z
    .registers 11

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 4
    new-array v1, v7, [I

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7
    invoke-static {v7}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p2, :cond_22

    .line 9
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->isPureColor([I)Z

    move-result p0

    .line 10
    :cond_22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    invoke-static {v7}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    and-int/2addr p0, v2

    if-eqz p2, :cond_3e

    .line 13
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->isPureColor([I)Z

    move-result p0

    .line 14
    :cond_3e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 15
    invoke-static {v7}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_WIHTE_LINE(I)[I

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    and-int/2addr p0, v0

    if-eqz p2, :cond_5c

    .line 17
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->isPureColor([I)Z

    move-result p0

    :cond_5c
    if-eqz p1, :cond_67

    .line 19
    invoke-static {v7}, Lio/dcloud/common/adapter/util/PlatformUtil;->GET_BLACK_LINE(I)[I

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    or-int/2addr p0, p1

    :cond_67
    return p0
.end method

.method public static launchApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 5
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 7
    :goto_14
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 8
    invoke-static {p0, p2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->setPackageName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_27

    .line 9
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_27
    :goto_27
    if-eqz p4, :cond_2e

    const/high16 p1, 0x10000000

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2e
    if-eqz p3, :cond_74

    .line 15
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_74

    .line 16
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 17
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_74

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 19
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5c

    .line 21
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3e

    .line 23
    :cond_5c
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3e

    .line 26
    :cond_66
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3e

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 28
    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3e

    .line 32
    :cond_74
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static listFsAppsFiles(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlatformUtil.listResFiles pPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static listResFiles(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/common/adapter/util/PlatformUtil;->useAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/util/AndroidResources;->sAssetMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlatformUtil.listResFiles pPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "platform"

    .line 1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_18
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    return-object p0

    :catchall_f
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_18
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static openFileBySystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 13

    .line 1
    const-string/jumbo v0, "{code:%d,message:\'%s\'}"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_15

    .line 2
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 3
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 5
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 6
    invoke-static {p0, p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->hasAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 9
    :try_start_25
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    const-string v7, "file://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v7, 0x7

    .line 11
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_36
    const-string v7, "content://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p1, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    :cond_4e
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    goto :goto_56

    :cond_55
    move-object p3, v6

    .line 20
    :goto_56
    invoke-static {p0, p1, p3}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz v1, :cond_5f

    .line 22
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    :cond_5f
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 29
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p4, :cond_a5

    .line 31
    const-string/jumbo p0, "{}"

    invoke-interface {p4, v5, p0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_76
    if-eqz p4, :cond_a5

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "not found file"

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-interface {p4, v3, p0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_8b} :catch_8c

    return-void

    :catch_8c
    move-exception p0

    .line 40
    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/Throwable;)V

    if-eqz p4, :cond_a5

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "not found 3th activity"

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-interface {p4, v3, p0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    return-void
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 6
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e
    const/high16 p2, 0x10000000

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static parseApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static queryDefaultShortcut(Ljava/lang/String;)Z
    .registers 10

    const-string v1, "queryHTCShortCut error:"

    const/4 v2, 0x0

    .line 1
    :try_start_3
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2
    const-string v0, "content://com.android.launcher2.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3
    sget-object v5, Lio/dcloud/common/adapter/util/PlatformUtil;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "title=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_33
    .catchall {:try_start_3 .. :try_end_28} :catchall_30

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_2d
    if-eqz v2, :cond_4f

    goto :goto_4c

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_51

    :catch_33
    move-exception v0

    move-object p0, v0

    .line 16
    :try_start_35
    const-string v0, "PlatformUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_30

    if-eqz v2, :cond_4f

    .line 15
    :goto_4c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4f
    const/4 p0, 0x0

    return p0

    :goto_51
    if-eqz v2, :cond_56

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_56
    throw p0
.end method

.method private static queryHTCShortCut(Ljava/lang/String;)Z
    .registers 10

    const-string v1, "queryHTCShortCut error:"

    const/4 v2, 0x0

    .line 1
    :try_start_3
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3
    sget-object v5, Lio/dcloud/common/adapter/util/PlatformUtil;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "title=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_33
    .catchall {:try_start_3 .. :try_end_28} :catchall_30

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_2d
    if-eqz v2, :cond_4f

    goto :goto_4c

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_51

    :catch_33
    move-exception v0

    move-object p0, v0

    .line 16
    :try_start_35
    const-string v0, "PlatformUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_30

    if-eqz v2, :cond_4f

    .line 15
    :goto_4c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4f
    const/4 p0, 0x0

    return p0

    :goto_51
    if-eqz v2, :cond_56

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_56
    throw p0
.end method

.method private static queryMaxLauncherScreenCount(Landroid/content/Context;)I
    .registers 9

    const-string v1, "Samsung Launcher"

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    const-string p0, "content://com.sec.android.app.twlauncher.settings/favorites?notify=true"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3
    const-string p0, "MAX(screen)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v2, -0x1

    if-eqz p0, :cond_46

    .line 6
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    .line 7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_2c
    .catchall {:try_start_1c .. :try_end_24} :catchall_2a

    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_2a
    move-exception v0

    goto :goto_42

    :catch_2c
    move-exception v0

    .line 13
    :try_start_2d
    const-string v3, "PlatformUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_2a

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    .line 16
    :goto_42
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 17
    throw v0

    :cond_46
    return v2
.end method

.method public static setPackageName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static useAndroidPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2f

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/util/StringUtil;->trimString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-static {p0, v0}, Lio/dcloud/common/util/StringUtil;->trimString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.PlatformUtil.APKInfo (io.dcloud.common.adapter.util.PlatformUtil$APKInfo)
.class public Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/PlatformUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APKInfo"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
