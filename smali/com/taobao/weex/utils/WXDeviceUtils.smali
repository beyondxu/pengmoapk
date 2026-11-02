###### Class com.taobao.weex.utils.WXDeviceUtils (com.taobao.weex.utils.WXDeviceUtils)
.class public Lcom/taobao/weex/utils/WXDeviceUtils;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoResize(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {p0}, Lcom/taobao/weex/utils/WXDeviceUtils;->isMateX(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDeviceUtils;->isGalaxyFold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    return v0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public static isGalaxyFold(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SM-F9000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isMateX(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "unknownRLI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "HWTAH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
