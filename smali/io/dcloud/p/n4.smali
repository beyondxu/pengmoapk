###### Class io.dcloud.p.n4 (io.dcloud.p.n4)
.class public abstract Lio/dcloud/p/n4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Ljava/lang/String; = "0"

.field private static b:Ljava/lang/String; = "1"

.field private static c:Ljava/lang/String; = "3"

.field private static d:Ljava/lang/String; = "4"

.field private static e:Ljava/lang/String; = "5"

.field private static f:Ljava/lang/String; = "6"

.field private static g:Ljava/lang/String; = "7"

.field private static h:Z = false

.field private static i:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "device"

    invoke-static {p0}, Lio/dcloud/p/n4;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "net"

    invoke-static {p0}, Lio/dcloud/p/n4;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "gps"

    invoke-static {p0}, Lio/dcloud/p/b3;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_20

    :catch_20
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "osv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "vendor"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "w"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string v1, "h"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_45} :catch_119

    .line 11
    :try_start_45
    const-string v1, "ip"

    invoke-static {p0}, Lio/dcloud/p/u2;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_4e

    .line 14
    :catch_4e
    :try_start_4e
    invoke-static {p0}, Lio/dcloud/p/y1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_119

    const-string v3, ""

    if-eqz v2, :cond_5b

    move-object v1, v3

    .line 17
    :cond_5b
    :try_start_5b
    const-string v2, "mac"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "dpi"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v1, "density"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 20
    const-string v1, "lan"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v1, "country"

    invoke-static {}, Lio/dcloud/p/l0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v1, "_nl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "tz"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-static {p0}, Lio/dcloud/p/y1;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 27
    array-length v2, v1

    if-lez v2, :cond_c0

    .line 28
    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c1

    :cond_c0
    move-object v1, v3

    .line 30
    :goto_c1
    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_c6} :catch_119

    .line 33
    :try_start_c6
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 34
    invoke-static {}, Lio/dcloud/p/m3;->a()Lio/dcloud/p/m3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/p/m3;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d8} :catch_d9

    goto :goto_da

    :catch_d9
    :cond_d9
    move-object v1, v3

    .line 37
    :goto_da
    :try_start_da
    const-string v2, "oaid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_df} :catch_119

    .line 41
    :try_start_df
    invoke-static {}, Lio/dcloud/p/o1;->a()Lio/dcloud/p/o1;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/p/o1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e7} :catch_e8

    goto :goto_e9

    :catch_e8
    move-object v1, v3

    .line 43
    :goto_e9
    :try_start_e9
    const-string v2, "gaid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-static {p0}, Lio/dcloud/p/y1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f9

    move-object v1, v3

    .line 47
    :cond_f9
    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-static {p0}, Lio/dcloud/p/y1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_109

    goto :goto_10a

    :cond_109
    move-object v3, v1

    .line 52
    :goto_10a
    const-string v1, "imsi"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "ua"

    invoke-static {p0}, Lio/dcloud/p/n4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_118} :catch_119

    goto :goto_11d

    :catch_119
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11d
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .line 3
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "460"

    const-string v2, "10"

    if-eqz v0, :cond_3b

    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5
    :try_start_18
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3b

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 10
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3b} :catch_3b

    .line 17
    :catch_3b
    :cond_3b
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0, v2}, Lio/dcloud/p/b3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 19
    :try_start_44
    const-string v3, "type"

    invoke-static {p0}, Lio/dcloud/p/n4;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string p0, "mcc"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string p0, "mnc"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_57} :catch_57

    :catch_57
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    sget-object p0, Lio/dcloud/p/n4;->i:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_d
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4
    sget-object p0, Lio/dcloud/p/n4;->i:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1a
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_25

    .line 8
    sget-object p0, Lio/dcloud/p/n4;->i:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_25
    sget-boolean v0, Lio/dcloud/p/n4;->h:Z

    if-eqz v0, :cond_2c

    .line 11
    sget-object p0, Lio/dcloud/p/n4;->i:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_2c
    sget-object v0, Lio/dcloud/p/n4;->b:Ljava/lang/String;

    .line 13
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-eqz p0, :cond_83

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 17
    sget-object v0, Lio/dcloud/p/n4;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_4e

    .line 19
    sget-object v0, Lio/dcloud/p/n4;->c:Ljava/lang/String;

    goto :goto_83

    .line 20
    :cond_4e
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_83

    .line 21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_88

    .line 58
    :pswitch_63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 59
    :pswitch_72
    sget-object v0, Lio/dcloud/p/n4;->g:Ljava/lang/String;

    goto :goto_83

    .line 60
    :pswitch_75
    sget-object v0, Lio/dcloud/p/n4;->e:Ljava/lang/String;

    goto :goto_83

    .line 67
    :pswitch_78
    sget-object v0, Lio/dcloud/p/n4;->f:Ljava/lang/String;

    goto :goto_83

    .line 68
    :pswitch_7b
    sget-object v0, Lio/dcloud/p/n4;->e:Ljava/lang/String;

    goto :goto_83

    .line 73
    :pswitch_7e
    sget-object v0, Lio/dcloud/p/n4;->e:Ljava/lang/String;

    goto :goto_83

    .line 74
    :pswitch_81
    sget-object v0, Lio/dcloud/p/n4;->d:Ljava/lang/String;

    .line 111
    :cond_83
    :goto_83
    sput-object v0, Lio/dcloud/p/n4;->i:Ljava/lang/String;

    .line 112
    sput-boolean v1, Lio/dcloud/p/n4;->h:Z

    return-object v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_81
        :pswitch_81
        :pswitch_7e
        :pswitch_81
        :pswitch_7b
        :pswitch_7b
        :pswitch_81
        :pswitch_7e
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_7b
        :pswitch_78
        :pswitch_7b
        :pswitch_78
        :pswitch_63
        :pswitch_75
        :pswitch_75
        :pswitch_63
        :pswitch_72
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "dcloud-ads"

    const-string v1, "u-a"

    invoke-static {p0, v0, v1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 5
    :try_start_22
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 8
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v3}, Landroid/webkit/WebView;->destroy()V

    .line 11
    invoke-static {p0, v0, v1, v2}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_39

    :catchall_39
    :cond_39
    return-object v2
.end method
