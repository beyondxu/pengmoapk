###### Class com.taobao.weex.utils.WXSoInstallMgrSdk (com.taobao.weex.utils.WXSoInstallMgrSdk)
.class public Lcom/taobao/weex/utils/WXSoInstallMgrSdk;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final STARTUPSO:Ljava/lang/String; = "/libweexjsb.so"

.field private static final STARTUPSOANDROID15:Ljava/lang/String; = "/libweexjst.so"

.field private static final X86:Ljava/lang/String; = "x86"

.field private static mAbi:Ljava/lang/String;

.field static mContext:Landroid/app/Application;

.field private static mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private static mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "armeabi"

    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3
    :try_start_a
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 8
    :goto_15
    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 9
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 11
    :cond_1f
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 13
    :cond_29
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    return-object v0
.end method

.method private static _desSoCopyFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_10
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 4
    :catch_f
    const-string p0, "Unknown"

    return-object p0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 4
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz p2, :cond_12

    .line 5
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoad(Ljava/lang/String;)V

    goto :goto_19

    .line 7
    :cond_12
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1b

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0

    :catchall_1b
    move-exception p0

    .line 13
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[WX_KEY_EXCEPTION_SDK_INIT_WX_ERR_COPY_FROM_APK] \n Detail Msg is : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    const-string v0, "_loadUnzipSo"

    const/4 v1, 0x0

    invoke-static {v1, p1, v0, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    const-string p1, ""

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    if-nez v0, :cond_7

    .line 3
    const-string p0, ""

    return-object p0

    .line 6
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static checkSoIsValid(Ljava/lang/String;J)Z
    .registers 11

    .line 1
    const-class v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    .line 0
    const-string/jumbo v1, "weex so size check path :"

    .line 1
    sget-object v2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    return v3

    :cond_b
    const/4 v2, 0x1

    .line 6
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    instance-of v6, v6, Ldalvik/system/PathClassLoader;

    if-eqz v6, :cond_8c

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v3

    .line 13
    :cond_29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, p1, v6

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v3

    .line 16
    :cond_3e
    :goto_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_5b

    return v2

    :catchall_5b
    move-exception p0

    .line 23
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for weex so size check fail exception :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    const-string v0, "checkSoIsValid"

    const/4 v1, 0x0

    invoke-static {v1, p1, v0, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "weex so size check fail exception :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_8c
    return v2
.end method

.method public static copyJssRuntimeSo()V
    .registers 6

    .line 1
    const-string/jumbo v0, "use_runtime_api"

    const-string v1, "0"

    const-string/jumbo v2, "wxapm"

    invoke-static {v2, v0, v1}, Lcom/taobao/weex/utils/WXUtils;->checkGreyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tryUseRunTimeApi ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weex"

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_24

    goto :goto_80

    .line 7
    :cond_24
    :try_start_24
    const-string v0, "copyJssRuntimeSo: "

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string/jumbo v0, "weexjss"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_desSoCopyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_39

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_39
    new-instance v1, Ljava/io/File;

    const-string v3, "libweexjss.so"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    const-string v0, "app_version_code_weex"

    .line 16
    const-string v3, "-1"

    invoke-static {v0, v3}, Lcom/taobao/weex/WXEnvironment;->getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6b

    .line 20
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_6b

    .line 23
    :cond_5d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 24
    sput-boolean v5, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 25
    const-string v0, "copyJssRuntimeSo exist:  return"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_6b
    :goto_6b
    const-class v3, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "weexjssr"

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_81

    :goto_80
    return-void

    .line 34
    :cond_81
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 35
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXFileUtils;->copyFileWithException(Ljava/io/File;Ljava/io/File;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sput-boolean v5, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 40
    const-string v0, "copyJssRuntimeSo: cp end and return "

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_24 .. :try_end_a0} :catchall_a1

    return-void

    :catchall_a1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 43
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "copyJssRuntimeSo:  exception"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copyStartUpSo()V
    .registers 10

    .line 1
    const-string v0, "/cache"

    const-string v1, "/lib"

    const-string v2, "/libweexjsb.so"

    const-string v3, "/data/data/"

    :try_start_8
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 8
    const-string/jumbo v6, "weexjsb"

    .line 16
    invoke-static {v6}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_desSoCopyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_30

    .line 18
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_30
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    .line 22
    const-string v7, "-1"

    invoke-static {v6, v7}, Lcom/taobao/weex/WXEnvironment;->getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_b2

    .line 28
    :cond_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_6d

    .line 29
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6d

    .line 30
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 34
    :cond_6d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_76
    .catchall {:try_start_8 .. :try_end_76} :catchall_ae

    if-nez v1, :cond_8a

    .line 42
    :try_start_78
    const-class v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_8a

    move-object v0, v3

    .line 50
    :catchall_8a
    :cond_8a
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 51
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z

    .line 52
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 56
    :cond_9d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 57
    invoke-static {v0, v8}, Lcom/taobao/weex/utils/WXFileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 59
    :cond_a6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/taobao/weex/WXEnvironment;->writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_8a .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b2
    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;Lcom/taobao/weex/IWXStatisticsListener;)V
    .registers 3

    .line 1
    sput-object p0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    .line 2
    sput-object p1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 3
    sput-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public static initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .registers 8

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p2, "mips"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "initSo"

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    .line 3
    sget-object p0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string p1, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is MIPS"

    invoke-static {v2, p0, v1, p1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0

    .line 11
    :cond_18
    const-string/jumbo p2, "weexcore"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 12
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->copyStartUpSo()V

    .line 43
    :cond_24
    :try_start_24
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz p2, :cond_2c

    .line 44
    invoke-interface {p2, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoadLibrary(Ljava/lang/String;)V

    goto :goto_2f

    .line 46
    :cond_2c
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_33
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_2f} :catch_31

    :goto_2f
    const/4 p0, 0x1

    return p0

    :catch_31
    move-exception p2

    goto :goto_34

    :catch_33
    move-exception p2

    .line 51
    :goto_34
    const-string v3, "armeabi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string/jumbo v3, "x86"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 52
    :cond_45
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Detail Error is: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {v2, v3, v1, p0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    :cond_6a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_71

    return v0

    .line 64
    :cond_71
    throw p2
.end method

.method public static isCPUSupport()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isExist(Ljava/lang/String;I)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isX86()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/armeabi/lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    return v3

    .line 6
    :cond_1b
    sget-object v2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    if-nez v2, :cond_20

    return v3

    .line 11
    :cond_20
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 13
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_2b

    .line 11
    :cond_29
    const-string v4, ""

    .line 17
    :goto_2b
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 20
    :try_start_31
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_35
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_108

    .line 21
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 22
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_49} :catch_e5
    .catchall {:try_start_31 .. :try_end_49} :catchall_e3

    if-eqz v8, :cond_35

    .line 31
    :try_start_4b
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_b7

    .line 35
    :try_start_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "bk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_72
    .catchall {:try_start_52 .. :try_end_72} :catchall_b4

    .line 37
    :try_start_72
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_b1

    const/16 v6, 0x400

    .line 39
    :try_start_78
    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 42
    :goto_7b
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_8a

    .line 44
    invoke-static {v6, v3, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_af

    add-int/2addr v7, v8

    goto :goto_7b

    .line 51
    :cond_8a
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_e3

    goto :goto_92

    :catch_8e
    move-exception v0

    .line 53
    :try_start_8f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_e5
    .catchall {:try_start_8f .. :try_end_92} :catchall_e3

    :goto_92
    if-eqz v2, :cond_9c

    .line 59
    :try_start_94
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98
    .catchall {:try_start_94 .. :try_end_97} :catchall_e3

    goto :goto_9c

    :catch_98
    move-exception v0

    .line 61
    :try_start_99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_e5
    .catchall {:try_start_99 .. :try_end_9c} :catchall_e3

    .line 67
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_e3

    goto :goto_a4

    :catch_a0
    move-exception v0

    .line 69
    :try_start_a1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :goto_a4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a7} :catch_e5
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_e3

    if-lez v7, :cond_ae

    .line 80
    :try_start_a9
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result p0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_e0
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_dd

    return p0

    :cond_ae
    return v3

    :catchall_af
    move-exception p0

    goto :goto_bb

    :catchall_b1
    move-exception p0

    move-object v2, v4

    goto :goto_bb

    :catchall_b4
    move-exception p0

    move-object v1, v4

    goto :goto_ba

    :catchall_b7
    move-exception p0

    move-object v0, v4

    move-object v1, v0

    :goto_ba
    move-object v2, v1

    :goto_bb
    if-eqz v0, :cond_c5

    .line 81
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1
    .catchall {:try_start_bd .. :try_end_c0} :catchall_e3

    goto :goto_c5

    :catch_c1
    move-exception p1

    .line 83
    :try_start_c2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_e5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_e3

    :cond_c5
    :goto_c5
    if-eqz v2, :cond_cf

    .line 89
    :try_start_c7
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_cb
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_e3

    goto :goto_cf

    :catch_cb
    move-exception p1

    .line 91
    :try_start_cc
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_e5
    .catchall {:try_start_cc .. :try_end_cf} :catchall_e3

    :cond_cf
    :goto_cf
    if-eqz v1, :cond_d9

    .line 97
    :try_start_d1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d5
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_e3

    goto :goto_d9

    :catch_d5
    move-exception p1

    .line 99
    :try_start_d6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    :cond_d9
    :goto_d9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_dc} :catch_e5
    .catchall {:try_start_d6 .. :try_end_dc} :catchall_e3

    .line 107
    :try_start_dc
    throw p0
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_dd} :catch_e0
    .catchall {:try_start_dc .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception p0

    move-object v5, v4

    goto :goto_10c

    :catch_e0
    move-exception p0

    move-object v5, v4

    goto :goto_e6

    :catchall_e3
    move-exception p0

    goto :goto_10c

    :catch_e5
    move-exception p0

    .line 128
    :goto_e6
    :try_start_e6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo p2, "unZipSelectedFiles"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WX_KEY_EXCEPTION_SDK_INIT_unZipSelectedFiles] \n Detail msg is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v4, p1, p2, p0, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_106
    .catchall {:try_start_e6 .. :try_end_106} :catchall_e3

    if-eqz v5, :cond_10b

    .line 127
    :cond_108
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    :cond_10b
    return v3

    :goto_10c
    if-eqz v5, :cond_111

    .line 142
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 145
    :cond_111
    throw p0
.end method
