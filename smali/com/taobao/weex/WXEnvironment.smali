###### Class com.taobao.weex.WXEnvironment (com.taobao.weex.WXEnvironment)
.class public Lcom/taobao/weex/WXEnvironment;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
    }
.end annotation


# static fields
.field public static AUTO_ADJUST_ENV_DEVICE_WIDTH:Z = false

.field public static AUTO_UPDATE_APPLICATION_SCREEN_SIZE:Z = false

.field private static COPY_SO_DES_DIR:Ljava/lang/String; = null

.field public static final CORE_JSB_SO_NAME:Ljava/lang/String; = "weexjsb"

.field public static CORE_JSB_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_JSC_SO_NAME:Ljava/lang/String; = "jsc"

.field private static CORE_JSC_SO_PATH:Ljava/lang/String; = null

.field private static CORE_JSS_ICU_PATH:Ljava/lang/String; = null

.field public static CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_JSS_SO_NAME:Ljava/lang/String; = "weexjss"

.field private static CORE_JSS_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_JST_SO_NAME:Ljava/lang/String; = "weexjst"

.field public static final CORE_SO_NAME:Ljava/lang/String; = "weexcore"

.field public static final DEV_Id:Ljava/lang/String;

.field public static final EAGLE:Ljava/lang/String; = "eagle"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static JS_LIB_SDK_VERSION:Ljava/lang/String; = null

.field public static volatile JsFrameworkInit:Z = false

.field private static LIB_LD_PATH:Ljava/lang/String; = null

.field public static final OS:Ljava/lang/String; = "android"

.field public static final SETTING_EXCLUDE_X86SUPPORT:Ljava/lang/String; = "env_exclude_x86"

.field public static SETTING_FORCE_VERTICAL_SCREEN:Z = false

.field public static final SYS_MODEL:Ljava/lang/String;

.field public static SYS_VERSION:Ljava/lang/String; = null

.field public static final WEEX_CURRENT_KEY:Ljava/lang/String; = "wx_current_url"

.field public static WXSDK_VERSION:Ljava/lang/String; = null

.field private static isApkDebug:Z = false

.field public static isPerf:Z = false

.field public static volatile isWsFixMode:Z = false

.field private static mViewProt:F = 0.0f

.field private static mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings; = null

.field private static openDebugLog:Z = false

.field private static options:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sApplication:Landroid/app/Application; = null

.field public static sComponentsAndModulesReadyTime:J = 0x0L

.field private static sDebugFlagInit:Z = false

.field public static sDebugMode:Z = false

.field public static sDebugNetworkEventReporterEnable:Z = false

.field public static sDebugServerConnectable:Z = false

.field public static sDebugWsUrl:Ljava/lang/String; = null

.field public static sDefaultWidth:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static sDynamicMode:Z = false

.field public static sDynamicUrl:Ljava/lang/String; = null

.field public static final sForceEnableDevTool:Z = true

.field private static sGlobalFontFamily:Ljava/lang/String;

.field public static sInAliWeex:Z

.field public static sJSFMStartListenerTime:J

.field public static sJSLibInitTime:J

.field public static sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

.field public static sRemoteDebugMode:Z

.field public static sRemoteDebugProxyUrl:Ljava/lang/String;

.field public static sSDKInitExecuteTime:J

.field public static sSDKInitInvokeTime:J

.field public static sSDKInitStart:J

.field public static sSDKInitTime:J

.field public static volatile sUseRunTimeApi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4
    const-string v0, "9.0.0"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    .line 6
    :cond_18
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_2e

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7
    const-string v0, "10.0.0"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    .line 10
    :cond_2e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    .line 18
    const-string v0, "0.29.6"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    .line 20
    const-string v0, "0.28.0"

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getDevId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->DEV_Id:Ljava/lang/String;

    const/16 v0, 0x2ee

    .line 24
    sput v0, Lcom/taobao/weex/WXEnvironment;->sDefaultWidth:I

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 29
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->SETTING_FORCE_VERTICAL_SCREEN:Z

    const/4 v1, 0x1

    .line 34
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    .line 36
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->AUTO_UPDATE_APPLICATION_SCREEN_SIZE:Z

    .line 38
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 43
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugMode:Z

    .line 45
    const-string v2, ""

    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sDebugWsUrl:Ljava/lang/String;

    .line 46
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 47
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 48
    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugProxyUrl:Ljava/lang/String;

    .line 49
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugNetworkEventReporterEnable:Z

    const-wide/16 v3, 0x0

    .line 50
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 52
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    .line 53
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    .line 54
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    .line 56
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 58
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J

    .line 60
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->isWsFixMode:Z

    .line 65
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    .line 67
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sInAliWeex:Z

    .line 69
    sget-object v3, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    sput-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    .line 70
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    .line 71
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    .line 72
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugFlagInit:Z

    .line 74
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    const/4 v1, 0x0

    .line 83
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    .line 85
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 87
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    .line 89
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSC_SO_PATH:Ljava/lang/String;

    .line 91
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    .line 93
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;

    .line 95
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    const v1, 0x443b8000    # 750.0f

    .line 97
    sput v1, Lcom/taobao/weex/WXEnvironment;->mViewProt:F

    .line 106
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    .line 108
    const-string v3, "os"

    const-string v4, "android"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string v3, "osName"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    .line 144
    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static copySoDesDir()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/data/data/"

    :try_start_2
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v1, :cond_15

    .line 3
    const-string v0, "sApplication is null, so copy path will be null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_15
    const-string v1, "/cache/weex/libs"

    .line 9
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 14
    :cond_33
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 19
    :goto_4e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_57

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_57
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_5e

    goto :goto_66

    :catchall_5e
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 27
    :cond_66
    :goto_66
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static extractSo()Z
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_2e

    aget-object v5, v1, v4

    .line 6
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 7
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2b

    .line 9
    :cond_28
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 14
    :cond_2e
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_4e
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 21
    :try_start_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_63
    if-ge v4, v3, :cond_73

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 22
    invoke-static {v5, v1}, Lcom/taobao/weex/utils/WXFileUtils;->extractSo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_71} :catch_75

    if-eqz v5, :cond_63

    :cond_73
    const/4 v0, 0x1

    return v0

    :catch_75
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "extractSo error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_8b
    return v2
