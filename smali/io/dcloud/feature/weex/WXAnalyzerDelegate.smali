###### Class io.dcloud.feature.weex.WXAnalyzerDelegate (io.dcloud.feature.weex.WXAnalyzerDelegate)
.class public final Lio/dcloud/feature/weex/WXAnalyzerDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static ENABLE:Z = false


# instance fields
.field private mWXAnalyzer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->ENABLE:Z

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    if-nez p1, :cond_b

    :goto_a
    return-void

    .line 9
    :cond_b
    :try_start_b
    const-string v0, "com.taobao.weex.analyzer.WeexDevOptions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onCreate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_11

    .line 4
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    .line 8
    :cond_12
    :try_start_12
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onException"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/taobao/weex/WXSDKInstance;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onKeyUp"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_33

    return p1

    :catch_33
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public onPause()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onStart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onStop()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onStop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onWeexRenderSuccess(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-eqz v0, :cond_27

    if-nez p1, :cond_7

    goto :goto_27

    .line 5
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onWeexRenderSuccess"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/taobao/weex/WXSDKInstance;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_27
    :goto_27
    return-void
.end method

.method public onWeexViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)Landroid/view/View;
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    if-nez p2, :cond_9

    goto :goto_34

    .line 5
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onWeexViewCreated"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/taobao/weex/WXSDKInstance;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/View;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2

    :cond_34
    :goto_34
    const/4 p1, 0x0

    return-object p1
.end method
