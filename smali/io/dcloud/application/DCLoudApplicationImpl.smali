###### Class io.dcloud.application.DCLoudApplicationImpl (io.dcloud.application.DCLoudApplicationImpl)
.class public Lio/dcloud/application/DCLoudApplicationImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;,
        Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;,
        Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;
    }
.end annotation


# static fields
.field private static mInstance:Lio/dcloud/application/DCLoudApplicationImpl;


# instance fields
.field private Tag:Ljava/lang/String;

.field private activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

.field private isInit:Z

.field isUniMP:Z

.field private mApplication:Landroid/content/Context;

.field private nativeAppInfo:Lio/dcloud/p/i3;

.field public topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public topActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "DCLoudApplicationImpl"

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    .line 167
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->topActivity:Landroid/app/Activity;

    return-void
.end method

.method private initLanguageConfig(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    const-string v1, "language_uni_broad_cast_intent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;

    invoke-direct {v1, p0}, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;)V

    .line 4
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_27

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/language/LanguageUtil;->initAppLanguageForAppBeforeO(Landroid/content/Context;)V

    :cond_27
    return-void
.end method

.method private initX5(Landroid/app/Application;Z)V
    .registers 4

    if-eqz p2, :cond_8

    .line 1
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->allowDownloadWithoutWiFi:Z

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;ZLio/dcloud/common/DHInterface/ICallBack;)V

    :cond_8
    return-void
.end method

.method public static self()Lio/dcloud/application/DCLoudApplicationImpl;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {v0}, Lio/dcloud/application/DCLoudApplicationImpl;-><init>()V

    sput-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    return-object v0
.end method


# virtual methods
.method public addActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->addListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_7
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object p1

    .line 7
    :cond_c
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_15

    .line 8
    invoke-static {p1}, Lio/dcloud/p/k;->a(Landroid/content/Context;)V

    :cond_15
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    return-object v0
.end method

.method public getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->nativeAppInfo:Lio/dcloud/p/i3;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/p/i3;

    invoke-direct {v0, p1}, Lio/dcloud/p/i3;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->nativeAppInfo:Lio/dcloud/p/i3;

    .line 4
    :cond_b
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->nativeAppInfo:Lio/dcloud/p/i3;

    return-object p1
.end method

.method public init(Landroid/app/Application;Z)V
    .registers 6

    .line 1
    iput-boolean p2, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_e

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    .line 7
    :cond_e
    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    sput-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    .line 8
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->onCreate(Landroid/app/Application;)V

    .line 9
    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    if-eqz v1, :cond_22

    .line 10
    invoke-virtual {p0, p1, v0}, Lio/dcloud/application/DCLoudApplicationImpl;->webviewSetPath(Landroid/content/Context;Z)V

    :cond_22
    if-eqz p2, :cond_2a

    .line 13
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->initGsmCdmaCell()V

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/TelephonyUtil;->updateIMEI(Landroid/content/Context;)Ljava/lang/String;

    :cond_2a
    return-void
.end method

.method public isInit()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    return v0
.end method

