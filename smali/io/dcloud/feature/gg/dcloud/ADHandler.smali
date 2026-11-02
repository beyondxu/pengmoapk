###### Class io.dcloud.feature.gg.dcloud.ADHandler (io.dcloud.feature.gg.dcloud.ADHandler)
.class public Lio/dcloud/feature/gg/dcloud/ADHandler;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;,
        Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;,
        Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;,
        Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;
    }
.end annotation


# static fields
.field public static final AdTag:Ljava/lang/String; = "_adio.dcloud.feature.ad.dcloud.ADHandler"

.field private static final File_Data:Ljava/lang/String; = "data.json"

.field private static final File_Gif:Ljava/lang/String; = "img.gif"

.field private static final File_Img:Ljava/lang/String; = "img.png"

.field private static final File_S:Ljava/lang/String; = "s.txt"

.field private static final File_Tid:Ljava/lang/String; = "tid.txt"

.field private static expiresFileList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Lio/dcloud/p/u3; = null

.field static isPullFor360:Z = false

.field static sNeedShowSkipView:Z = false

.field static sPullBeginTime:J


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

.method public static SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/p/c4;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 4
    :cond_9
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    if-nez v0, :cond_19

    .line 5
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->a()Lio/dcloud/p/t1;

    move-result-object v0

    check-cast v0, Lio/dcloud/p/u3;

    sput-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    .line 6
    :cond_19
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    invoke-virtual {v0, p0}, Lio/dcloud/p/v;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

.method static synthetic access$100()Lio/dcloud/p/u3;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    return-object v0
.end method

