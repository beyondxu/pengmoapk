###### Class io.dcloud.common.util.PdrUtil (io.dcloud.common.util.PdrUtil)
.class public Lio/dcloud/common/util/PdrUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final FILE_PATH_ENTRY_BACK:Ljava/lang/String; = ".."

.field public static final FILE_PATH_ENTRY_SEPARATOR2:Ljava/lang/String; = "%"

.field private static final NAVIGATION:Ljava/lang/String; = "navigationBarBackground"

.field private static volatile mHasCheckAllScreen:Z

.field private static volatile mIsAllScreenDevice:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 13
    sget p1, Lio/dcloud/base/R$string;->dcloud_common_ok:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/dcloud/common/util/PdrUtil$1;

    invoke-direct {p1, v0}, Lio/dcloud/common/util/PdrUtil$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static appendByDeviceRootDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_3

    goto :goto_56

    .line 1
    :cond_3
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 2
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_18

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_18
    const-string v0, "sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2a

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_2a
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_42

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_56
    :goto_56
    return-object p0
.end method

.method public static checkAlphaTransparent(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    ushr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static checkIntl()Z
    .registers 1

    .line 1
    const-string v0, "io.dcloud.common.DHInterface.IntlCallback"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkStatusbarColor(I)Z
    .registers 4

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->GOOGLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_22

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_22
    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->DUOWEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_2a
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_3c

    if-ge v1, v2, :cond_3c

    if-lt p0, v2, :cond_44

    :cond_3c
    const/16 v2, 0xeb

    if-le v0, v2, :cond_46

    if-le v1, v2, :cond_46

    if-le p0, v2, :cond_46

    :cond_44
    const/4 p0, 0x0

    return p0

    :cond_46
    const/4 p0, 0x1

    return p0
.end method

.method public static closeAndroidPDialog()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    return-void

    .line 13
    :cond_7
    :try_start_7
    const-string v0, "YW5kcm9pZC5hcHAuQWN0aXZpdHlUaHJlYWQ="

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentActivityThread"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    const-string v1, "mHiddenApiWarningShown"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeSetFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeAndroidPDialog--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdrUtil"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static convertAppPath(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "/storage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 7
    :cond_3d
    const-string p1, "android_asset/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 8
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_4b
    sget-object p1, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1, p0}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_52
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToScreenInt(Ljava/lang/String;IIF)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIFZ)I

    move-result p0

    return p0
.end method

.method public static convertToScreenInt(Ljava/lang/String;IIFZ)I
    .registers 8

    if-nez p0, :cond_4

    goto/16 :goto_7b

    .line 2
    :cond_4
    :try_start_4
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_7b

    const-string v1, "."

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 6
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_2b

    .line 12
    :cond_26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    :goto_2b
    mul-float p0, p0, p3

    if-eqz p4, :cond_34

    .line 16
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_34
    float-to-int p0, p0

    return p0

    .line 22
    :cond_36
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_48} :catch_7b

    .line 26
    :try_start_48
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_61

    int-to-float p1, p1

    .line 28
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float p1, p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    if-eqz p4, :cond_5f

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_5f
    float-to-int p0, p1

    return p0

    .line 38
    :cond_61
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int p1, p1, p0

    div-int/lit8 p1, p1, 0x64
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_69} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_69} :catch_7b

    return p1

    .line 45
    :cond_6a
    :try_start_6a
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    float-to-double v0, p3

    mul-double p0, p0, v0

    if-eqz p4, :cond_79

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_77} :catch_7b

    long-to-int p1, p0

    return p1

    :cond_79
    double-to-int p0, p0

    return p0

    :catch_7b
    :goto_7b
    return p2
.end method

