###### Class io.dcloud.weex.MoudlesLoader (io.dcloud.weex.MoudlesLoader)
.class public Lio/dcloud/weex/MoudlesLoader;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static sLoader:Lio/dcloud/weex/MoudlesLoader;


# instance fields
.field private isInitHooksClass:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lio/dcloud/weex/MoudlesLoader;->isInitHooksClass:Z

    return-void
.end method

.method private executeOnCreateProcess(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Application;Z)V
    .registers 9

    .line 1
    :try_start_0
    const-string v0, "hooksClass"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lio/dcloud/weex/AppHookProxy;

    if-eqz v1, :cond_24

    if-eqz p3, :cond_1a

    .line 6
    check-cast v0, Lio/dcloud/weex/AppHookProxy;

    invoke-interface {v0, p2}, Lio/dcloud/weex/AppHookProxy;->onCreate(Landroid/app/Application;)V

    return-void

    .line 8
    :cond_1a
    instance-of p1, v0, Lio/dcloud/feature/uniapp/UniAppHookProxy;

    if-eqz p1, :cond_3e

    .line 9
    check-cast v0, Lio/dcloud/feature/uniapp/UniAppHookProxy;

    invoke-interface {v0, p2}, Lio/dcloud/feature/uniapp/UniAppHookProxy;->onSubProcessCreate(Landroid/app/Application;)V

    return-void

    .line 13
    :cond_24
    const-string p3, "onCreate"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 16
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v4

    invoke-virtual {p1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3e

    :catch_3e
    :catchall_3e
    :cond_3e
    return-void
.end method

.method public static getInstance()Lio/dcloud/weex/MoudlesLoader;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/weex/MoudlesLoader;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/weex/MoudlesLoader;

    invoke-direct {v1}, Lio/dcloud/weex/MoudlesLoader;-><init>()V

    sput-object v1, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    return-object v0
.end method

.method private getPluginsValue(Landroid/app/Application;)Lcom/alibaba/fastjson/JSONObject;
    .registers 3

    .line 1
    const-string v0, "dcloud_uniplugins.json"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private initMoudle(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Application;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_36

    .line 1
    :cond_3
    const-string p2, "plugins"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    if-lez p2, :cond_36

    const/4 p2, 0x0

    .line 4
    :goto_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_36

    .line 5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 7
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lio/dcloud/weex/MoudlesLoader;->registerMoudle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_36
    :goto_36
    return-void
.end method

.method private registerMoudle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "module"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1f

    .line 4
    :cond_13
    const-string v0, "component"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 5
    invoke-static {p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    return-void

    .line 6
    :cond_1f
    :goto_1f
    invoke-static {p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_22

    :catch_22
    :catchall_22
    :cond_22
    return-void
.end method


# virtual methods
.method public initHooksClass(Landroid/app/Application;Ljava/lang/Boolean;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/weex/MoudlesLoader;->isInitHooksClass:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-direct {p0, p1}, Lio/dcloud/weex/MoudlesLoader;->getPluginsValue(Landroid/app/Application;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 6
    const-string v1, "nativePlugins"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_31

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lio/dcloud/weex/MoudlesLoader;->isInitHooksClass:Z

    const/4 v1, 0x0

    .line 9
    :goto_1d
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 10
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v2, p1, v3}, Lio/dcloud/weex/MoudlesLoader;->executeOnCreateProcess(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Application;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 14
    :cond_31
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initUTSHooksClassArray(Landroid/app/Application;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/weex/MoudlesLoader;->getPluginsValue(Landroid/app/Application;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/dcloud/weex/MoudlesLoader;->initHooksClass(Landroid/app/Application;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_38

    .line 6
    const-string v1, "nativePlugins"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_38

    const/4 v1, 0x0

    .line 8
    :goto_28
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 9
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 10
    invoke-direct {p0, v2, p1}, Lio/dcloud/weex/MoudlesLoader;->initMoudle(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Application;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_38
    return-void
.end method

.method public onCreate(Landroid/app/Application;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_56

    .line 11
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->exists(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_56

    .line 15
    :cond_f
    new-instance p1, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->readAll(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    goto :goto_56

    .line 20
    :cond_28
    const-string p2, "components"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    goto :goto_56

    :cond_35
    const/4 p2, 0x0

    .line 25
    :goto_36
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_56

    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 28
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    const-string v2, "class"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v2, "component"

    invoke-direct {p0, v1, v0, v2}, Lio/dcloud/weex/MoudlesLoader;->registerMoudle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    add-int/lit8 p2, p2, 0x1

    goto :goto_36

    :cond_56
    :goto_56
    return-void
.end method
