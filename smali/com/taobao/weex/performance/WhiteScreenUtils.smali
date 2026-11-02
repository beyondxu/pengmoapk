###### Class com.taobao.weex.performance.WhiteScreenUtils (com.taobao.weex.performance.WhiteScreenUtils)
.class public Lcom/taobao/weex/performance/WhiteScreenUtils;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doWhiteScreenCheck()Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 5
    :cond_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    .line 8
    :try_start_14
    const-string/jumbo v6, "wxapm"

    const-string v7, "new_ws_sampling"

    const-string v8, "100"

    invoke-interface {v0, v6, v7, v8}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2c
    cmpg-double v0, v2, v4

    if-gez v0, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method private static geViewDetailTreeMsg(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_9
    const-string/jumbo v1, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, -0x1

    .line 7
    filled-new-array {v1, v1}, [I

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    const-string/jumbo v2, "x"

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string/jumbo v2, "y"

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    instance-of v1, p0, Landroid/view/ViewGroup;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_7c

    const-string/jumbo v2, "type"

    if-eqz v1, :cond_70

    .line 13
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    check-cast p0, Landroid/view/ViewGroup;

    .line 15
    :goto_4a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6f

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/performance/WhiteScreenUtils;->geViewDetailTreeMsg(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_6f
    return-object v0

    .line 19
    :cond_70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7b} :catch_7c

    return-object v0

    :catch_7c
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static hasLeafViewOrSizeIgnore(Landroid/view/View;I)Z
    .registers 6

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-lez p1, :cond_1b

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge v0, v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    :cond_1a
    :goto_1a
    return v1

    .line 12
    :cond_1b
    :goto_1b
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 13
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 15
    invoke-static {v3, p1}, Lcom/taobao/weex/performance/WhiteScreenUtils;->hasLeafViewOrSizeIgnore(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_30

    return v1

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    return v0
.end method

.method private static isInWhiteList(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 5
    :cond_c
    const-string/jumbo v2, "ws_white_list"

    const/4 v3, 0x0

    const-string/jumbo v4, "wxapm"

    invoke-interface {v0, v4, v2, v3}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    .line 10
    :cond_1e
    :try_start_1e
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    array-length v2, v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_43

    aget-object v4, v0, v3

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_38} :catch_3f

    if-eqz v4, :cond_3c

    const/4 p0, 0x1

    return p0

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :catch_3f
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_43
    return v1
.end method

.method public static isWhiteScreen(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v1

    .line 2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_d

    return v0

    .line 5
    :cond_d
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->isInWhiteList(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x3

    .line 8
    invoke-static {v1, p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->hasLeafViewOrSizeIgnore(Landroid/view/View;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static takeViewTreeSnapShot(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 1
    const-string p0, "nullInstance"

    return-object p0

    .line 3
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->geViewDetailTreeMsg(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_14
    const-string p0, ""

    return-object p0
.end method