.method public static dealString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    const-string v0, "GBK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 3
    aget-byte v2, p0, v1

    xor-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5
    :cond_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .registers 3

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_8
    :try_start_8
    const-string/jumbo v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object p0

    .line 7
    :catch_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URLEncode error str="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdEnv(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lio/dcloud/p/i0;->c()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v0

    const-string v1, "GJ"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decryptStr(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getConfigData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 4

    if-eqz p3, :cond_7

    .line 1
    :try_start_2
    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_f

    .line 3
    :cond_7
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    :goto_f
    if-eqz p1, :cond_2a

    .line 10
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lio/dcloud/p/e1;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    .line 15
    :cond_24
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigOrientation(Lorg/json/JSONObject;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p0, :cond_8d

    .line 1
    const-string v1, "screenOrientation"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v2, v7, :cond_68

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_8e

    goto :goto_5a

    :sswitch_2f
    const-string v9, "portrait-secondary"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_5a

    :cond_38
    const/4 v10, 0x3

    goto :goto_5a

    :sswitch_3a
    const-string v9, "landscape-primary"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    goto :goto_5a

    :cond_43
    const/4 v10, 0x2

    goto :goto_5a

    :sswitch_45
    const-string v9, "landscape-secondary"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_5a

    :cond_4e
    const/4 v10, 0x1

    goto :goto_5a

    :sswitch_50
    const-string v9, "portrait-primary"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v10, 0x0

    :goto_5a
    packed-switch v10, :pswitch_data_a0

    goto :goto_65

    :pswitch_5e
    const/4 v6, 0x1

    goto :goto_65

    :pswitch_60
    const/4 v3, 0x1

    goto :goto_65

    :pswitch_62
    const/4 v4, 0x1

    goto :goto_65

    :pswitch_64
    const/4 v5, 0x1

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_68
    if-nez v3, :cond_6c

    if-eqz v4, :cond_71

    :cond_6c
    if-nez v5, :cond_8d

    if-eqz v6, :cond_71

    goto :goto_8d

    :cond_71
    if-eqz v3, :cond_77

    if-eqz v4, :cond_77

    const/4 p0, 0x6

    return p0

    :cond_77
    if-eqz v5, :cond_7d

    if-eqz v6, :cond_7d

    const/4 p0, 0x7

    return p0

    :cond_7d
    if-eqz v3, :cond_80

    return v1

    :cond_80
    if-eqz v4, :cond_85

    const/16 p0, 0x8

    return p0

    :cond_85
    if-eqz v5, :cond_88

    return v8

    :cond_88
    if-eqz v6, :cond_8d

    const/16 p0, 0x9

    return p0

    :cond_8d
    :goto_8d
    return v0

    :sswitch_data_8e
    .sparse-switch
        -0x49321e30 -> :sswitch_50
        -0x8c4a71e -> :sswitch_45
        0x6f02f8f0 -> :sswitch_3a
        0x77ef89c2 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
    .end packed-switch
.end method

.method public static getDefaultPrivateDocPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "_doc/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 3
    :cond_19
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5a
    return-object p0
.end method

.method public static getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, "\""

    const-string v1, "filename"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1
    :try_start_9
    const-string/jumbo v6, "utf-8"

    invoke-static {p2, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 4
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    move-object p2, v6

    .line 9
    :cond_21
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 10
    const-string v6, ";"

    invoke-static {p0, v6}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_86

    const/4 v7, 0x0

    .line 15
    :goto_30
    array-length v8, v6

    if-ge v7, v8, :cond_86

    .line 16
    aget-object v8, v6, v7

    if-eqz v8, :cond_6d

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 17
    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "="

    invoke-static {v8, v9}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6d

    .line 19
    aget-object v9, v8, v3

    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 20
    aget-object v10, v8, v4

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 21
    aget-object v8, v8, v4

    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6d

    .line 22
    invoke-static {v1, v9}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-static {v10}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_69} :catch_70

    if-nez v8, :cond_6d

    move-object v5, v10

    goto :goto_86

    :cond_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 32
    :catch_70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PdrUtil.getDownloadFilename "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found filename"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 34
    :cond_86
    :goto_86
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "?"

    if-eqz p0, :cond_c6

    const/16 p0, 0x2f

    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_be

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge p0, v5, :cond_be

    add-int/2addr p0, v4

    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_c6

    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    if-ge p0, p2, :cond_b5

    .line 41
    invoke-virtual {v5, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_c6

    .line 43
    :cond_b5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_c6

    .line 47
    :cond_be
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 50
    :cond_c6
    :goto_c6
    const-string p0, "."

    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ea

    .line 51
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ea

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    :cond_ea
    :try_start_ea
    const-string p0, "UTF-8"

    invoke-static {v5, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, p0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_105

    .line 64
    const-string p0, "\\?"

    const-string p1, "0"

    invoke-virtual {v5, p0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    .line 68
    :cond_105
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x50

    if-le p0, p1, :cond_129

    .line 70
    invoke-virtual {v5, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_124
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ea .. :try_end_124} :catch_125

    goto :goto_129

    :catch_125
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_129
    :goto_129
    return-object v5
.end method

.method public static getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3
    const-string p1, "[\\w\\.]+[\\.](avi|mpeg|3gp|mp3|mp4|wav|jpeg|gif|jpg|png|apk|exe|pdf|rar|zip|docx|doc)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dat"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    return-object p0

    .line 16
    :cond_4c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6a
    return-object p2
.end method

.method public static getKeyByIndex(Ljava/util/HashMap;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v1, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public static getKeyByValue(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/PdrUtil;->getKeyByValue(Ljava/util/HashMap;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyByValue(Ljava/util/HashMap;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    return-object v0

    .line 2
    :cond_a
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_29
    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_20

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_20
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "*/*"

    return-object p0

    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "application/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_41
    return-object p0
.end method

.method private static getNavBarOverride()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 3
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    return-object v1

    :catchall_25
    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 3
    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    return-object p0
.end method

.method public static getObject([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    aget-object p0, p0, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSitemapParameters(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "href"

    const-string v3, "hash"

    const-string v4, "search"

    const-string v5, "pathname"

    const-string v6, "host"

    const-string v7, "port"

    const-string v8, "global"

    const-string v9, "hostname"

    const-string v10, "protocol"

    const-string v11, "matchUrls"

    const-string/jumbo v12, "webviewId"

    const-string v13, "launch_path"

    const-string/jumbo v14, "webviewParameter"

    const/16 v16, 0x0

    .line 1
    :try_start_22
    const-string v15, "pages"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v17, v8

    .line 2
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v19, v8

    const/4 v0, 0x0

    .line 3
    :goto_33
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_255

    .line 4
    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 6
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_23d

    move/from16 v21, v0

    const-string/jumbo v0, "webviewid"

    if-eqz v20, :cond_51

    .line 7
    :try_start_48
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_4c
    move-object/from16 v22, v12

    move-object/from16 v12, v20

    goto :goto_56

    .line 10
    :cond_51
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_4c

    .line 14
    :goto_56
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_67

    .line 15
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    move-object/from16 v30, v20

    move-object/from16 v20, v11

    move-object/from16 v11, v30

    goto :goto_6f

    :cond_67
    move-object/from16 v20, v11

    .line 18
    const-string v11, "matchurls"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    :goto_6f
    move-object/from16 v25, v0

    move-object/from16 v23, v15

    const/4 v15, 0x0

    const/16 v24, 0x0

    .line 21
    :goto_76
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_22a

    .line 22
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v11

    .line 23
    instance-of v11, v0, Ljava/lang/String;

    if-eqz v11, :cond_8e

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    goto/16 :goto_171

    .line 26
    :cond_8e
    instance-of v11, v0, Lorg/json/JSONObject;

    if-eqz v11, :cond_171

    .line 28
    check-cast v0, Lorg/json/JSONObject;

    .line 29
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v27

    .line 31
    :goto_9d
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_171

    .line 32
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v1, v28

    check-cast v1, Ljava/lang/String;

    .line 36
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_bd

    .line 37
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 38
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v28

    :goto_b9
    move-object/from16 v29, v7

    goto/16 :goto_14d

    .line 39
    :cond_bd
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_cc

    .line 40
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 41
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    goto :goto_b9

    .line 42
    :cond_cc
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f6

    .line 43
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object/from16 v28, v1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v7

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_ef
    move-object/from16 v30, v28

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    goto :goto_14d

    :cond_f6
    move-object/from16 v29, v7

    .line 45
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 46
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v1

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ef

    .line 48
    :cond_121
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_130

    .line 49
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 50
    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v28

    goto :goto_14d

    .line 51
    :cond_130
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 52
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    invoke-virtual {v11}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v28

    goto :goto_14d

    .line 54
    :cond_13f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 55
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 56
    invoke-virtual {v11}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v28

    :goto_14d
    move-object/from16 v7, v28

    goto :goto_160

    .line 57
    :cond_150
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 58
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object/from16 v7, p2

    goto :goto_160

    :cond_15d
    move-object/from16 v1, v16

    move-object v7, v1

    :goto_160
    if-eqz v1, :cond_16b

    if-eqz v7, :cond_16b

    .line 62
    invoke-static {v1, v7}, Lio/dcloud/common/util/PdrUtil;->matchArray(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_16b

    goto :goto_173

    :cond_16b
    move-object/from16 v1, p2

    move-object/from16 v7, v29

    goto/16 :goto_9d

    :cond_171
    :goto_171
    move-object/from16 v29, v7

    :goto_173
    if-eqz v24, :cond_21a

    .line 69
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_179} :catch_23d

    const-string v1, "__html5plusWebviewParameter "

    if-eqz v0, :cond_182

    .line 70
    :try_start_17d
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_186

    .line 72
    :cond_182
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_186
    if-nez v0, :cond_18d

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_18d
    move-object v2, v0

    move-object/from16 v0, v19

    .line 75
    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v7, v25

    .line 76
    invoke-virtual {v2, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v0, "appid"

    move-object/from16 v11, p1

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_19f} :catch_23d

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    .line 81
    :try_start_1a3
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a7} :catch_215

    const-string/jumbo v5, "statusbar"

    if-eqz v4, :cond_1f2

    .line 82
    :try_start_1ac
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1f2

    .line 85
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1bd

    .line 86
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1c1

    .line 88
    :cond_1bd
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_1c1
    if-eqz v1, :cond_1d0

    .line 91
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->combinSitemapHtmlJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 96
    :cond_1d0
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f2

    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_1f2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_214

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_214

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_214

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_214} :catch_215

    :cond_214
    return-object v2

    :catch_215
    move-exception v0

    .line 111
    :try_start_216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_219} :catch_23d

    return-object v2

    :cond_21a
    move-object/from16 v11, p1

    move-object/from16 v0, v19

    move-object/from16 v7, v25

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move-object/from16 v11, v26

    move-object/from16 v7, v29

    goto/16 :goto_76

    :cond_22a
    move-object/from16 v11, p1

    move-object/from16 v29, v7

    move-object/from16 v0, v19

    add-int/lit8 v1, v21, 0x1

    move v0, v1

    move-object/from16 v11, v20

    move-object/from16 v12, v22

    move-object/from16 v15, v23

    move-object/from16 v1, p2

    goto/16 :goto_33

    :catch_23d
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSitemapParameters e=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdrUtil"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_255
    return-object v16
.end method

.method public static getUrlPathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_a

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static hasNavBar(Landroid/content/Context;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    const-string v1, "bool"

    const-string v2, "android"

    const-string v3, "config_showNavigationBar"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 6
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->getNavBarOverride()Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_23
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return v2

    :cond_2c
    return p0

    .line 14
    :cond_2d
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static int2DecimalStr(II)Ljava/lang/String;
    .registers 4

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAllScreenDevice(Landroid/app/Activity;)Z
    .registers 5

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/PdrUtil;->mHasCheckAllScreen:Z

    if-eqz v0, :cond_7

    .line 2
    sget-boolean p0, Lio/dcloud/common/util/PdrUtil;->mIsAllScreenDevice:Z

    return p0

    :cond_7
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lio/dcloud/common/util/PdrUtil;->mHasCheckAllScreen:Z

    const/4 v1, 0x0

    .line 5
    sput-boolean v1, Lio/dcloud/common/util/PdrUtil;->mIsAllScreenDevice:Z

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_38

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 14
    sput-boolean v0, Lio/dcloud/common/util/PdrUtil;->mIsAllScreenDevice:Z

    .line 15
    sget-boolean p0, Lio/dcloud/common/util/PdrUtil;->mIsAllScreenDevice:Z

    return p0

    .line 19
    :cond_38
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_67

    .line 21
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 22
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 23
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 25
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge p0, v1, :cond_58

    int-to-float p0, p0

    int-to-float v1, v1

    goto :goto_5d

    :cond_58
    int-to-float v1, v1

    int-to-float p0, p0

    move v3, v1

    move v1, p0

    move p0, v3

    :goto_5d
    div-float/2addr v1, p0

    const p0, 0x3ffc28f6    # 1.97f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_67

    .line 33
    sput-boolean v0, Lio/dcloud/common/util/PdrUtil;->mIsAllScreenDevice:Z

    .line 36
    :cond_67
    sget-boolean p0, Lio/dcloud/common/util/PdrUtil;->mIsAllScreenDevice:Z

    return p0
.end method

.method public static isBase64ImagePath(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "data:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isContains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 3
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isDeviceRootDir(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_30

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "sdcard/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_31

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    return v0

    :cond_30
    :goto_30
    return v2

    :catch_31
    return v0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p0, :cond_2a

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_7

    return v0

    .line 1
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFilePath(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "file:/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isFullScreen(Landroid/app/Activity;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static isLightColor(I)Z
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double v0, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    double-to-int p0, v0

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static isNavigationBarExist(Landroid/app/Activity;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    const/4 v2, 0x0

    .line 3
    :goto_e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    :try_start_1f
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4e

    const-string v3, "navigationBarBackground"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4a} :catch_4e

    if-nez v3, :cond_4e

    const/4 p0, 0x1

    return p0

    :catch_4e
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_51
    return v1
.end method

.method public static isNavigationBarShow(Landroid/app/Activity;)Z
    .registers 3

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 7
    iget p0, v1, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p0, v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static isNavigationBarShowing(Landroid/content/Context;)Z
    .registers 6

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 6
    const-string v2, "HUAWEI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "navigationbar_is_min"

    if-eqz v2, :cond_14

    goto :goto_34

    .line 8
    :cond_14
    const-string v2, "XIAOMI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 9
    const-string v3, "force_fsg_nav_bar"

    goto :goto_34

    .line 10
    :cond_1f
    const-string v2, "VIVO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "navigation_gesture_on"

    if-eqz v2, :cond_2b

    :goto_29
    move-object v3, v4

    goto :goto_34

    .line 12
    :cond_2b
    const-string v2, "OPPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_29

    .line 17
    :cond_34
    :goto_34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_40
    return v1
.end method

.method public static isNetPath(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_44

    .line 1
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "http://localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2
    :cond_12
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "https://localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3
    :cond_22
    const-string v0, "rtmp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "rtmp://localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4
    :cond_32
    const-string v0, "rtsp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "rtsp://localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_44

    :cond_42
    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public static isSafeEntryName(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameDay(JJ)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 4
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p2, p3, :cond_32

    const/4 p2, 0x2

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_32

    const/4 p2, 0x5

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p3, p0, :cond_32

    return p1

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportOaid()Z
    .registers 5

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const-string v2, "honor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_15
    const/16 v2, 0x17

    if-lt v1, v2, :cond_1a

    return v3

    .line 6
    :cond_1a
    const-string/jumbo v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x1c

    if-eqz v2, :cond_28

    if-lt v1, v4, :cond_28

    return v3

    .line 9
    :cond_28
    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-lt v1, v4, :cond_34

    return v3

    :cond_34
    const/16 v0, 0x1d

    if-lt v1, v0, :cond_39

    return v3

    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public static isUniMPHostForUniApp()Z
    .registers 1

    .line 1
    const-string v0, "io.dcloud.feature.sdk.Interface.DCUniAppHost"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static loadProperties2HashMap(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 4
    :try_start_9
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 8
    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 9
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_34
    .catchall {:try_start_9 .. :try_end_2d} :catchall_32

    goto :goto_12

    .line 16
    :cond_2e
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-void

    :catchall_32
    move-exception p0

    goto :goto_3c

    :catch_34
    move-exception p0

    .line 17
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    .line 19
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-void

    .line 20
    :goto_3c
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 21
    throw p0
.end method

.method public static loadProperties2HashMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 22
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 24
    invoke-static {v2}, Lio/dcloud/common/util/XmlUtil;->XML_Parser(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 26
    const-string v3, "features"

    invoke-static {v2, v3}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v3

    .line 27
    const-string v4, "feature"

    invoke-static {v3, v4}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "value"

    const-string v5, "name"

    const/4 v6, 0x0

    if-eqz v3, :cond_99

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_99

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_2f
    if-ge v8, v7, :cond_99

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lio/dcloud/common/util/XmlUtil$DHNode;

    .line 30
    invoke-static {v9, v5}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-static {v9, v4}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 32
    const-string/jumbo v12, "ui"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 33
    const-string/jumbo v12, "webview"

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_56
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v11, "module"

    invoke-static {v9, v11}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2f

    .line 37
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2f

    .line 38
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    if-nez v11, :cond_78

    .line 40
    new-instance v11, Ljava/util/LinkedHashMap;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 41
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_78
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_7d
    if-ge v12, v10, :cond_2f

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lio/dcloud/common/util/XmlUtil$DHNode;

    .line 44
    invoke-static {v13, v5}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 45
    invoke-static {v13, v4}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 46
    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 51
    :cond_99
    const-string v0, "services"

    invoke-static {v2, v0}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v0

    .line 52
    const-string v1, "service"

    invoke-static {v0, v1}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b1
    if-ge v6, v1, :cond_cf

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    check-cast v2, Lio/dcloud/common/util/XmlUtil$DHNode;

    .line 55
    invoke-static {v2, v5}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v2, v4}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p0

    .line 57
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    :cond_cf
    return-void
.end method

.method public static makeQueryStringAllRegExp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 4
    :cond_7
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "*"

    const-string v1, "\\*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    const-string v0, "+"

    const-string v1, "\\+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "|"

    const-string v1, "\\|"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 6
    const-string/jumbo v0, "{"

    const-string v1, "\\{"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "}"

    const-string v1, "\\}"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 7
    const-string v0, "("

    const-string v1, "\\("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    const-string v1, "\\)"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 8
    const-string v0, "^"

    const-string v1, "\\^"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "$"

    const-string v1, "\\$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 9
    const-string v0, "["

    const-string v1, "\\["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    const-string v1, "\\]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 10
    const-string v0, "?"

    const-string v1, "\\?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "\\,"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 11
    const-string v0, "."

    const-string v1, "\\."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&"

    const-string v1, "\\&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 12
    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static matchArray(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    const/4 v1, 0x0

    .line 1
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, p1}, Lio/dcloud/common/util/PdrUtil;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return v0
.end method

.method public static navigationGestureEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sBrand:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_23

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    :cond_23
    const/4 p0, 0x0

    goto :goto_2f

    .line 6
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_gesture_on"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_2f
    if-eqz p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    return v1
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 5
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 8
    :cond_7
    const-string/jumbo p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static parseBoolean(Ljava/lang/String;ZZ)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1c

    .line 4
    :cond_7
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    xor-int/lit8 p0, p2, 0x1

    return p0

    :cond_13
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return p2

    :cond_1c
    :goto_1c
    return p1
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 1
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static parseFloat(Ljava/lang/String;FF)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p0

    return p0
.end method

.method public static parseFloat(Ljava/lang/String;FFF)F
    .registers 6

    if-nez p0, :cond_3

    goto :goto_3f

    .line 3
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 4
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_1c
    :try_start_1c
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_20} :catch_23

    mul-float p0, p0, p3

    return p0

    .line 10
    :catch_23
    const-string p3, "%"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 13
    :try_start_35
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_3f

    mul-float p1, p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1

    :catch_3f
    :cond_3f
    :goto_3f
    return p2
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 1
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static parseInt(Ljava/lang/String;II)I
    .registers 7

    if-nez p0, :cond_4

    goto/16 :goto_85

    .line 2
    :cond_4
    :try_start_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 7
    :cond_22
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_51

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_34} :catch_85

    .line 10
    :try_start_34
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    int-to-float p1, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float p1, p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    .line 13
    :cond_48
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int p1, p1, p0

    div-int/lit8 p1, p1, 0x64
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_50} :catch_85
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_50} :catch_85

    return p1

    .line 19
    :cond_51
    :try_start_51
    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_85

    const-string v0, "0x"

    if-eqz p1, :cond_6b

    .line 20
    :try_start_5b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    :cond_6b
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 25
    :cond_80
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_84} :catch_85

    return p0

    :catch_85
    :goto_85
    return p2
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    return-wide p1
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static renderCroppedGreyscaleBitmap([BIIIIII)Landroid/graphics/Bitmap;
    .registers 15

    mul-int p2, p5, p6

    .line 1
    new-array v1, p2, [I

    mul-int p4, p4, p1

    add-int/2addr p4, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_9
    if-ge p3, p6, :cond_29

    mul-int v0, p3, p5

    const/4 v2, 0x0

    :goto_e
    if-ge v2, p5, :cond_25

    add-int v3, p4, v2

    .line 8
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, v0, v2

    const v5, 0x10101

    mul-int v3, v3, v5

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    .line 9
    aput v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_25
    add-int/2addr p4, p1

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 14
    :cond_29
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p5, p6, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, p5

    move v3, p5

    move v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 10
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    const/4 p0, 0x1

    return p0

    :catch_2c
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static standardizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2f

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_34

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_34
    const-string v0, "../"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_6c

    .line 15
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_45
    if-le v3, v5, :cond_59

    const/4 v3, 0x3

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 19
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_45

    .line 22
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6c
    return-object p1
.end method

.method public static stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 5
    :goto_18
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 6
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2b
    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stringToColor(Ljava/lang/String;)I
    .registers 9

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v0, v3, :cond_af

    if-eq v0, v2, :cond_af

    if-eq v0, v5, :cond_af

    const/4 v7, 0x6

    if-ne v0, v7, :cond_20

    goto/16 :goto_af

    .line 22
    :cond_20
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    if-le v0, v6, :cond_33

    const/16 v2, 0xa

    if-ge v0, v2, :cond_33

    .line 23
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 27
    :cond_33
    const-string v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_e2

    const-string v2, ","

    if-eqz v0, :cond_4d

    .line 28
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0, v2}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    goto :goto_65

    .line 31
    :cond_4d
    const-string v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0, v2}, Lio/dcloud/common/util/PdrUtil;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_62} :catch_e2

    goto :goto_64

    :cond_63
    const/4 p0, 0x0

    :goto_64
    const/4 v0, 0x0

    :goto_65
    const/16 v2, 0xff

    if-eqz p0, :cond_a0

    const/4 v3, 0x2

    if-nez v0, :cond_80

    .line 38
    :try_start_6c
    aget-object v0, p0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_a0

    .line 39
    :try_start_72
    aget-object v4, p0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_78} :catch_a2

    .line 40
    :try_start_78
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_9d

    move v3, p0

    goto :goto_a6

    .line 42
    :cond_80
    :try_start_80
    aget-object v0, p0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_86} :catch_a0

    .line 43
    :try_start_86
    aget-object v4, p0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8c} :catch_a2

    .line 44
    :try_start_8c
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_92} :catch_9d

    int-to-float v6, v2

    .line 45
    :try_start_93
    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_99} :catch_a6

    mul-float v6, v6, p0

    float-to-int v2, v6

    goto :goto_a6

    :catch_9d
    const/16 v3, 0xff

    goto :goto_a6

    :catch_a0
    :cond_a0
    const/16 v0, 0xff

    :catch_a2
    const/16 v3, 0xff

    const/16 v4, 0xff

    :catch_a6
    :goto_a6
    shl-int/lit8 p0, v2, 0x18

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    shl-int/lit8 v0, v4, 0x8

    add-int/2addr p0, v0

    add-int/2addr p0, v3

    goto :goto_e3

    :cond_af
    :goto_af
    if-eq v0, v3, :cond_b3

    if-ne v0, v2, :cond_b7

    .line 46
    :cond_b3
    :try_start_b3
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 48
    :cond_b7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_da

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_c2
    if-ge v4, v5, :cond_d6

    .line 51
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 53
    :cond_d6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    :cond_da
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_de} :catch_e2

    const/high16 v0, -0x1000000

    add-int/2addr p0, v0

    return p0

    :catch_e2
    const/4 p0, -0x1

    :goto_e3
    return p0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method public static toHexFromColor(I)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_58
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    if-eqz p2, :cond_40

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    .line 6
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    check-cast v4, Landroid/view/ViewGroup;

    const/4 p0, 0x0

    invoke-virtual {v4, v5, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " w="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";h="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_40
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 12
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.PdrUtil.AnonymousClass1 (io.dcloud.common.util.PdrUtil$1)
.class Lio/dcloud/common/util/PdrUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/PdrUtil;->alert(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ad:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/PdrUtil$1;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/PdrUtil$1;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
