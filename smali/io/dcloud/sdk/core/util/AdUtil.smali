###### Class io.dcloud.sdk.core.util.AdUtil (io.dcloud.sdk.core.util.AdUtil)
.class public Lio/dcloud/sdk/core/util/AdUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomPrivacyConfig()Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
    .registers 1

    .line 2
    sget-object v0, Lio/dcloud/sdk/core/util/AdUtil;->a:Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;

    return-object v0
.end method

.method public static getCustomPrivacyConfig(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "dcloud-ads"

    const-string v1, "CustomPrivacyConfig"

    invoke-static {p0, v0, v1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDCloudPrivacyConfig(Landroid/content/Context;)Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/dcloud/sdk/core/util/AdUtil;->getCustomPrivacyConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdUtil;->getPrivacyConfig(Lorg/json/JSONObject;)Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_10

    .line 1
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    :goto_10
    return-object p2

    :cond_11
    :goto_11
    return-object v0
.end method

.method public static getPersonalAd(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const-string v0, "dcloud-ads"

    const-string v1, "PersonalizedAdEnable"

    invoke-static {p0, v0, v1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    const-string p0, "true"

    .line 5
    :cond_10
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getPrivacyConfig(Lorg/json/JSONObject;)Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/sdk/core/util/AdUtil$1;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/core/util/AdUtil$1;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static setCustomPrivacyConfig(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "dcloud-ads"

    const-string v1, "CustomPrivacyConfig"

    invoke-static {p0, v0, v1, p1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCustomPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V
    .registers 1

    .line 2
    sput-object p0, Lio/dcloud/sdk/core/util/AdUtil;->a:Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;

    return-void
.end method

.method public static setPersonalAd(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dcloud-ads"

    const-string v1, "PersonalizedAdEnable"

    invoke-static {p0, v0, v1, p1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.sdk.core.util.AdUtil.AnonymousClass1 (io.dcloud.sdk.core.util.AdUtil$1)
.class Lio/dcloud/sdk/core/util/AdUtil$1;
.super Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/util/AdUtil;->getPrivacyConfig(Lorg/json/JSONObject;)Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdult()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isAdult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetAndroidId()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetAndroidId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetBootId()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetBootId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetIP()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetIP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetInstallAppList()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetInstallAppList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetMacAddress()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetMacAddress"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetOAID()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetOAID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanGetRunningApps()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanGetRunningApps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUseLocation()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUseLocation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUsePhoneState()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUsePhoneState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUseRecordPermission()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUseRecordPermission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUseSensor()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUseSensor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUseSimOperator()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUseSimOperator"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUseStorage()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUseStorage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCanUseWifiState()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isCanUseWifiState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGDTAgreeStrategy()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "isGDTAgreeStrategy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public userPrivacyConfig()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdUtil$1;->a:Lorg/json/JSONObject;

    const-string v1, "userPrivacyConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_f
    return-object v0
.end method
