###### Class io.dcloud.common.util.NetworkTypeUtil (io.dcloud.common.util.NetworkTypeUtil)
.class public Lio/dcloud/common/util/NetworkTypeUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x4

.field public static final NETWORK_TYPE_3G:I = 0x5

.field public static final NETWORK_TYPE_4G:I = 0x6

.field public static final NETWORK_TYPE_DISABLED:I = 0x1

.field public static final NETWORK_TYPE_LINE:I = 0x2

.field public static final NETWORK_TYPE_UNKONWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAPN(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1b

    .line 5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1b

    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 8
    :cond_11
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 10
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_43

    .line 11
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 12
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3a

    .line 13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_44

    :pswitch_33
    return v1

    :pswitch_34
    const/4 p0, 0x6

    return p0

    :pswitch_36
    const/4 p0, 0x5

    return p0

    :pswitch_38
    const/4 p0, 0x4

    return p0

    .line 37
    :cond_3a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_42

    const/4 p0, 0x3

    return p0

    :cond_42
    return v1

    :cond_43
    return v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_36
        :pswitch_38
        :pswitch_36
        :pswitch_36
        :pswitch_33
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_36
        :pswitch_34
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method

.method public static isWifiProxy(Landroid/content/Context;)Z
    .registers 2

    .line 5
    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_11

    .line 7
    :cond_f
    const-string v0, "-1"

    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, -0x1

    if-eq v0, p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
