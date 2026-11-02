###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka (io.dcloud.feature.gg.dcloud.ADHandler_wanka)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;
.super Lio/dcloud/feature/gg/dcloud/ADHandler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-static/range {p0 .. p6}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
    .registers 8

    .line 1
    invoke-static/range {p0 .. p7}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->runApp(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V

    return-void
.end method

.method static click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "template"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    const-string v3, "clktrackers"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4d

    .line 4
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_ce

    .line 7
    :cond_24
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 10
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;

    invoke-direct {v2, p1, p0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_3f
    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 32
    iget-object v1, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_url(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_4d
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 37
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 40
    :cond_5e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 41
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b9

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 43
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p2

    if-eqz p2, :cond_81

    goto :goto_ce

    .line 47
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "dplk"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz p2, :cond_a4

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_a4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v0, 0x10000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_ce

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b3
    .catch Ljava/net/URISyntaxException; {:try_start_81 .. :try_end_b3} :catch_b4

    return-void

    :catch_b4
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 65
    :cond_b9
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;

    invoke-direct {v1, p1, p0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p1

    if-nez p1, :cond_ce

    .line 74
    invoke-static {p0}, Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V

    :cond_ce
    :goto_ce
    return-void

    .line 78
    :cond_cf
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void
.end method

.method private static click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 18

    move-object/from16 v1, p6

    .line 1
    const-string v2, "report"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2
    const-string v3, "dwnlsts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 4
    invoke-static {v5, v1, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 7
    :cond_13
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "bundle"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {p2}, Lio/dcloud/common/util/ADUtils;->getDdDataForUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_26

    return-void

    .line 15
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lio/dcloud/base/R$string;->in_package:I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v6, 0x0

    goto :goto_5a

    :cond_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lio/dcloud/base/R$string;->in_package:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5a
    invoke-static {p2, v3, v6}, Lio/dcloud/common/util/PdrUtil;->getFileNameByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_6f

    .line 19
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ua"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_71

    .line 18
    :cond_6f
    const-string v6, ""

    :goto_71
    move-object v10, v6

    .line 21
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 22
    new-instance v6, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;

    invoke-direct {v6, v2, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    move-object v0, p0

    move-object v4, p2

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lio/dcloud/feature/gg/dcloud/ADSim;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_88
    new-instance v8, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;

    invoke-direct {v8, v2, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v7, "application/vnd.android"

    const/4 v9, 0x1

    move-object v0, p0

    move-object v6, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, v3

    move-object/from16 v3, p5

    invoke-static/range {v0 .. v10}, Lio/dcloud/common/util/ADUtils;->loadADFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;ZLjava/lang/String;)J

    move-result-wide v7

    .line 53
    new-instance v0, Lio/dcloud/common/util/ADUtils$ADLoadData;

    invoke-direct {v0}, Lio/dcloud/common/util/ADUtils$ADLoadData;-><init>()V

    .line 54
    invoke-static {p0}, Lio/dcloud/feature/gg/AolSplashUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->name:Ljava/lang/String;

    .line 55
    iput-object v5, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->pname:Ljava/lang/String;

    .line 56
    iput-object p2, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->url:Ljava/lang/String;

    .line 57
    iput-object p3, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->appid:Ljava/lang/String;

    .line 58
    iput-object p4, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->tid:Ljava/lang/String;

    .line 59
    iput-object v3, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->adid:Ljava/lang/String;

    .line 60
    const-string v1, "wanka"

    iput-object v1, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->type:Ljava/lang/String;

    .line 61
    iput-wide v7, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    .line 62
    iput-object v10, v0, Lio/dcloud/common/util/ADUtils$ADLoadData;->ua:Ljava/lang/String;

    .line 65
    :try_start_b8
    invoke-static {v0}, Lio/dcloud/common/util/ADUtils;->saveLoadData(Lio/dcloud/common/util/ADUtils$ADLoadData;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc

    return-void

    :catch_bc
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static click_wanka_url(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p3

    new-instance p4, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;

    invoke-direct {p4, p2, p1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;-><init>(Lorg/json/JSONArray;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static dplk_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "dplktrackers"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method static handleAdData_wanka(Landroid/content/Context;Lorg/json/JSONObject;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->handleAdData_dcloud(Landroid/content/Context;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private static handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
    .registers 11

    add-int/lit8 p3, p3, -0x1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleTrackers_wanka template = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; t_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; tagMsg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ";  url="

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    move p6, p3

    move-object p3, p0

    new-instance p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;

    move v2, p4

    move-object p4, p1

    move p1, p7

    move-object p7, p5

    move p5, v2

    invoke-direct/range {p0 .. p7}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;-><init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {v0, p0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_63

    move-object/from16 v3, p0

    .line 5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 6
    const-string v5, "template_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 8
    const-string v6, "ua"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2e

    .line 9
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "webview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v16, 0x1

    goto :goto_30

    :cond_2e
    const/16 v16, 0x0

    .line 14
    :goto_30
    :try_start_30
    const-string v6, "u-a"

    const-string v7, "ua-webview"

    invoke-static {v7}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    nop

    .line 16
    :goto_3d
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 17
    const-string v6, "http_method"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 18
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-ne v5, v8, :cond_57

    const/4 v13, 0x1

    goto :goto_58

    :cond_57
    const/4 v13, 0x0

    :goto_58
    const/4 v12, 0x2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 19
    invoke-static/range {v9 .. v16}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_63
    return-void
.end method

.method private static handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string v0, "wanka"

    invoke-static {v0, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static runApp(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lio/dcloud/common/util/RuningAcitvityUtil;->StartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static view_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 3
    const-string p2, "imptrackers"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$1)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    check-cast p2, Lorg/json/JSONObject;

    .line 2
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    const-string p2, "dstlink"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string p2, "clickid"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    :try_start_20
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "click_id"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_31
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v3, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adid:Ljava/lang/String;

    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$000(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V

    :cond_4d
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass2 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$2)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v5, v3, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adid:Ljava/lang/String;

    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$000(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass3 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$3)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_url(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$clktrackers:Lorg/json/JSONArray;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$clktrackers:Lorg/json/JSONArray;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-string v1, "ua"

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$clktrackers:Lorg/json/JSONArray;

    if-eqz v0, :cond_81

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_8
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$clktrackers:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_81

    .line 4
    :try_start_10
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$clktrackers:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    const-string v4, "template_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 6
    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v5}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    .line 9
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "webview"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v11, 0x1

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    .line 13
    :goto_38
    const-string v6, "u-a"

    const-string v8, "ua-webview"

    invoke-static {v8}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v6, "url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 15
    const-string v6, "http_method"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 16
    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v4, v7, :cond_6f

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v5}, Lio/dcloud/feature/gg/dcloud/ADSim;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 21
    :cond_69
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v5}, Lio/dcloud/common/util/ADUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 24
    :cond_6f
    const-string v10, "clktrackers"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v5

    move-object v5, v0

    invoke-static/range {v4 .. v11}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$100(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_81
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass4 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$4)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$httpMethod:I

.field final synthetic val$isHeader:Z

.field final synthetic val$needHandleResponse:Z

.field final synthetic val$t_count:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/common/DHInterface/ICallBack;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$isHeader:Z

    iput p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$httpMethod:I

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$content:Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$needHandleResponse:Z

    iput p6, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$t_count:I

    iput-object p7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const-string v0, "handleTrackers_wanka Runnable Error url="

    .line 1
    iget-boolean v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$isHeader:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v3, "ua-webview"

    invoke-static {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_18
    move-object v1, v2

    .line 5
    :goto_19
    iget v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$httpMethod:I

    const/4 v4, 0x1

    if-nez v3, :cond_27

    .line 7
    :try_start_1e
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$url:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_31

    :catch_25
    nop

    goto :goto_31

    :cond_27
    if-ne v3, v4, :cond_31

    .line 10
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$content:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object v2

    .line 12
    :cond_31
    :goto_31
    iget-boolean v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$needHandleResponse:Z

    if-eqz v3, :cond_8c

    if-eqz v2, :cond_8c

    .line 14
    :try_start_37
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v2, "ret"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_80

    .line 16
    const-string v2, "msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";msg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    .line 18
    iget v8, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$t_count:I

    if-lez v8, :cond_7a

    .line 19
    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$url:Ljava/lang/String;

    iget v7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$httpMethod:I

    iget-boolean v9, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$needHandleResponse:Z

    iget-object v10, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    iget-boolean v12, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$isHeader:Z

    const/4 v11, 0x0

    invoke-static/range {v5 .. v12}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$100(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    .line 21
    :cond_7a
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    goto :goto_8c

    .line 22
    :cond_80
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_8c

    .line 23
    invoke-interface {v0, v4, v3}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8c
    :goto_8c
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass5 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$5)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fullJson:Lorg/json/JSONObject;

.field final synthetic val$report:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$report:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$fullJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_14

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$report:Lorg/json/JSONObject;

    const-string p2, "dwnltrackers"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$fullJson:Lorg/json/JSONObject;

    invoke-static {p1, p3, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$200(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    :cond_11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass6 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$6)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fullJson:Lorg/json/JSONObject;

.field final synthetic val$report:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$report:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$fullJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_1b

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$report:Lorg/json/JSONObject;

    const-string v0, "dwnltrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$fullJson:Lorg/json/JSONObject;

    invoke-static {p1, v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$200(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    :cond_11
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$fullJson:Lorg/json/JSONObject;

    check-cast p3, Landroid/content/Intent;

    invoke-static {p2, p1, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$300(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method
