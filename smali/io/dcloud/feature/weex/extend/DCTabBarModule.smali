###### Class io.dcloud.feature.weex.extend.DCTabBarModule (io.dcloud.feature.weex.extend.DCTabBarModule)
.class public Lio/dcloud/feature/weex/extend/DCTabBarModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/extend/DCTabBarModule$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/feature/weex/extend/DCTabBarModule$1;-><init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/common/core/ui/TabBarWebview;->append(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_18
    return-void
.end method

.method public getTabBarHeight()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->getTabBarHeight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_d
    return-void
.end method

.method public hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_13
    return-void
.end method

.method public isTabBarVisible()Z
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    new-instance v1, Lio/dcloud/feature/weex/extend/DCTabBarModule$2;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/extend/DCTabBarModule$2;-><init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/TabBarWebview;->setClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_12
    return-void
.end method

.method public onDoubleClick(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    new-instance v1, Lio/dcloud/feature/weex/extend/DCTabBarModule$3;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/extend/DCTabBarModule$3;-><init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/TabBarWebview;->setDoubleClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_12
    return-void
.end method

.method public onMaskClick(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    new-instance v1, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;-><init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/TabBarWebview;->setMaskButtonClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_12
    return-void
.end method

.method public onMidButtonClick(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3
    new-instance v1, Lio/dcloud/feature/weex/extend/DCTabBarModule$4;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/extend/DCTabBarModule$4;-><init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/TabBarWebview;->setMidButtonClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_12
    return-void
.end method

.method public removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_13
    return-void
.end method

.method public setMask(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setMask(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_d
    return-void
.end method

.method public setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_d
    return-void
.end method

.method public setTabBarItem(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setItem(Lcom/alibaba/fastjson/JSONObject;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_11
    return-void
.end method

.method public setTabBarItems(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 5
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_37

    .line 9
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    if-nez v4, :cond_28

    goto :goto_34

    .line 14
    :cond_28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "index"

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v4}, Lio/dcloud/common/core/ui/TabBarWebview;->setItem(Lcom/alibaba/fastjson/JSONObject;)V

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 19
    :cond_37
    const-string v1, "midButton"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 20
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 22
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    :cond_49
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_4d
    return-void
.end method

.method public setTabBarStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setStyle(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_d
    return-void
.end method

.method public showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->showTabBar(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_d
    return-void
.end method

.method public showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_13
    return-void
.end method

.method public switchSelect(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getLaunchTabBar()Lio/dcloud/common/core/ui/TabBarWebview;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3
    const-string v1, "index"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->switchSelect(I)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCTabBarModule.AnonymousClass1 (io.dcloud.feature.weex.extend.DCTabBarModule$1)
.class Lio/dcloud/feature/weex/extend/DCTabBarModule$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCTabBarModule;->append(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCTabBarModule.AnonymousClass2 (io.dcloud.feature.weex.extend.DCTabBarModule$2)
.class Lio/dcloud/feature/weex/extend/DCTabBarModule$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCTabBarModule;->onClick(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$2;->this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCTabBarModule.AnonymousClass3 (io.dcloud.feature.weex.extend.DCTabBarModule$3)
.class Lio/dcloud/feature/weex/extend/DCTabBarModule$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCTabBarModule;->onDoubleClick(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$3;->this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCTabBarModule.AnonymousClass4 (io.dcloud.feature.weex.extend.DCTabBarModule$4)
.class Lio/dcloud/feature/weex/extend/DCTabBarModule$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCTabBarModule;->onMidButtonClick(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$4;->this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCTabBarModule.AnonymousClass5 (io.dcloud.feature.weex.extend.DCTabBarModule$5)
.class Lio/dcloud/feature/weex/extend/DCTabBarModule$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCTabBarModule;->onMaskClick(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;->this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