.method public isMainProcess(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_39

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 4
    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-nez v1, :cond_38

    .line 5
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":unimp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 6
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    .line 7
    sput-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    :cond_38
    return p2

    :cond_39
    return v0
.end method

.method public onApp2Back()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->onApp2Back()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;Z)V

    .line 8
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_24

    .line 10
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->init(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/NativeCrashManager;->initNativeCrash(Landroid/content/Context;)V

    .line 16
    :cond_24
    invoke-virtual {p0, p1, v2}, Lio/dcloud/application/DCLoudApplicationImpl;->isMainProcess(Landroid/content/Context;Z)Z

    move-result v1

    .line 17
    invoke-virtual {p0, p1, v2}, Lio/dcloud/application/DCLoudApplicationImpl;->webviewSetPath(Landroid/content/Context;Z)V

    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    .line 19
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->closeAndroidPDialog()V

    .line 20
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;

    move-result-object v4

    .line 21
    invoke-static {v4}, Lio/dcloud/p/e1;->a(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    .line 22
    sput-boolean v3, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lio/dcloud/common/util/AppRuntime;->onCreateProcess(Landroid/app/Application;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 25
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    if-nez v5, :cond_4d

    if-nez v1, :cond_57

    :cond_4d
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-eqz v1, :cond_6b

    .line 28
    :cond_57
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v1, :cond_65

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-eqz v1, :cond_68

    .line 29
    :cond_65
    invoke-static {v4}, Lio/dcloud/common/util/AppRuntime;->initWeex(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    .line 31
    :cond_68
    invoke-direct {p0, p1, v2}, Lio/dcloud/application/DCLoudApplicationImpl;->initX5(Landroid/app/Application;Z)V

    .line 33
    :cond_6b
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-nez v1, :cond_74

    .line 34
    invoke-static {p1}, Lio/dcloud/p/k;->a(Landroid/app/Application;)V

    .line 37
    :cond_74
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    .line 39
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->setContext(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lio/dcloud/common/adapter/util/UEH;->catchUncaughtException(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lio/dcloud/common/adapter/util/UEH;->uploadNativeUncaughtException(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isSupportOaid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a4

    .line 48
    :try_start_86
    const-string v1, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 49
    const-string v4, "InitEntry"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a4} :catch_a4

    .line 56
    :catch_a4
    :cond_a4
    new-instance v0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    invoke-direct {v0, p0, v2}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;Lio/dcloud/application/DCLoudApplicationImpl$1;)V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 59
    invoke-virtual {p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->initLanguageConfig(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object p1

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/common/ui/PrivacyManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public removeActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->removeListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_7
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 2
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    :cond_6
    return-void
.end method

.method public stopActivityStatusListener()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->stopListener()V

    :cond_7
    return-void
.end method

.method protected supportMultiDex(Landroid/content/Context;)V
    .registers 8

    .line 1
    :try_start_0
    const-string v0, "androidx.multidex.MultiDex"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "install"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method public webviewSetPath(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_19

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/application/DCLoudApplicationImpl;->isMainProcess(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_19

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

###### Class io.dcloud.application.DCLoudApplicationImpl.AnonymousClass1 (io.dcloud.application.DCLoudApplicationImpl$1)
.class synthetic Lio/dcloud/application/DCLoudApplicationImpl$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.application.DCLoudApplicationImpl.ActivityCallbacks (io.dcloud.application.DCLoudApplicationImpl$ActivityCallbacks)
.class Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityCallbacks"
.end annotation


# instance fields
.field private activityStartCount:I

.field private volatile isBack:Z

.field private isStop:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/application/DCLoudApplicationImpl;


# direct methods
.method private constructor <init>(Lio/dcloud/application/DCLoudApplicationImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    .line 5
    iput-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    .line 6
    iput-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/application/DCLoudApplicationImpl;Lio/dcloud/application/DCLoudApplicationImpl$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;)V

    return-void
.end method


# virtual methods
.method public addListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    .line 3
    :cond_b
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    iget-object v1, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActivity:Landroid/app/Activity;

    if-ne v1, p1, :cond_9

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActivity:Landroid/app/Activity;

    :cond_9
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    iget-object v0, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    iget-object v0, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    iput-object p1, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActivity:Landroid/app/Activity;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    goto :goto_34

    .line 4
    :cond_8
    iget p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    if-eqz p1, :cond_34

    .line 5
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    .line 6
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    .line 7
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;

    if-eqz v0, :cond_22

    .line 9
    invoke-interface {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;->onFront()V

    goto :goto_22

    .line 13
    :cond_34
    :goto_34
    iget p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    return-void
.end method

.method public onApp2Back()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    if-nez v0, :cond_32

    .line 5
    const-string v0, "DCloud_uniAd"

    const-string v1, "app is in back"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 7
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;

    if-eqz v1, :cond_20

    .line 9
    invoke-interface {v1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;->onBack()V

    goto :goto_20

    :cond_32
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    return-void
.end method

.method public removeListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public stopListener()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    return-void
.end method

###### Class io.dcloud.application.DCLoudApplicationImpl.ActivityStatusListener (io.dcloud.application.DCLoudApplicationImpl$ActivityStatusListener)
.class public interface abstract Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityStatusListener"
.end annotation


# virtual methods
.method public abstract onBack()V
.end method

.method public abstract onFront()V
.end method

###### Class io.dcloud.application.DCLoudApplicationImpl.DynamicLanguageReceiver (io.dcloud.application.DCLoudApplicationImpl$DynamicLanguageReceiver)
.class public Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicLanguageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/application/DCLoudApplicationImpl;


# direct methods
.method public constructor <init>(Lio/dcloud/application/DCLoudApplicationImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const v0, 0x10008000

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
