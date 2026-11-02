###### Class io.dcloud.common.adapter.util.UEH (io.dcloud.common.adapter.util.UEH)
.class public Lio/dcloud/common/adapter/util/UEH;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final CRASH_DIRECTORY:Ljava/lang/String; = "crash/"

.field private static final SAVE_CRASH_LOG:Z = true

.field private static formatter:Ljava/text/DateFormat;

.field public static sInited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/dcloud/common/adapter/util/UEH;->formatter:Ljava/text/DateFormat;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lio/dcloud/common/adapter/util/UEH;->sInited:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/io/File;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/UEH;->handleUncaughtException(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/util/UEH;->commitUncatchException(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static catchUncaughtException(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/UEH;->sInited:Z

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/util/UEH$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/util/UEH$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p0, 0x1

    .line 21
    sput-boolean p0, Lio/dcloud/common/adapter/util/UEH;->sInited:Z

    :cond_f
    return-void
.end method

.method private static commitBaseUncatchInfo(Landroid/content/Context;Ljava/lang/StringBuffer;)V
    .registers 10

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 5
    :goto_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const-string v2, "s=99"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    const-string v2, "&p=a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 10
    invoke-static {p0}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&net="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&dcid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->getDCloudDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&carrierid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_7a

    .line 17
    invoke-static {p0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_7a
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&ua="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :cond_91
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    if-nez v2, :cond_97

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 25
    :cond_97
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 27
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-nez v3, :cond_a8

    .line 28
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    .line 29
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 32
    :cond_a8
    invoke-static {p0}, Lio/dcloud/p/e3;->a(Landroid/content/Context;)Lio/dcloud/p/e3$a;

    move-result-object v3

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lio/dcloud/common/util/BaseInfo;->startTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&pv="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lio/dcloud/common/adapter/util/AndroidResources;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&root="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->hasRootPrivilege()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&t="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&duration="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&fore="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    invoke-static {v5}, Lio/dcloud/common/util/AppStatus;->getAppStatus(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11b

    const/4 v5, 0x0

    goto :goto_11c

    :cond_11b
    const/4 v5, 0x1

    :goto_11c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-static {}, Lio/dcloud/common/util/HarmonyUtils;->isHarmonyOs()Z

    move-result v4

    if-eqz v4, :cond_12f

    const-string v4, "HarmonyOS"

    goto :goto_131

    :cond_12f
    const-string v4, "Android"

    :goto_131
    const-string v5, "&osn="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&batlevel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getBatteryLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&battemp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getTemperature()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&channel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->getAnalysisChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&md="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "&os="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&osv="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&appid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v0, "&vb=1.9.9.82650"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&appcount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&wvcount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&pn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&memuse="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v3, Lio/dcloud/p/e3$a;->a:J

    iget-wide v4, v3, Lio/dcloud/p/e3$a;->b:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&memtotal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v3, Lio/dcloud/p/e3$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&diskuse="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v3, Lio/dcloud/p/e3$a;->d:J

    iget-wide v4, v3, Lio/dcloud/p/e3$a;->c:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&disktotal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v3, Lio/dcloud/p/e3$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&vd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&abis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/common/adapter/util/UEH;->getAbis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v0, "&psdk=0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&it="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&fv="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2af

    const-string v1, "pdr"

    const-string v2, "F_V"

    invoke-static {p0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b1

    :cond_2af
    sget-object p0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    :goto_2b1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    sget-object p0, Lio/dcloud/common/util/BaseInfo;->sLastAppVersionName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d6

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "&v="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sLastAppVersionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :cond_2d6
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getUniStatistics()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2f5

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "&us="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getUniStatistics()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f5
    return-void
.end method

.method private static commitErrorLog(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/util/UEH$3;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/util/UEH$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static commitUncatchException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/UEH;->commitBaseUncatchInfo(Landroid/content/Context;Ljava/lang/StringBuffer;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "&etype="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "&log="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "&eurl="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/UEH;->commitErrorLog(Ljava/lang/String;)V

    return-void
.end method

.method private static commitUncatchException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 4

    .line 7
    invoke-static {p0}, Lio/dcloud/p/s;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 10
    :cond_7
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 11
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/UEH;->commitBaseUncatchInfo(Landroid/content/Context;Ljava/lang/StringBuffer;)V

    .line 16
    const-string p0, "&etype=1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "&log="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/util/UEH;->commitErrorLog(Ljava/lang/String;)V

    return-void
.end method

.method private static getAbis()Ljava/lang/String;
    .registers 4

    .line 2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 7
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    .line 8
    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1a

    const/16 v3, 0x2c

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 14
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleUncaughtException(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/io/File;
    .registers 10

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_42

    aget-object v5, v1, v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_f2

    const/4 v6, 0x1

    .line 5
    :try_start_13
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v5

    .line 9
    :try_start_3c
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 13
    :cond_42
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 14
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v1, "mounted"

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5d} :catch_f2

    const-string v3, "crash/"

    if-eqz v1, :cond_7a

    .line 23
    :try_start_61
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->getCrashLogsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_96

    .line 25
    :cond_7a
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 26
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    :goto_96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_9f

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_9f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 35
    sget-object p0, Lio/dcloud/common/adapter/util/UEH;->formatter:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".log"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_d5} :catch_f2

    .line 38
    :try_start_d5
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 41
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 42
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_ee} :catch_ef

    goto :goto_f7

    :catch_ef
    move-exception p0

    move-object v0, v3

    goto :goto_f3

    :catch_f2
    move-exception p0

    .line 44
    :goto_f3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v0

    :goto_f7
    return-object v3
.end method

.method public static uploadNativeUncaughtException(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dcCrashDump"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_18

    .line 6
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_19

    :goto_18
    return-void

    .line 11
    :cond_19
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lio/dcloud/common/adapter/util/UEH$2;

    invoke-direct {v3, p0, v1, v0}, Lio/dcloud/common/adapter/util/UEH$2;-><init>(Landroid/content/Context;[Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.UEH.AnonymousClass1 (io.dcloud.common.adapter.util.UEH$1)
.class Lio/dcloud/common/adapter/util/UEH$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/UEH;->catchUncaughtException(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/UEH$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    const-string p1, "UncaughtExceptionHandler"

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/UEH$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/UEH;->access$000(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/io/File;

    .line 4
    :try_start_7
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->getCmitInfo(Ljava/lang/String;)Lio/dcloud/common/util/BaseInfo$CmtInfo;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/util/BaseInfo$CmtInfo;->rptCrs:Z

    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/util/UEH$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/UEH;->access$100(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_16
    const-wide/16 v0, 0xbb8

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_25

    :catch_1c
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    const-string v0, "commitUncatchException"

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_25
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.UEH.AnonymousClass2 (io.dcloud.common.adapter.util.UEH$2)
.class Lio/dcloud/common/adapter/util/UEH$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/UEH;->uploadNativeUncaughtException(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$externalReportPath:Ljava/io/File;

.field final synthetic val$listFiles:[Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/UEH$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/UEH$2;->val$listFiles:[Ljava/io/File;

    iput-object p3, p0, Lio/dcloud/common/adapter/util/UEH$2;->val$externalReportPath:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/UEH$2$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/util/UEH$2$1;-><init>(Lio/dcloud/common/adapter/util/UEH$2;)V

    .line 15
    iget-object v1, p0, Lio/dcloud/common/adapter/util/UEH$2;->val$listFiles:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x2

    const-string v6, "\\."

    const/4 v7, 0x1

    if-ge v4, v2, :cond_31

    aget-object v8, v1, v4

    .line 16
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 17
    array-length v9, v6

    if-ge v9, v5, :cond_1e

    goto :goto_2e

    .line 20
    :cond_1e
    array-length v5, v6

    sub-int/2addr v5, v7

    aget-object v5, v6, v5

    const-string/jumbo v6, "zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 21
    invoke-interface {v0, v3, v8}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 24
    :cond_31
    iget-object v1, p0, Lio/dcloud/common/adapter/util/UEH$2;->val$listFiles:[Ljava/io/File;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v2, :cond_98

    aget-object v8, v1, v4

    .line 26
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 27
    array-length v10, v9

    if-ge v10, v5, :cond_45

    goto :goto_98

    .line 30
    :cond_45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    .line 31
    :goto_4b
    array-length v12, v9

    sub-int/2addr v12, v7

    if-ge v11, v12, :cond_57

    .line 32
    aget-object v12, v9, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 34
    :cond_57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 35
    new-array v10, v7, [Ljava/io/File;

    aput-object v8, v10, v3

    .line 36
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lio/dcloud/common/adapter/util/UEH$2;->val$externalReportPath:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    :try_start_87
    invoke-static {v10, v11}, Lio/dcloud/common/util/ZipUtils;->zipFiles([Ljava/io/File;Ljava/io/File;)V

    .line 39
    invoke-static {v8}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception v8

    .line 41
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :goto_92
    invoke-interface {v0, v3, v11}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_98
    :goto_98
    return-void
.end method

###### Class io.dcloud.common.adapter.util.UEH.AnonymousClass2.AnonymousClass1 (io.dcloud.common.adapter.util.UEH$2$1)
.class Lio/dcloud/common/adapter/util/UEH$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/UEH$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/util/UEH$2;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/UEH$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/UEH$2$1;->this$0:Lio/dcloud/common/adapter/util/UEH$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p2, Ljava/io/File;

    .line 2
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/util/UEH$2$1;->this$0:Lio/dcloud/common/adapter/util/UEH$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/util/UEH$2;->val$context:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-static {v0, v1, p1, v2}, Lio/dcloud/common/adapter/util/UEH;->commitUncatchException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.adapter.util.UEH.AnonymousClass3 (io.dcloud.common.adapter.util.UEH$3)
.class Lio/dcloud/common/adapter/util/UEH$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/UEH;->commitErrorLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/UEH$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "YHx8eHsyJydreiZsa2RnfWwmZm18JmtmJw=="

    invoke-static {v1}, Lio/dcloud/common/util/Base64;->decode2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "collect/crash"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/util/UEH$3;->val$msg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    return-void
.end method