.end method

.method private static findIcuPath()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/maps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_3f
    .catchall {:try_start_8 .. :try_end_12} :catchall_3d

    .line 6
    :cond_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 7
    const-string v3, "icudt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x2f

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2e} :catch_3b
    .catchall {:try_start_12 .. :try_end_2e} :catchall_39

    .line 21
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    return-object v0

    .line 22
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3b
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 28
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_49

    goto :goto_49

    :catchall_39
    move-exception v0

    goto :goto_4d

    :catch_3b
    move-exception v0

    goto :goto_41

    :catchall_3d
    move-exception v0

    goto :goto_4c

    :catch_3f
    move-exception v0

    move-object v2, v1

    .line 29
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4a

    if-eqz v2, :cond_49

    .line 33
    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    :goto_49
    return-object v1

    :catchall_4a
    move-exception v0

    move-object v1, v2

    :goto_4c
    move-object v2, v1

    :goto_4d
    if-eqz v2, :cond_52

    .line 34
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52

    .line 38
    :catch_52
    :cond_52
    throw v0
.end method

.method public static findSoPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const-class v0, Lcom/taobao/weex/WXEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s Path is"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'s Path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but file does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 12
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 15
    const-string p0, "cache dir is null"

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 16
    const-string p0, ""

    return-object p0

    .line 19
    :cond_7a
    const-string v3, "/cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_91

    .line 20
    new-instance v0, Ljava/io/File;

    const-string v4, "/lib"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_91
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "use lib so"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_b2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c6

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_c6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z

    move-result p0

    if-eqz p0, :cond_da

    .line 36
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_da
    return-object v0
.end method

.method private static getAppCacheFile()Ljava/lang/String;
    .registers 2

    .line 3
    :try_start_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    .line 5
    const-string v1, "WXEnvironment getAppCacheFile Exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 3

    .line 5
    :try_start_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    .line 9
    const-string v1, "WXEnvironment getAppVersionName Exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 4
    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConfig()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ltr"

    const-string v1, "layoutDirection"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v3, "os"

    const-string v4, "android"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppCacheFile()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cacheDir"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->DEV_Id:Ljava/lang/String;

    const-string v4, "devId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    const-string/jumbo v4, "sysVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    const-string/jumbo v4, "sysModel"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "weexVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    const-string v4, "logLevel"

    if-eqz v3, :cond_51

    .line 10
    const-string v3, "log"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 12
    :cond_51
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    invoke-interface {v3}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_5a
    :try_start_5a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isLayoutDirectionRTL()Z

    move-result v3

    if-eqz v3, :cond_63

    const-string v3, "rtl"

    goto :goto_64

    :cond_63
    move-object v3, v0

    .line 16
    :goto_64
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_67} :catch_68

    goto :goto_6b

    .line 18
    :catch_68
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_6b
    :try_start_6b
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 23
    const-string v0, "debugMode"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_79
    const-string v0, "scale"

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "androidStatusBarHeight"

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_9e} :catch_9f

    goto :goto_a5

    :catch_9f
    move-exception v0

    .line 29
    const-string v1, "WXEnvironment scale Exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :goto_a5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 32
    const-string v0, "appName"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_bf

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v1, :cond_bf

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    return-object v2
.end method