.method static synthetic access$200([BLjava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->analysisPullData([BLjava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lorg/json/JSONObject;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getClickData(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/LinkedList;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->expiresFileList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/io/File;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->fileAdData(Landroid/content/Context;Ljava/io/File;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lorg/json/JSONObject;J)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->handleAdData(Landroid/content/Context;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private static addThreadTask(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V
    .registers 3

    if-eqz p0, :cond_20

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 3
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$3;

    invoke-direct {v1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$3;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_1d
    invoke-interface {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;->execute()V

    :cond_20
    return-void
.end method

.method public static allReady(Landroid/content/Context;)Z
    .registers 2

    .line 1
    const-string v0, "appid"

    invoke-static {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static varargs analysisPullData([BLjava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_4

    goto/16 :goto_90

    .line 1
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v0, "ret"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6e

    .line 5
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Lio/dcloud/p/e1;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v3, v4, v2}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 10
    :try_start_37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v3}, Lio/dcloud/feature/gg/AolSplashUtil;->decodeChannel(Lorg/json/JSONObject;)V

    .line 12
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_43

    goto :goto_4b

    .line 15
    :catch_43
    :try_start_43
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_4b

    .line 22
    :catch_4b
    :cond_4b
    :goto_4b
    array-length v0, p2

    :goto_4c
    if-ge v1, v0, :cond_56

    aget-object v2, p2, v1

    .line 23
    invoke-interface {v2, p0}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onReceiver(Lorg/json/JSONObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 25
    :cond_56
    const-string p2, "ThirdConfig"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_66

    const-string p2, "Splash"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 26
    :cond_66
    sget-object p1, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    if-eqz p1, :cond_90

    .line 27
    invoke-virtual {p1, p0}, Lio/dcloud/p/u3;->a(Lorg/json/JSONObject;)V

    goto :goto_90

    .line 30
    :cond_6e
    array-length p1, p2

    :goto_6f
    const-string v2, "desc"

    if-ge v1, p1, :cond_83

    aget-object v3, p2, v1

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 32
    :cond_83
    sget-object p1, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    if-eqz p1, :cond_90

    .line 33
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, -0x138f

    invoke-virtual {p1, p2, p0}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V

    :cond_90
    :goto_90
    return-void
.end method

.method static appid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "appid"

    invoke-static {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bg(Landroid/content/Context;)I
    .registers 2

    .line 1
    const-string v0, "bg"

    invoke-static {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    return p0

    :cond_e
    return v0
.end method

.method static click(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler$9;

    invoke-direct {v2, p1, p0, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$9;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 22
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_24
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 24
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->click_youdao(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_32
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 26
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/Aolhandler_common;->click_common(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_40
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void
.end method

.method static click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "tid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    const-string v0, "dplk"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/common/util/ADUtils;->openDeepLink(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 5
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_11d

    .line 10
    :cond_28
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$8;

    invoke-direct {v1, p1, p0, v5, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$8;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 23
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->dplk_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_42
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 25
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->dplk_youdao(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_50
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 27
    const-string v0, "dptracker"

    invoke-static {p0, p1, p2, v0}, Lio/dcloud/feature/gg/dcloud/Aolhandler_common;->handletask_common(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_60
    const-string v0, "action"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v2, "url"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 35
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 36
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADSim;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_7c
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/ADUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_84
    const-string v3, "download"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 42
    const-string v0, "expires"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 43
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "yy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    :try_start_9d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_a8
    .catch Ljava/text/ParseException; {:try_start_9d .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_ad
    :goto_ad
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 53
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "ua"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c0

    .line 52
    :cond_be
    const-string v0, ""

    :goto_c0
    move-object v10, v0

    .line 55
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 56
    iget-object v4, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "bundle"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p2

    invoke-static/range {v3 .. v10}, Lio/dcloud/feature/gg/dcloud/ADSim;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;Ljava/lang/String;)V

    goto :goto_11d

    :cond_da
    move-object v3, p0

    .line 60
    const-string p0, "streamapp"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_107

    const-string p0, "appid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_107

    .line 61
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p1

    if-eqz p1, :cond_f2

    goto :goto_11d

    .line 64
    :cond_f2
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "parameters"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "streamapps"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {v3, p0, p1, v0, p2}, Lio/dcloud/common/util/ADUtils;->openStreamApp(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    return-void

    .line 65
    :cond_107
    const-string p0, "browser"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11d

    .line 66
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p0

    if-eqz p0, :cond_116

    goto :goto_11d

    .line 69
    :cond_116
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/dcloud/common/util/ADUtils;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_11d
    :goto_11d
    return-void
.end method

.method private static defAdConfig(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2
    const-string v0, "DCLOUD_AD_SPLASH"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static exec5Plus(Ljava/util/List;Ljava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/common/util/hostpicker/HostPicker$Host;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lio/dcloud/feature/gg/dcloud/IAolReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/ZipUtils;->zipString(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    invoke-static {}, Lio/dcloud/p/e1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 6
    :try_start_15
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_21

    :catch_1c
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 10
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "edata="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->hasOtherAd()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 13
    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$2;-><init>(Ljava/util/List;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->addThreadTask(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V

    return-void
.end method

.method private static fileAdData(Landroid/content/Context;Ljava/io/File;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
    .registers 10

    const-string p0, "/s.txt"

    const-string v0, "/data.json"

    .line 1
    :try_start_4
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2f

    goto/16 :goto_db

    .line 6
    :cond_2f
    const-string v2, "provider"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    .line 7
    iput-object v0, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mJsonData:Lorg/json/JSONObject;

    .line 8
    const-string v2, "es"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEShow:I

    .line 9
    const-string v2, "ec"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEClick:I

    .line 10
    const-string v2, "src"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    iput-object v1, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgSrc:Ljava/lang/String;

    .line 12
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_74

    const-string v4, "img.gif"

    goto :goto_76

    .line 14
    :cond_74
    const-string v4, "img.png"

    :goto_76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_db

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_db

    if-eqz v1, :cond_c2

    .line 19
    const-string v1, "srcPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v1, "pl.droidsonroids.gif.GifDrawable"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v5, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    goto :goto_ca

    .line 22
    :cond_c2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 24
    iput-object v0, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    .line 27
    :cond_ca
    :goto_ca
    iput-object v2, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgPath:Ljava/lang/String;

    .line 28
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_db} :catch_dc

    :cond_db
    :goto_db
    return-void

    :catch_dc
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "${User-Agent}"

    const-string v1, "u-a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, "${click_id}"

    const-string v1, "click_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string v0, "${down_x}"

    const-string v1, "down_x"

    const/16 v2, -0x3e7

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 4
    const-string v0, "${down_y}"

    const-string v1, "down_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    const-string v0, "${up_x}"

    const-string v1, "up_x"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 6
    const-string v0, "${up_y}"

    const-string v1, "up_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 7
    const-string v0, "${relative_down_x}"

    const-string v1, "relative_down_x"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 8
    const-string v0, "${relative_down_y}"

    const-string v1, "relative_down_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 9
    const-string v0, "${relative_up_x}"

    const-string v1, "relative_up_x"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 10
    const-string v0, "${relative_up_y}"

    const-string v1, "relative_up_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a0} :catch_a1

    return-object p0

    :catch_a1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3
    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    invoke-static {p0, v0, p1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 4
    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static get(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method static getArgsJsonData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 12

    .line 1
    const-string v0, "relative_up_y"

    const-string v1, "relative_up_x"

    const-string v2, "relative_down_y"

    const-string v3, "relative_down_x"

    const-string v4, "up_y"

    const-string v5, "up_x"

    const-string v6, "down_y"

    const-string v7, "down_x"

    const-string v8, "ua"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_17
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v9, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_56} :catch_57

    return-object v9

    :catch_57
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v9
.end method

.method private static getBId()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x25

    .line 6
    new-array v1, v1, [B

    .line 7
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_26

    .line 9
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    return-object v3

    :catch_24
    move-object v0, v3

    nop

    :catch_26
    :cond_26
    return-object v0
.end method

.method public static getBestAdData(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-direct {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getBestAdData(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    move-result-object p0

    return-object p0
.end method

.method static getBestAdData(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
    .registers 5

    .line 3
    iput-object p1, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sput-object p1, Lio/dcloud/feature/gg/dcloud/ADHandler;->expiresFileList:Ljava/util/LinkedList;

    .line 5
    new-instance p1, Lio/dcloud/feature/gg/dcloud/ADHandler$11;

    invoke-direct {p1, p2, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$11;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;)V

    invoke-static {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->listExpiresAdData(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;)V

    .line 17
    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result p1

    if-nez p1, :cond_5d

    sget-object p1, Lio/dcloud/feature/gg/dcloud/ADHandler;->expiresFileList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x0

    .line 18
    :goto_20
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->expiresFileList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5d

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/feature/gg/dcloud/ADHandler;->expiresFileList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-nez p1, :cond_5a

    .line 22
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->expiresFileList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p0, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->fileAdData(Landroid/content/Context;Ljava/io/File;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    :cond_5a
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_5d
    return-object p2
.end method

.method private static getClickData(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    const-string v0, "dh"

    const-string v1, "dw"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_9
    const-string v3, "img"

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgSrc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    const-string v1, "dx"

    const-string v3, "down_x"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v1, "dy"

    const-string v3, "down_y"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v1, "ux"

    const-string v3, "up_x"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v1, "uy"

    const-string v3, "up_y"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v1, "rdx"

    const-string v3, "relative_down_x"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    const-string v1, "rdy"

    const-string v3, "relative_down_y"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    const-string v1, "rux"

    const-string v3, "relative_up_x"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    const-string v1, "ruy"

    const-string v3, "relative_up_y"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string p0, "click_coord"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_84} :catch_85

    return-object v2

    :catch_85
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2
.end method

.method private static getRootPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/ad/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ad/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUT()Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "+"

    const-string v1, "."

    .line 3
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "stat -c \"%x\" /data/data"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x100

    .line 7
    new-array v5, v5, [C

    .line 8
    :goto_25
    invoke-virtual {v3, v5}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_30

    .line 9
    invoke-virtual {v4, v5, v7, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 11
    :cond_30
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 12
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 13
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 14
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 17
    aget-object v2, v2, v5

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_6a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_87} :catch_88

    return-object v0

    :catch_88
    return-object v1
.end method

.method private static handleAdBaseData(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1a

    .line 1
    const-string v0, "es"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 3
    new-instance p2, Lio/dcloud/feature/gg/dcloud/ADSim;

    invoke-direct {p2, p0, p1}, Lio/dcloud/feature/gg/dcloud/ADSim;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADSim;->start()V

    return-void

    .line 7
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tid.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".gif"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "img.gif"

    goto :goto_4b

    :cond_49
    const-string v0, "img.png"

    :goto_4b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    const-string v0, "srcPath"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "data.json"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, v1, p4}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 12
    new-instance p4, Lio/dcloud/feature/gg/dcloud/ADHandler$12;

    invoke-direct {p4, p1, p3, p2, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$12;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p4}, Lio/dcloud/feature/gg/dcloud/ADHandler;->addThreadTask(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V

    return-void
.end method

.method private static handleAdData(Landroid/content/Context;Lorg/json/JSONObject;J)V
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "dcloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->handleAdData_dcloud(Landroid/content/Context;Lorg/json/JSONObject;J)V

    return-void

    .line 4
    :cond_12
    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleAdData_wanka(Landroid/content/Context;Lorg/json/JSONObject;J)V

    return-void

    .line 6
    :cond_1e
    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 7
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->handleAdData_youdao(Landroid/content/Context;Lorg/json/JSONObject;J)V

    return-void

    .line 8
    :cond_2a
    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 9
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/Aolhandler_common;->handleAdData_common(Landroid/content/Context;Lorg/json/JSONObject;J)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static handleAdData_dcloud(Landroid/content/Context;Lorg/json/JSONObject;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    const-string v2, "expires"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "yy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_66

    .line 7
    const-string v3, "src"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    const-string p3, "tid"

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3, v3, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->handleAdBaseData(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method public static handleSplashAdEnable(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "1"

    goto :goto_f

    :cond_d
    const-string p1, "0"

    :goto_f
    invoke-virtual {v0, p0, p1}, Lio/dcloud/p/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private static hasOtherAd()Z
    .registers 2

    .line 1
    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v1, "pspType"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3
    const-string v1, "360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "gdt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "csj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method static img(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    const-string v0, "img"

    invoke-static {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 4
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2e

    :cond_23
    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    move-object p0, v1

    :goto_2e
    if-eqz p0, :cond_36

    .line 15
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_36
    return-object v1
.end method

.method private static listExpiresAdData(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_12

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_6c

    .line 12
    :cond_19
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->sortDesc([Ljava/io/File;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_1e
    array-length v2, p0

    if-ge v1, v2, :cond_6c

    .line 16
    aget-object v2, p0, v1

    .line 17
    invoke-interface {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;->find()Z

    move-result v3

    if-nez v3, :cond_66

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 19
    :goto_2e
    array-length v4, v2

    if-ge v3, v4, :cond_69

    .line 20
    aget-object v4, v2, v3

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_60

    .line 23
    invoke-interface {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;->find()Z

    move-result v5

    if-nez v5, :cond_63

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    .line 25
    :goto_4e
    array-length v6, v4

    if-ge v5, v6, :cond_63

    .line 26
    aget-object v6, v4, v5

    .line 27
    invoke-interface {p1, v6}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;->operate(Ljava/lang/Object;)V

    .line 28
    invoke-interface {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_63

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 32
    :cond_60
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 36
    :cond_66
    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_6c
    :goto_6c
    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method static mc(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    const-string v1, "default"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 4
    const-string v0, "DCLOUD_STREAMAPP_CHANNEL"

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_2f
    sget-object p0, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    return-object p0
.end method

.method static name(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "name"

    invoke-static {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static papEnable(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/ad/"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AdEnable.dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :try_start_1e
    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_2f

    return-object v1

    :cond_2e
    return-object v0

    :catch_2f
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method static postSplashError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "p"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v1, "v"

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "appid"

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "name"

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 9
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    const/4 v2, 0x0

    .line 11
    :goto_41
    const-string v3, "pv"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p0, v1, v1}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lio/dcloud/common/util/ZipUtils;->zipString(Ljava/lang/String;)[B

    move-result-object v1

    .line 14
    invoke-static {}, Lio/dcloud/p/e1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 15
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "md"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "vd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "1.9.9.82650"

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string v1, ""

    :cond_87
    const-string v2, "vb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p0}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->mc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "adid"

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "paid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {p0}, Lio/dcloud/feature/gg/AolSplashUtil;->dw(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dw"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Lio/dcloud/feature/gg/AolSplashUtil;->dh(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "dh"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p0, "c"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string p0, "m"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_d8

    .line 29
    const-string p0, "d"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_d8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance p1, Lio/dcloud/feature/gg/dcloud/ADHandler$6;

    invoke-direct {p1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$6;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->addThreadTask(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V

    return-void
.end method

.method public static pr(Landroid/content/Context;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    invoke-static {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    const/4 v1, 0x0

    .line 6
    :goto_1a
    const-string v2, "pv"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "os"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v1, "1.9.9.82650"

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v1, ""

    :cond_34
    const-string v2, "vb"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    invoke-direct {v2, p0}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    invoke-static {p0, p1, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pullRad(Landroid/content/Context;Ljava/util/Map;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

.method private static psas(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$10;

    invoke-direct {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$10;-><init>(Ljava/lang/StringBuffer;)V

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->listExpiresAdData(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pull(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    sget-object v1, Lio/dcloud/p/r1;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    sget-object v4, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 88
    sget-object v5, Lio/dcloud/p/r1;->c:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_37

    if-eqz v5, :cond_35

    if-eq v5, v3, :cond_32

    goto :goto_37

    .line 90
    :cond_32
    sget-object v4, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    goto :goto_37

    .line 94
    :cond_35
    sget-object v4, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 102
    :cond_37
    :goto_37
    new-instance v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    invoke-direct {v3, v2, v4}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 110
    :cond_40
    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    new-array v2, v3, [Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, p1, v3, v0, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

.method public static varargs pull(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lio/dcloud/common/util/hostpicker/HostPicker$Host;",
            ">;[",
            "Lio/dcloud/feature/gg/dcloud/IAolReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    .line 3
    :cond_b
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1d

    .line 4
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    const-string v0, "__UNI__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 6
    :goto_1e
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->mc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 8
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_31

    aget-object v0, v0, v2

    goto :goto_33

    :cond_31
    const-string v0, ""

    .line 9
    :goto_33
    new-instance v1, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    invoke-direct {v1}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->setAdId(Ljava/lang/String;)Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->setAppId(Ljava/lang/String;)Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    .line 11
    new-instance v0, Lio/dcloud/p/u3;

    invoke-direct {v0}, Lio/dcloud/p/u3;-><init>()V

    invoke-static {p0, v1, v0}, Lio/dcloud/p/t3;->a(Landroid/content/Context;Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;Lio/dcloud/p/t1;)V

    .line 12
    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADHandler$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$1;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {v0}, Lio/dcloud/sdk/core/DCloudAOLManager;->setPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V

    .line 34
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->a()Lio/dcloud/p/t1;

    move-result-object v0

    check-cast v0, Lio/dcloud/p/u3;

    sput-object v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->handler:Lio/dcloud/p/u3;

    .line 35
    invoke-virtual {v0, p0}, Lio/dcloud/p/u3;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 37
    const-string v1, "v"

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "name"

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->psas(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "psas"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ps"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "psd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 44
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->defAdConfig(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_a8

    move-object v1, v3

    goto :goto_a9

    :cond_a8
    move-object v1, v4

    :goto_a9
    const-string v5, "pap"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b6

    move-object v1, v3

    goto :goto_b7

    :cond_b6
    move-object v1, v4

    :goto_b7
    const-string v2, "papi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->allReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c4

    move-object v1, v4

    goto :goto_c5

    :cond_c4
    move-object v1, v3

    :goto_c5
    const-string v2, "psaf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "cad"

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_db

    .line 50
    const-string v2, "rad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_db
    const-string v1, "IlKgfnao"

    invoke-static {v1}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/dcloud/common/adapter/util/SP;->getsOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/p/h4;

    move-result-object p0

    .line 52
    const-string v1, "[xdi{`IlMfijdm"

    invoke-static {v1}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {p0, v1, v2}, Lio/dcloud/p/h4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_fe

    .line 53
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fe

    const/4 p0, 0x1

    goto :goto_ff

    :cond_fe
    const/4 p0, 0x0

    :goto_ff
    if-nez p0, :cond_102

    goto :goto_103

    :cond_102
    move-object v3, v4

    .line 54
    :goto_103
    const-string p0, "mpap"

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "io.dcloud.common.cs.DA"

    if-nez p1, :cond_11b

    .line 61
    :try_start_115
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_118
    .catch Ljava/lang/ClassNotFoundException; {:try_start_115 .. :try_end_118} :catch_11a

    const/4 p1, 0x1

    goto :goto_11b

    :catch_11a
    nop

    :cond_11b
    :goto_11b
    if-eqz p1, :cond_14d

    .line 69
    :try_start_11d
    const-string p1, "getInstance"

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14d

    .line 70
    instance-of v0, p1, Lio/dcloud/common/DHInterface/DAI;

    if-eqz v0, :cond_14d

    if-eqz p3, :cond_137

    .line 72
    check-cast p1, Lio/dcloud/common/DHInterface/DAI;

    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADResult;

    invoke-direct {v0, p4}, Lio/dcloud/feature/gg/dcloud/ADResult;-><init>([Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    invoke-interface {p1, p0, v0}, Lio/dcloud/common/DHInterface/DAI;->act(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_141

    .line 74
    :cond_137
    check-cast p1, Lio/dcloud/common/DHInterface/DAI;

    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADResult;

    invoke-direct {v0, p4}, Lio/dcloud/feature/gg/dcloud/ADResult;-><init>([Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    invoke-interface {p1, p0, v0}, Lio/dcloud/common/DHInterface/DAI;->ar(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_141} :catch_143

    :goto_141
    const/4 p2, 0x1

    goto :goto_14d

    :catch_143
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADHANDLER"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14d
    :goto_14d
    if-nez p2, :cond_152

    .line 84
    invoke-static {p3, p0, p4}, Lio/dcloud/feature/gg/dcloud/ADHandler;->exec5Plus(Ljava/util/List;Ljava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    :cond_152
    return-void
.end method

.method private static varargs pull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/common/util/hostpicker/HostPicker$Host;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Lio/dcloud/feature/gg/dcloud/IAolReceiver;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-static {}, Lio/dcloud/common/util/hostpicker/HostPicker;->getInstance()Lio/dcloud/common/util/hostpicker/HostPicker;

    move-result-object v0

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler$4;

    invoke-direct {v2, p4, p2, p3, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$4;-><init>([Lio/dcloud/feature/gg/dcloud/IAolReceiver;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, p0, p1, v2}, Lio/dcloud/common/util/hostpicker/HostPicker;->pickSuitHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;)V

    return-void
.end method

.method static varargs pullRad(Landroid/content/Context;Ljava/util/Map;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lio/dcloud/feature/gg/dcloud/IAolReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    .line 3
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "p"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "v"

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v1, "1.9.9.82650"

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v1, ""

    :cond_31
    const-string v2, "vb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 8
    invoke-static {p0, v1, v1}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_c6

    .line 9
    const-string v2, "rad"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_c6

    .line 11
    :cond_4c
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_c6

    .line 13
    :cond_57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pn"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->mc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v2, "adid"

    invoke-static {p0, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "paid"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "psdk"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 20
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lio/dcloud/common/util/ZipUtils;->zipString(Ljava/lang/String;)[B

    move-result-object p0

    .line 23
    invoke-static {}, Lio/dcloud/p/e1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 24
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 27
    :try_start_9f
    const-string p1, "utf-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9f .. :try_end_a5} :catch_a6

    goto :goto_ab

    :catch_a6
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 31
    :goto_ab
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "edata="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->hasOtherAd()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 34
    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$5;-><init>(Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->addThreadTask(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V

    :cond_c6
    :goto_c6
    return-void
.end method

.method public static varargs setSplashAd(Landroid/content/Context;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "p"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v1, "v"

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "name"

    invoke-static {p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_25
    const-string v1, "pname"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_36

    .line 9
    :catch_36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    :try_start_40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    .line 16
    :goto_55
    const-string v3, "pv"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "os"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v2, "1.9.9.82650"

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    const-string v2, ""

    :cond_6f
    const-string v3, "vb"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->mc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "mc"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "psdk"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p0, "1"

    if-eqz p1, :cond_8d

    move-object p1, p0

    goto :goto_8f

    :cond_8d
    const-string p1, "0"

    :goto_8f
    const-string v2, "mpap"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string p1, "smpap"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->exec5Plus(Ljava/util/List;Ljava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

.method private static sortDesc([Ljava/io/File;)V
    .registers 10

    if-nez p0, :cond_3

    goto :goto_38

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_5
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_38

    const/4 v2, 0x0

    .line 2
    :goto_b
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_35

    .line 3
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    .line 4
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_33

    .line 6
    aget-object v3, p0, v2

    .line 7
    aget-object v4, p0, v5

    aput-object v4, p0, v2

    .line 8
    aput-object v3, p0, v5

    :cond_33
    move v2, v5

    goto :goto_b

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_38
    :goto_38
    return-void
.end method

.method static view(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler$7;

    invoke-direct {v2, p1, p0, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$7;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 18
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->view_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_24
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 20
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->view_youdao(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_32
    iget-object v0, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mProvider:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 22
    const-string v0, "imptracker"

    invoke-static {p0, p1, p2, v0}, Lio/dcloud/feature/gg/dcloud/Aolhandler_common;->handletask_common(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADHandler$1)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$1;
.super Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
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

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->getAId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeis()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->getMultiIMEI(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/TelephonyUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowPrivacy()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass10 (io.dcloud.feature.gg.dcloud.ADHandler$10)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$10;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->psas(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$10;->val$sb:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public operate(Ljava/io/File;)V
    .registers 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/tid.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$10;->val$sb:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2b
    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$10;->operate(Ljava/io/File;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass11 (io.dcloud.feature.gg.dcloud.ADHandler$11)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$11;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->getBestAdData(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ret:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$11;->val$ret:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$11;->val$ret:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    return v0
.end method

.method public operate(Ljava/io/File;)V
    .registers 4

    .line 2
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$400()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$11;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$11;->val$ret:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-static {v0, p1, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$500(Landroid/content/Context;Ljava/io/File;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$11;->operate(Ljava/io/File;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass12 (io.dcloud.feature.gg.dcloud.ADHandler$12)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$12;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->handleAdBaseData(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$img:Ljava/lang/String;

.field final synthetic val$saveDataJson:Lorg/json/JSONObject;

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$saveDataJson:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$src:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$img:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$saveDataJson:Lorg/json/JSONObject;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$saveDataJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "ua-webview"

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_2a
    move-object v0, v2

    :goto_2b
    const/4 v1, 0x1

    .line 9
    :try_start_2c
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$src:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    nop

    .line 11
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "download file is nulll"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v2, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    :goto_41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "src="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$src:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "adh"

    invoke-static {v4, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5e

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$img:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 15
    :cond_5e
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/ADHandler;->isPullFor360:Z

    if-nez v0, :cond_8a

    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    const-string v5, "ad_img_downlaod_receive"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    .line 18
    :goto_70
    const-string v2, "downloadImage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$src:Ljava/lang/String;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$12;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 21
    const-string v0, "handleAdBaseData--downloadC"

    invoke-static {v4, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass2 (io.dcloud.feature.gg.dcloud.ADHandler$2)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->exec5Plus(Ljava/util/List;Ljava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

.field final synthetic val$hosts:Ljava/util/List;

.field final synthetic val$isNoProxy:Z

.field final synthetic val$passString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$hosts:Ljava/util/List;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$passString:Ljava/lang/String;

    iput-boolean p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$isNoProxy:Z

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$hosts:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$passString:Ljava/lang/String;

    iget-boolean v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$isNoProxy:Z

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    const-string v4, "ThirdConfig"

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$000(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void

    .line 5
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lio/dcloud/p/r1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    sget-object v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 8
    sget-object v4, Lio/dcloud/p/r1;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    if-eqz v4, :cond_45

    const/4 v5, 0x1

    if-eq v4, v5, :cond_42

    goto :goto_47

    .line 10
    :cond_42
    sget-object v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    goto :goto_47

    .line 14
    :cond_45
    sget-object v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 22
    :cond_47
    :goto_47
    new-instance v4, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    invoke-direct {v4, v2, v3}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 30
    :cond_50
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$passString:Ljava/lang/String;

    iget-boolean v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$isNoProxy:Z

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$2;->val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    const-string v4, "Splash"

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$000(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass3 (io.dcloud.feature.gg.dcloud.ADHandler$3)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->addThreadTask(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$3;->val$task:Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$3;->val$task:Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;

    invoke-interface {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;->execute()V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass4 (io.dcloud.feature.gg.dcloud.ADHandler$4)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field message:[Ljava/lang/String;

.field final synthetic val$Entity:Ljava/lang/String;

.field final synthetic val$isNoProxy:Z

.field final synthetic val$receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>([Lio/dcloud/feature/gg/dcloud/IAolReceiver;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$Entity:Ljava/lang/String;

    iput-boolean p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$isNoProxy:Z

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->message:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doRequest(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->getRealHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$Entity:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-boolean v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$isNoProxy:Z

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->message:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZZ[Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_49

    .line 4
    :try_start_17
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    invoke-static {p1, v0, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$200([BLjava/lang/String;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_47

    :catch_1f
    move-exception v0

    move-object p1, v0

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length v2, v0

    :goto_24
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception"

    invoke-interface {v3, v5, v4}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 8
    :cond_34
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$100()Lio/dcloud/p/u3;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 9
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$100()Lio/dcloud/p/u3;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, -0x138f

    invoke-virtual {v0, v1, p1}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V

    :cond_47
    :goto_47
    const/4 p1, 0x1

    return p1

    :cond_49
    return v1
.end method

.method public onNoOnePicked()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->val$receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const-string v4, "data invalid"

    if-ge v3, v1, :cond_1b

    aget-object v5, v0, v3

    .line 2
    iget-object v6, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->message:[Ljava/lang/String;

    aget-object v6, v6, v2

    if-nez v6, :cond_12

    goto :goto_13

    :cond_12
    move-object v4, v6

    :goto_13
    const-string v6, "NotFountDataError"

    invoke-interface {v5, v6, v4}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4
    :cond_1b
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$100()Lio/dcloud/p/u3;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 5
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$100()Lio/dcloud/p/u3;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$4;->message:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-nez v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v4, v1

    :goto_2d
    const/16 v1, -0x138f

    invoke-virtual {v0, v1, v4}, Lio/dcloud/p/u3;->a(ILjava/lang/String;)V

    :cond_32
    return-void
.end method

.method public onOneSelected(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass5 (io.dcloud.feature.gg.dcloud.ADHandler$5)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->pullRad(Landroid/content/Context;Ljava/util/Map;[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

.field final synthetic val$isNoProxy:Z

.field final synthetic val$passString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;->val$passString:Ljava/lang/String;

    iput-boolean p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;->val$isNoProxy:Z

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;->val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4
    new-instance v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v2, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v3, "YHx8eHsyJydvazkmbGtkZ31sJmFnJ2tnZGRta3wneGR9e2l4eCdraWw="

    invoke-direct {v1, v3, v2}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 5
    :cond_18
    invoke-static {}, Lio/dcloud/p/l0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {}, Lio/dcloud/p/l0;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 7
    new-instance v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v2, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v3, "YHx8eHsyJydvazkmbGtkZ31sJmZtfCZrZidrZ2RkbWt8J3hkfXtpeHgna2ls"

    invoke-direct {v1, v3, v2}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 10
    :cond_3b
    new-instance v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v2, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v3, "YHx8eHsyJydrOSZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCdraWw="

    invoke-direct {v1, v3, v2}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_47
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;->val$passString:Ljava/lang/String;

    iget-boolean v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;->val$isNoProxy:Z

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$5;->val$Receiver:[Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    const-string v4, "CAD"

    invoke-static {v0, v4, v1, v2, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$000(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z[Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass6 (io.dcloud.feature.gg.dcloud.ADHandler$6)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$6;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->postSplashError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$msgJsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$6;->val$msgJsonString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://er.dcloud.io/sc"

    goto :goto_b

    :cond_9
    const-string v0, "https://er.dcloud.net.cn/sc"

    :goto_b
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$6;->val$msgJsonString:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass7 (io.dcloud.feature.gg.dcloud.ADHandler$7)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$7;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->view(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEShow()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x2d

    const/16 v5, 0x2d

    goto :goto_11

    :cond_d
    const/16 v0, 0x28

    const/16 v5, 0x28

    .line 5
    :goto_11
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6
    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 9
    :cond_26
    const-string v0, ""

    :goto_28
    move-object v8, v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$tid:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$7;->val$adid:Ljava/lang/String;

    const-string v0, "_adpid_"

    const-string v6, "UNIAD_SPLASH_ADPID"

    invoke-static {v0, v6}, Lio/dcloud/feature/gg/AolSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass8 (io.dcloud.feature.gg.dcloud.ADHandler$8)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$8;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 6
    :cond_15
    const-string v0, ""

    :goto_17
    move-object v8, v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$tid:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$8;->val$adid:Ljava/lang/String;

    const-string v0, "_adpid_"

    const-string v5, "UNIAD_SPLASH_ADPID"

    invoke-static {v0, v5}, Lio/dcloud/feature/gg/AolSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AnonymousClass9 (io.dcloud.feature.gg.dcloud.ADHandler$9)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$9;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;->click(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$300(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x29

    const/16 v6, 0x29

    goto :goto_18

    :cond_13
    const/4 v0, 0x0

    const/16 v1, 0x2e

    const/16 v6, 0x2e

    :goto_18
    move-object v9, v0

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 8
    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 11
    :cond_2e
    const-string v0, ""

    :goto_30
    move-object v13, v0

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v3, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$tid:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$9;->val$adid:Ljava/lang/String;

    const-string v0, "_adpid_"

    const-string v1, "UNIAD_SPLASH_ADPID"

    invoke-static {v0, v1}, Lio/dcloud/feature/gg/AolSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v14}, Lio/dcloud/p/d0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.ADReceiver (io.dcloud.feature.gg.dcloud.ADHandler$ADReceiver)
.class public Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/IAolReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADReceiver"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mStartTime:J

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private broadcastADReceive()V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "ad_receive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-wide v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mStartTime:J

    const-string v3, "begin"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "end"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    const-string v0, "ADReceive"

    const-string v1, "broadcastADReceive"

    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pap(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 1
    const-string v0, "pap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->handleSplashAdEnable(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->broadcastADReceive()V

    return-void
.end method

.method public onReceiver(Lorg/json/JSONObject;)V
    .registers 10

    .line 1
    const-string v0, "psas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2
    const-string v1, "pap"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    .line 3
    :goto_12
    const-string v1, "0"

    const-string v4, "dpap"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mContext:Landroid/content/Context;

    const-string v6, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    invoke-static {v5, v6, v4, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ADReceiver"

    if-eqz v0, :cond_56

    if-eqz v3, :cond_56

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onReceiver psas.length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    if-ge v2, v5, :cond_67

    .line 10
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v3, v4}, Lio/dcloud/feature/gg/dcloud/ADHandler;->access$600(Landroid/content/Context;Lorg/json/JSONObject;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 14
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onReceiver no data = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_67
    sget-boolean p1, Lio/dcloud/feature/gg/dcloud/ADHandler;->isPullFor360:Z

    if-nez p1, :cond_6e

    .line 17
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;->broadcastADReceive()V

    :cond_6e
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AdData (io.dcloud.feature.gg.dcloud.ADHandler$AdData)
.class public Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdData"
.end annotation


# instance fields
.field mEClick:I

.field mEShow:I

.field public mImgData:Ljava/lang/Object;

.field mImgPath:Ljava/lang/String;

.field mImgSrc:Ljava/lang/String;

.field mJsonData:Lorg/json/JSONObject;

.field mMotionEvent_down:Landroid/view/MotionEvent;

.field mMotionEvent_up:Landroid/view/MotionEvent;

.field mOriginalAppid:Ljava/lang/String;

.field mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEShow:I

    .line 11
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEClick:I

    return-void
.end method


# virtual methods
.method check()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mJsonData:Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method data()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mJsonData:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method full()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mJsonData:Lorg/json/JSONObject;

    return-object v0
.end method

.method isEClick()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEClick:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method isEShow()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mEShow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method listenADReceive(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 5

    if-eqz p2, :cond_24

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;

    invoke-direct {v0, p0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V

    .line 23
    :try_start_7
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    const-string v1, "ad_receive"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 26
    const-string p1, "ADReceive"

    const-string p2, "registerReceiver"

    invoke-static {p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    return-void
.end method

.method report()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mJsonData:Lorg/json/JSONObject;

    const-string v1, "report"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AdData.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADHandler$AdData$1)
.class Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->listenADReceive(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$listener:Lio/dcloud/feature/gg/dcloud/IAolReceiver;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lio/dcloud/feature/gg/dcloud/IAolReceiver;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;->this$0:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;->val$listener:Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "ADReceive"

    const-string v1, "useTime="

    .line 1
    :try_start_4
    const-string v2, "begin"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2
    const-string v2, "end"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0xbb8

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2e

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;->val$listener:Lio/dcloud/feature/gg/dcloud/IAolReceiver;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lio/dcloud/feature/gg/dcloud/IAolReceiver;->onReceiver(Lorg/json/JSONObject;)V

    .line 10
    :cond_2e
    const-string p2, "unregisterReceiver"

    invoke-static {v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.AdDataWatcher (io.dcloud.feature.gg.dcloud.ADHandler$AdDataWatcher)
.class interface abstract Lio/dcloud/feature/gg/dcloud/ADHandler$AdDataWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AdDataWatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract find()Z
.end method

.method public abstract operate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler.ThreadTask (io.dcloud.feature.gg.dcloud.ADHandler$ThreadTask)
.class interface abstract Lio/dcloud/feature/gg/dcloud/ADHandler$ThreadTask;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ThreadTask"
.end annotation


# virtual methods
.method public abstract execute()V
.end method
