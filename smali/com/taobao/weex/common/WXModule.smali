###### Class com.taobao.weex.common.WXModule (com.taobao.weex.common.WXModule)
.class public abstract Lcom/taobao/weex/common/WXModule;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/IWXObject;


# static fields
.field public static final ACTION_ACTIVITY_RESULT:Ljava/lang/String; = "actionActivityResult"

.field public static final ACTION_REQUEST_PERMISSIONS_RESULT:Ljava/lang/String; = "actionRequestPermissionsResult"

.field public static final GRANT_RESULTS:Ljava/lang/String; = "grantResults"

.field public static final PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field public static final RESULT_CODE:Ljava/lang/String; = "resultCode"


# instance fields
.field private mEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeepAlives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mModuleName:Ljava/lang/String;

.field public mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

.field public mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/common/WXModule;->mKeepAlives:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_56

    :cond_d
    if-eqz p3, :cond_2f

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2f

    const-string v0, "once"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 6
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2f

    const/4 p3, 0x1

    goto :goto_30

    :cond_2f
    const/4 p3, 0x0

    .line 11
    :goto_30
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mKeepAlives:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p3, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4b

    .line 13
    iget-object p3, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4b
    iget-object p3, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    return-void
.end method

.method protected final findComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 4
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventCallbacks(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getModuleName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public isOnce(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mKeepAlives:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onActivityBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .registers 1

    return-void
.end method

.method public onActivityDestroy()V
    .registers 1

    return-void
.end method

.method public onActivityPause()V
    .registers 1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onActivityResume()V
    .registers 1

    return-void
.end method

.method public onActivityStart()V
    .registers 1

    return-void
.end method

.method public onActivityStop()V
    .registers 1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method public removeAllEventListeners(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mKeepAlives:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_26
    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/common/WXModule;->mModuleName:Ljava/lang/String;

    return-void
.end method