.method public static getCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 4
    :cond_5
    const-string v1, "crash"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 8
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomOptions(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCustomOptions()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/taobao/weex/WXEnvironment;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getWXDefaultSettings()Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_16

    .line 5
    :cond_10
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    monitor-exit v0

    return-object p0

    :cond_16
    :goto_16
    monitor-exit v0

    return-object p1

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private static getDevId()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    :try_start_4
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_20

    .line 5
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 1
    const-string p0, ""

    return-object p0

    .line 3
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "files"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalFontFamilyName()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sGlobalFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibJScRealPath()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public static getLibJssIcuPath()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->findIcuPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    .line 5
    :cond_e
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibJssRealPath()Ljava/lang/String;
    .registers 2

    .line 1
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "test-> findLibJssRuntimeRealPath "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_23
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7
    const-string/jumbo v0, "weexjss"

    invoke-static {v0}, Lcom/taobao/weex/WXEnvironment;->findSoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "test-> findLibJssRealPath "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 11
    :cond_48
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibLdPath()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2
    const-class v0, Lcom/taobao/weex/WXEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLdLibraryPath"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_21} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_21} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_30

    :catch_22
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_30

    :catch_27
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30

    :catch_2c
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 21
    :cond_30
    :goto_30
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 23
    :try_start_38
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJScRealPath()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :cond_6c
    :goto_6c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLibLdPath is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getViewProt()F
    .registers 1

    .line 1
    sget v0, Lcom/taobao/weex/WXEnvironment;->mViewProt:F

    return v0
.end method

.method public static declared-synchronized getWXDefaultSettings()Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
    .registers 3

    const-class v0, Lcom/taobao/weex/WXEnvironment;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    if-nez v1, :cond_18

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2
    new-instance v1, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    .line 4
    :cond_18
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public static isApkDebugable()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable(Landroid/app/Application;)Z

    move-result v0

    return v0
.end method

.method public static isApkDebugable(Landroid/app/Application;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2
    :cond_4
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    if-eqz p0, :cond_9

    return v0

    .line 6
    :cond_9
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->sDebugFlagInit:Z

    if-eqz p0, :cond_10

    .line 7
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    return p0

    .line 9
    :cond_10
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    const/4 v1, 0x1

    if-nez p0, :cond_1c

    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz p0, :cond_1c

    .line 10
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    goto :goto_26

    .line 11
    :cond_1c
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    if-eqz p0, :cond_26

    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez p0, :cond_26

    .line 12
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    .line 29
    :cond_26
    :goto_26
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugFlagInit:Z

    .line 30
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    return p0
.end method

.method public static isCPUSupport()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "env_exclude_x86"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isX86()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 3
    :goto_1e
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isCPUSupport()Z

    move-result v1

    if-eqz v1, :cond_27

    if-nez v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 4
    :goto_28
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WXEnvironment.sSupport:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "isX86AndExclueded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_47
    return v2
.end method

.method public static isHardwareSupport()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isTableDevice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isTabletDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 4
    :cond_1b
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isCPUSupport()Z

    move-result v0

    return v0
.end method

.method public static isLayoutDirectionRTL()Z
    .registers 2

    .line 2
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/taobao/weex/R$bool;->weex_is_right_to_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isOpenDebugLog()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    return v0
.end method

.method public static isPerf()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    return v0
.end method

.method public static isSupport()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WXSDKEngine.isInitialized():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 5
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isHardwareSupport()Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public static setApkDebugable(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 3
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    :cond_7
    return-void
.end method

.method public static setGlobalFontFamily(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set global font family: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalFontFamily"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p0, Lcom/taobao/weex/WXEnvironment;->sGlobalFontFamily:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    if-nez p1, :cond_21

    .line 5
    invoke-static {p0}, Lcom/taobao/weex/utils/TypefaceUtil;->removeFontDO(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_21
    new-instance v0, Lcom/taobao/weex/utils/FontDO;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 8
    invoke-static {v0}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Add new font: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TypefaceUtil"

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public static setOpenDebugLog(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    return-void
.end method

.method public static setViewProt(F)V
    .registers 1

    .line 1
    sput p0, Lcom/taobao/weex/WXEnvironment;->mViewProt:F

    return-void
.end method

.method public static declared-synchronized writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/taobao/weex/WXEnvironment;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getWXDefaultSettings()Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_1b

    .line 7
    :cond_16
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->saveValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    monitor-exit v0

    return-void

    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method


# virtual methods
.method public initMetrics()V
    .registers 1

    return-void
.end method

###### Class com.taobao.weex.WXEnvironment.WXDefaultSettings (com.taobao.weex.WXEnvironment$WXDefaultSettings)
.class public Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXDefaultSettings"
.end annotation


# instance fields
.field private configName:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "weex_default_settings"

    iput-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->configName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_14

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_14
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "get default settings "

    const-string v1, "get default settings "

    monitor-enter p0

    .line 1
    :try_start_5
    iget-object v2, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2f

    .line 6
    :cond_10
    iget-object v1, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_48

    monitor-exit p0

    return-object p2

    .line 8
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " return default value :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_48

    monitor-exit p0

    return-object p2

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public declared-synchronized saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "save default settings "

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v1, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_39

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_39

    .line 6
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    monitor-exit p0

    return-void

    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method
