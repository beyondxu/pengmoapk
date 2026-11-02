###### Class io.dcloud.p.b3 (io.dcloud.p.b3)
.class public abstract Lio/dcloud/p/b3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Lorg/json/JSONObject;

.field private static b:Z

.field private static c:Ljava/util/Map;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lio/dcloud/p/b3;->b:Z

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    .line 58
    sput-boolean v0, Lio/dcloud/p/b3;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 6

    if-nez p0, :cond_5

    .line 49
    sget-object p0, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    return-object p0

    .line 50
    :cond_5
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    sget-object p0, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    return-object p0

    .line 55
    :cond_10
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 56
    sget-object p0, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    return-object p0

    .line 58
    :cond_1d
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 59
    sget-object p0, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    return-object p0

    .line 60
    :cond_2a
    sget-boolean v0, Lio/dcloud/p/b3;->d:Z

    if-eqz v0, :cond_31

    .line 61
    sget-object p0, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    return-object p0

    .line 64
    :cond_31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a9

    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 65
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 66
    const-string v0, "03"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_97

    .line 75
    :cond_59
    const-string v0, "01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "06"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_87

    .line 77
    :cond_6a
    const-string v0, "00"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "02"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "07"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_85

    :cond_83
    const/4 p1, 0x4

    goto :goto_88

    :cond_85
    :goto_85
    const/4 p1, 0x1

    goto :goto_88

    :cond_87
    :goto_87
    const/4 p1, 0x3

    .line 84
    :goto_88
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 85
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    goto :goto_ac

    .line 87
    :cond_97
    :goto_97
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 88
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    .line 90
    div-int/lit8 p0, p0, 0x10

    const/4 p1, 0x2

    goto :goto_ac

    :cond_a9
    const/4 p1, 0x0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 109
    :goto_ac
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "carrier"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "cid"

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "lac"

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sput-object v2, Lio/dcloud/p/b3;->c:Ljava/util/Map;

    .line 114
    sput-boolean v1, Lio/dcloud/p/b3;->d:Z

    return-object v2
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    return-object p0

    .line 2
    :cond_5
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 4
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 6
    sget-object p0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    return-object p0

    .line 9
    :cond_18
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_25

    .line 10
    sget-object p0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    return-object p0

    .line 12
    :cond_25
    invoke-static {}, Lio/dcloud/p/b0;->a()Lio/dcloud/p/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/p/b0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 13
    sget-object p0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    return-object p0

    .line 14
    :cond_32
    sget-boolean v0, Lio/dcloud/p/b3;->b:Z

    if-eqz v0, :cond_39

    .line 15
    sget-object p0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    return-object p0

    .line 16
    :cond_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    if-eqz p0, :cond_e7

    .line 21
    :try_start_49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLastKnownLocation"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 23
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "gps"

    aput-object v4, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    if-nez v3, :cond_86

    .line 25
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "network"

    aput-object v4, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    if-nez v3, :cond_86

    .line 27
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "passive"

    aput-object v4, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/location/Location;

    :cond_86
    if-eqz v3, :cond_e7

    .line 30
    const-string p0, "android.location.Location"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 31
    const-string v2, "getLongitude"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 32
    const-string v5, "getLatitude"

    invoke-virtual {p0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 33
    const-string v6, "getAccuracy"

    invoke-virtual {p0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 34
    const-string v7, "getTime"

    invoke-virtual {p0, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    const-string v7, "lon"

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    const-string v2, "lat"

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    const-string v2, "accuracy"

    invoke-virtual {v6, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    const-string v2, "ts"

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_e7} :catch_e7

    .line 47
    :catch_e7
    :cond_e7
    sput-object v0, Lio/dcloud/p/b3;->a:Lorg/json/JSONObject;

    .line 48
    sput-boolean v1, Lio/dcloud/p/b3;->b:Z

    return-object v0
.end method
