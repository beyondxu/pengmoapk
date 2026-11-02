###### Class com.taobao.weex.ui.config.AutoScanConfigRegister (com.taobao.weex.ui.config.AutoScanConfigRegister)
.class public Lcom/taobao/weex/ui/config/AutoScanConfigRegister;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field public static final TAG:Ljava/lang/String; = "WeexScanConfigRegister"

.field private static scanDelay:J


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

.method static synthetic access$000()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigSync()V

    return-void
.end method

.method public static doScanConfig()V
    .registers 5

    .line 1
    sget-wide v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;

    invoke-direct {v1}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;-><init>()V

    sget-wide v2, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void

    .line 9
    :cond_1b
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigAsync()V

    return-void
.end method

.method public static doScanConfigAsync()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;

    invoke-direct {v1}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    const-string v1, "AutoScanConfigRegister"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static doScanConfigSync()V
    .registers 12

    .line 1
    const-string v0, "components"

    const-string v1, "modules"

    const-string v2, "WeexScanConfigRegister"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v3, :cond_c

    goto/16 :goto_e1

    .line 5
    :cond_c
    :try_start_c
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 7
    new-array v5, v4, [Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_dd

    .line 9
    :try_start_17
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_dd

    goto :goto_22

    :catch_1e
    move-exception v3

    .line 11
    :try_start_1f
    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_22
    if-eqz v5, :cond_e1

    .line 13
    array-length v3, v5

    if-nez v3, :cond_29

    goto/16 :goto_e1

    .line 16
    :cond_29
    array-length v3, v5

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v3, :cond_e1

    aget-object v7, v5, v6

    .line 17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_37

    goto/16 :goto_d9

    .line 20
    :cond_37
    const-string/jumbo v8, "weex_config_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d9

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 22
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4c} :catch_dd

    if-eqz v8, :cond_50

    goto/16 :goto_e1

    .line 26
    :cond_50
    :try_start_50
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_60

    goto/16 :goto_d9

    .line 30
    :cond_60
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " find config "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_7d
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 34
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 35
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    .line 36
    :goto_8c
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_a7

    .line 37
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    move-result-object v10

    if-nez v10, :cond_9d

    goto :goto_a4

    .line 41
    :cond_9d
    invoke-virtual {v10}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    :goto_a4
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    .line 45
    :cond_a7
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 46
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    .line 47
    :goto_b2
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_d9

    .line 48
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigComponentHolder;

    move-result-object v9

    if-nez v9, :cond_c3

    goto :goto_e1

    .line 52
    :cond_c3
    invoke-virtual {v9}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->isAppendTree()Z

    move-result v10

    invoke-virtual {v9}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->getType()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z
    :try_end_d2
    .catchall {:try_start_50 .. :try_end_d2} :catchall_d5

    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    :catchall_d5
    move-exception v7

    .line 56
    :try_start_d6
    invoke-static {v2, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_dd

    :cond_d9
    :goto_d9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2b

    :catch_dd
    move-exception v0

    .line 61
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e1
    :goto_e1
    return-void
.end method

.method public static setScanDelay(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    return-void
.end method

###### Class com.taobao.weex.ui.config.AutoScanConfigRegister.AnonymousClass1 (com.taobao.weex.ui.config.AutoScanConfigRegister$1)
.class Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfig()V
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
.method public run()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigAsync()V

    return-void
.end method

###### Class com.taobao.weex.ui.config.AutoScanConfigRegister.AnonymousClass2 (com.taobao.weex.ui.config.AutoScanConfigRegister$2)
.class Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigAsync()V
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
.method public run()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->access$000()V

    return-void
.end method
