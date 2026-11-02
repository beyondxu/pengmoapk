###### Class io.dcloud.common.util.ADUtils (io.dcloud.common.util.ADUtils)
.class public Lio/dcloud/common/util/ADUtils;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/ADUtils$ADLoadData;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

.field private static final TAG:Ljava/lang/String; = "ADUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/util/ADUtils$1;

    invoke-direct {v0}, Lio/dcloud/common/util/ADUtils$1;-><init>()V

    sput-object v0, Lio/dcloud/common/util/ADUtils;->DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ADHandlerMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    new-array v2, v1, [Ljava/lang/Class;

    if-eqz p1, :cond_1a

    .line 2
    array-length v3, p1

    if-lez v3, :cond_1a

    .line 3
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/Class;

    .line 4
    :goto_c
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    .line 5
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8
    :cond_1a
    const-string v1, "io.dcloud.feature.gg.dcloud.ADHandler"

    invoke-static {v1, p0, v0, v2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    return-object v0
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/ADUtils;->getLoadAppDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/ADUtils$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lio/dcloud/common/util/ADUtils$4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getDdDataForUrl(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    const-string v0, "ad_download_data"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    :try_start_26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    const-string/jumbo v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_36} :catch_39

    if-eqz v1, :cond_1a

    return-object v2

    :catch_39
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDownloadDataKey(J)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_download_data_key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLoadAppDataKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_install_data_key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLoadData(J)Lorg/json/JSONObject;
    .registers 3

    .line 1
    const-string v0, "ad_download_data"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lio/dcloud/common/util/ADUtils;->getDownloadDataKey(J)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string p1, ""

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    :try_start_10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSplashAdpId()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lio/dcloud/common/DHInterface/IApp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    const-string v3, "_adpid_"

    aput-object v3, v0, v4

    const-string v3, "UNIAD_SPLASH_ADPID"

    aput-object v3, v0, v5

    const-string v3, "io.dcloud.feature.gg.AolSplashUtil"

    const-string v4, "getSplashAdpId"

    invoke-static {v3, v4, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadADFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;ZLjava/lang/String;)J
    .registers 19

    if-eqz p9, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v4, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v7, p10

    .line 1
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/Download/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    invoke-direct {p3}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;-><init>()V

    invoke-virtual {p3, p6}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setPath(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->build(Landroid/content/Context;)Lcom/dcloud/android/downloader/domain/DownloadInfo;

    move-result-object p0

    move-object/from16 p2, p8

    .line 6
    invoke-virtual {p0, p2}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setTag(Ljava/lang/Object;)V

    .line 7
    sget-object p2, Lio/dcloud/common/util/ADUtils;->DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

    invoke-virtual {p0, p2}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setDownloadListener(Lcom/dcloud/android/downloader/callback/DownloadListener;)V

    .line 8
    invoke-interface {p1, p0}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->download(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 9
    invoke-virtual {p0}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static loadAppTip(Landroid/content/Context;)V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/ADUtils$3;

    invoke-direct {v0}, Lio/dcloud/common/util/ADUtils$3;-><init>()V

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public static openBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "com.android.browser"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->VIVO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_1a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "openBrowser exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static openDeepLink(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    const/high16 v1, 0x10000000

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    return v0

    :catch_30
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "openDeepLink exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method

.method public static openStreamApp(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V
    .registers 9

    const-string v0, "richurl"

    const-string v1, "arguments"

    .line 1
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v3, "__start_from__"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    const-string p3, "android.intent.action.MAIN"

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_a6

    const-string v3, "io.dcloud.appstream.StreamAppMainActivity"

    if-nez p3, :cond_3b

    .line 5
    :try_start_1b
    const-string p3, "com.qihoo.appstore"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    .line 6
    const-string p3, "io.dcloud.appstream.StreamAppListFakeActivity"

    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    .line 7
    :cond_29
    const-string p3, "com.aspire.mm"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_37

    .line 8
    const-string p3, "io.dcloud.StreamAppLauncherActivity"

    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    .line 10
    :cond_37
    invoke-virtual {v2, p4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    .line 12
    :cond_3b
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    :cond_48
    :goto_48
    const-string p3, "appid"

    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string p1, "is_stream_app"

    const/4 p3, 0x1

    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_9d

    .line 21
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 22
    const-string p1, "__extras__"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x0

    .line 25
    :goto_6b
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_80

    .line 26
    const-string p1, "direct_page"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string p1, "__start_first_web__"

    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_81

    :cond_80
    move p3, p1

    :goto_81
    if-eqz p3, :cond_9d

    .line 31
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    const-string p3, "action"

    const-string p4, "app"

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string p3, "parameters"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string p2, "rules_msg"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9d
    const/high16 p1, 0x10000000

    .line 38
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_a5} :catch_a6

    return-void

    :catch_a6
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "openStreamApp exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ADUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lio/dcloud/WebviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "openUrl exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 4

    .line 1
    const-string v0, "ad_download_data"

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-static {p1, p2}, Lio/dcloud/common/util/ADUtils;->getDownloadDataKey(J)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string p2, ""

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    :try_start_1b
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeLoadAppData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    const-string v0, "ad_install_data"

    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/ADUtils;->getLoadAppDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 7
    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_21

    :catch_1c
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_20
    const/4 v1, 0x0

    .line 12
    :goto_21
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method public static saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/ADUtils$2;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v4, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/dcloud/common/util/ADUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveLoadData(Lio/dcloud/common/util/ADUtils$ADLoadData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "ad_download_data"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    invoke-static {v1, v2}, Lio/dcloud/common/util/ADUtils;->getDownloadDataKey(J)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->url:Ljava/lang/String;

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->pname:Ljava/lang/String;

    const-string v4, "pname"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-wide v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    const-string v5, "id"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10
    iget-wide v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->expiresTime:J

    const-string v5, "expiresTime"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->tid:Ljava/lang/String;

    const-string/jumbo v4, "tid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->appid:Ljava/lang/String;

    const-string v4, "appid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->adid:Ljava/lang/String;

    const-string v4, "adid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->type:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object p0, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->ua:Ljava/lang/String;

    const-string/jumbo v3, "ua"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_76
    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass1 (io.dcloud.common.util.ADUtils$1)
.class Lio/dcloud/common/util/ADUtils$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lcom/dcloud/android/downloader/callback/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ADUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Lcom/dcloud/android/downloader/domain/DownloadInfo;Lcom/dcloud/android/downloader/exception/DownloadException;)V
    .registers 12

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/dcloud/common/util/ADUtils;->getLoadData(J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "appid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p1, "tid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "adid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/dcloud/android/downloader/exception/DownloadException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo p1, "ua"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x20

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public onDownloadSuccess(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V
    .registers 22

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v9, "appid"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "tid"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "adid"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "ua"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x1e

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v1, "pname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v13 .. v19}, Lio/dcloud/common/util/ADUtils;->saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_55
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getAPKInstallIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/dcloud/common/DHInterface/ILoadCallBack;

    if-eqz v1, :cond_7e

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/ILoadCallBack;

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v0}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 12
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    :goto_85
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object v0

    move-object/from16 v1, p1

    .line 15
    invoke-interface {v0, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    return-void
.end method

.method public onDownloading(JJ)V
    .registers 5

    return-void
.end method

.method public onPaused()V
    .registers 1

    return-void
.end method

.method public onRemoved()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onWaited()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass2 (io.dcloud.common.util.ADUtils$2)
.class Lio/dcloud/common/util/ADUtils$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/ADUtils$2;->val$packName:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/util/ADUtils$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/ADUtils$2;->val$appid:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/util/ADUtils$2;->val$tid:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/util/ADUtils$2;->val$adid:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/util/ADUtils$2;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ADUtils$2;->val$context:Landroid/content/Context;

    const-string v1, "ad_install_data"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/util/ADUtils$2;->val$packName:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/ADUtils;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_13
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$2;->val$packName:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_58

    const-string v4, "packName"

    if-eqz v3, :cond_34

    .line 6
    :try_start_1d
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lio/dcloud/common/util/ADUtils$2;->val$path:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->parseApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_28

    return-void

    .line 10
    :cond_28
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/ADUtils;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 13
    :cond_34
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$2;->val$packName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :goto_39
    const-string v3, "appid"

    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$2;->val$appid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string/jumbo v3, "tid"

    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$2;->val$tid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v3, "adid"

    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$2;->val$adid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string/jumbo v3, "ua"

    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$2;->val$ua:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :goto_5c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass3 (io.dcloud.common.util.ADUtils$3)
.class Lio/dcloud/common/util/ADUtils$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/content/Context;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_download_tips1:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass4 (io.dcloud.common.util.ADUtils$4)
.class Lio/dcloud/common/util/ADUtils$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$at:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dec:Ljava/lang/String;

.field final synthetic val$dem:Ljava/lang/String;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/common/util/ADUtils$4;->val$at:I

    iput-object p6, p0, Lio/dcloud/common/util/ADUtils$4;->val$dec:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/util/ADUtils$4;->val$dem:Ljava/lang/String;

    iput-object p8, p0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/common/util/ADUtils$4;->val$at:I

    iget-object v5, p0, Lio/dcloud/common/util/ADUtils$4;->val$dec:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/common/util/ADUtils$4;->val$dem:Ljava/lang/String;

    invoke-static {}, Lio/dcloud/common/util/ADUtils;->getSplashAdpId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lio/dcloud/p/d0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.ADLoadData (io.dcloud.common.util.ADUtils$ADLoadData)
.class public Lio/dcloud/common/util/ADUtils$ADLoadData;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ADUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADLoadData"
.end annotation


# instance fields
.field public adid:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public expiresTime:J

.field public id:J

.field public name:Ljava/lang/String;

.field public pname:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public ua:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "default"

    iput-object v0, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->type:Ljava/lang/String;

    return-void
.end method
