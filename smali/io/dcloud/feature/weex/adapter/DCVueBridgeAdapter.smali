###### Class io.dcloud.feature.weex.adapter.DCVueBridgeAdapter (io.dcloud.feature.weex.adapter.DCVueBridgeAdapter)
.class public Lio/dcloud/feature/weex/adapter/DCVueBridgeAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->prompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_11
    return-void
.end method

.method public execSync(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v0, :cond_13

    .line 3
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->prompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_13
    const-string p1, ""

    return-object p1
.end method
