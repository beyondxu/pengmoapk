###### Class io.dcloud.feature.gg.dcloud.ADHandler_youdao (io.dcloud.feature.gg.dcloud.ADHandler_youdao)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;
.super Lio/dcloud/feature/gg/dcloud/ADHandler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;-><init>()V

    return-void
.end method

.method static click_youdao(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    const-string v1, "clktrackers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    invoke-static {v0, v1, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->handleTrackers_youdao(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    .line 6
    :cond_f
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void
.end method

.method static dplk_youdao(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 3
    const-string p2, "dptrackers"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-static {p0, p2, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->handleTrackers_youdao(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    :cond_f
    return-void
.end method

.method static handleAdData_youdao(Landroid/content/Context;Lorg/json/JSONObject;J)V
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

.method static handleTrackers_youdao(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
    .registers 8

    if-eqz p0, :cond_61

    const/4 v0, 0x0

    .line 1
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ADHandler_youdao"

    invoke-static {v3, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 6
    const-string v3, "ua"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "webview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v3, "ua-webview"

    invoke-static {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    .line 13
    :goto_52
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;

    invoke-direct {v4, v1, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v3, v4}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_61
    return-void
.end method

.method static view_youdao(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 3
    const-string p2, "imptracker"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-static {p0, p2, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->handleTrackers_youdao(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    :cond_f
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_youdao.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADHandler_youdao$1)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_youdao;->handleTrackers_youdao(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalHeaders:Ljava/util/HashMap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;->val$finalHeaders:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_youdao$1;->val$finalHeaders:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
