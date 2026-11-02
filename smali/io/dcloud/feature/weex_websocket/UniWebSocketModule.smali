###### Class io.dcloud.feature.weex_websocket.UniWebSocketModule (io.dcloud.feature.weex_websocket.UniWebSocketModule)
.class public Lio/dcloud/feature/weex_websocket/UniWebSocketModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

.field private currentId:Ljava/lang/String;

.field private webSocketAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private webSocketEventListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    .line 2
    const-string v0, "WebSocketModule"

    const-string v1, "create new instance"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 4
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 6
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "protocol"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    const-string v3, "header"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    if-nez v3, :cond_3f

    .line 11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    .line 15
    :cond_3f
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    goto :goto_9a

    .line 19
    :cond_50
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_65

    .line 20
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_65
    iget-object v3, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v3

    .line 23
    new-instance v4, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    invoke-direct {v4, p0, v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;-><init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/lang/String;)V

    .line 24
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 25
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 26
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 27
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 28
    invoke-interface {v3, v1, v2, p1, v4}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->currentId:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_93} :catch_94

    return-void

    :catch_94
    move-exception p1

    .line 33
    const-string v0, "[UniWebSocketModule] alert param parse error "

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 4
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 6
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_3f

    if-eqz v1, :cond_33

    .line 12
    :try_start_2f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_33} :catch_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_3f

    .line 17
    :catch_33
    :cond_33
    :try_start_33
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, v2, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p1

    .line 19
    const-string v0, "[UniWebSocketModule] alert param parse error "

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;-><init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)V

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_17

    .line 19
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void

    .line 21
    :cond_17
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onclose(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onerror(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onopen(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 6
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 8
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->send(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    .line 12
    const-string v0, "[UniWebSocketModule] alert param parse error "

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    return-void
.end method

###### Class io.dcloud.feature.weex_websocket.UniWebSocketModule.AnonymousClass1 (io.dcloud.feature.weex_websocket.UniWebSocketModule$1)
.class Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close session with instance id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketModule"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->destroy()V

    goto :goto_32

    .line 6
    :cond_48
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$402(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;

    .line 9
    :cond_56
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    :cond_67
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$502(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

###### Class io.dcloud.feature.weex_websocket.UniWebSocketModule.WebSocketEventListener (io.dcloud.feature.weex_websocket.UniWebSocketModule$WebSocketEventListener)
.class Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_websocket/UniWebSocketModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketEventListener"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private onClose:Lcom/taobao/weex/bridge/JSCallback;

.field private onError:Lcom/taobao/weex/bridge/JSCallback;

.field private onMessage:Lcom/taobao/weex/bridge/JSCallback;

.field private onOpen:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_40

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p1, "reason"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "wasClean"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_2e

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 6

    const-string v0, "data"

    .line 1
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v1, :cond_37

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_13
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 6
    const-string v3, "@type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "base64"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 7
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 9
    :cond_2b
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_2f

    goto :goto_32

    .line 12
    :catch_2f
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_32
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public onOpen()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_15

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
