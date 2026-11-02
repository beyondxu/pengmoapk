###### Class io.dcloud.sdk.core.DCloudAOLManager (io.dcloud.sdk.core.DCloudAOLManager)
.class public Lio/dcloud/sdk/core/DCloudAOLManager;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;,
        Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Ljava/lang/String; = ""

.field protected static b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

.field protected static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPersonalAd(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_6
    invoke-interface {v0, p0}, Lio/dcloud/sdk/core/interfaces/AOLLoader;->getPersonalAOL(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;)V
    .registers 4

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_c

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_30

    .line 2
    :cond_c
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_30

    .line 3
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

    if-nez v0, :cond_30

    .line 5
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lio/dcloud/p/r0;->b(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0, p1}, Lio/dcloud/p/r0;->a(Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;)V

    .line 8
    sput-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

    .line 10
    invoke-virtual {v0}, Lio/dcloud/p/r0;->e()V

    .line 11
    invoke-virtual {v0, p0}, Lio/dcloud/p/r0;->a(Landroid/content/Context;)V

    :cond_30
    return-void

    .line 12
    :cond_31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context or config is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initWebViewWithMultiProcess(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3b

    .line 2
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_16

    .line 5
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 6
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static isInit()Z
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setPersonalAd(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p0, p1}, Lio/dcloud/sdk/core/interfaces/AOLLoader;->setPersonalAOL(Landroid/content/Context;Z)V

    :cond_7
    return-void
.end method

.method public static setPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

    if-eqz v0, :cond_12

    if-eqz p0, :cond_a

    .line 7
    invoke-interface {v0, p0}, Lio/dcloud/sdk/core/interfaces/AOLLoader;->setPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V

    return-void

    .line 8
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "config is null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "please init first"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updatePrivacyConfig(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/DCloudAOLManager;->b:Lio/dcloud/sdk/core/interfaces/AOLLoader;

    invoke-interface {v0, p0, p1}, Lio/dcloud/sdk/core/interfaces/AOLLoader;->updatePrivacyConfig(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    .line 2
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "config is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class io.dcloud.sdk.core.DCloudAOLManager.InitConfig (io.dcloud.sdk.core.DCloudAOLManager$InitConfig)
.class public Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/DCloudAOLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitConfig"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->e:Z

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->e:Z

    return v0
.end method

.method public setAdId(Ljava/lang/String;)Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setDebug(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->e:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->c:Ljava/lang/String;

    return-object p0
.end method

###### Class io.dcloud.sdk.core.DCloudAOLManager.PrivacyConfig (io.dcloud.sdk.core.DCloudAOLManager$PrivacyConfig)
.class public abstract Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/DCloudAOLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrivacyConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdult()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetAndroidId()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetBootId()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetIP()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetInstallAppList()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetMacAddress()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetOAID()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanGetRunningApps()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseLocation()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUsePhoneState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseRecordPermission()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseSensor()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseSimOperator()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseStorage()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isCanUseWifiState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isGDTAgreeStrategy()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public userPrivacyConfig()Lorg/json/JSONObject;
    .registers 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method
