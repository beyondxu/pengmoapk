###### Class io.dcloud.feature.weex.extend.PlusStorageModule (io.dcloud.feature.weex.extend.PlusStorageModule)
.class public Lio/dcloud/feature/weex/extend/PlusStorageModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field mAllAppNStorages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/extend/PlusStorageModule;->mAllAppNStorages:Ljava/util/HashMap;

    return-void
.end method

.method private getAppNStorage()Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusStorageModule;->mAllAppNStorages:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    if-nez v1, :cond_2b

    .line 6
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->initAppNStorages(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/PlusStorageModule;->mAllAppNStorages:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object v1

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBundleDataSize(Landroid/content/SharedPreferences;)I
    .registers 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private getBundleKeys(Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private initAppNStorages(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_storages"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getAppNStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getBundleKeys(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getAllkeysResult(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_13

    .line 5
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_13
    return-void

    .line 8
    :cond_14
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 6
    :cond_a
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getAppNStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 8
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getItemResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1e

    .line 11
    :cond_1a
    invoke-static {v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getItemResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    :goto_1e
    if-eqz p2, :cond_23

    .line 14
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public length(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getAppNStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getBundleDataSize(Landroid/content/SharedPreferences;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getLengthResult(J)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_14

    .line 5
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_14
    return-void

    .line 8
    :cond_15
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void

    .line 6
    :cond_a
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getAppNStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 8
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->removeBundleData(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->removeItemResult(Z)Ljava/util/Map;

    move-result-object p1

    goto :goto_1e

    :cond_19
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->removeItemResult(Z)Ljava/util/Map;

    move-result-object p1

    :goto_1e
    if-eqz p2, :cond_23

    .line 14
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    if-nez p2, :cond_9

    goto :goto_23

    .line 6
    :cond_9
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/PlusStorageModule;->getAppNStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 8
    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->setBundleData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->setItemResult(Z)Ljava/util/Map;

    move-result-object p1

    goto :goto_1d

    :cond_18
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->setItemResult(Z)Ljava/util/Map;

    move-result-object p1

    :goto_1d
    if-eqz p3, :cond_22

    .line 14
    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_22
    return-void

    .line 15
    :cond_23
    :goto_23
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method
