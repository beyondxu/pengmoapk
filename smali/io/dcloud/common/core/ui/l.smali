###### Class io.dcloud.common.core.ui.l (io.dcloud.common.core.ui.l)
.class public Lio/dcloud/common/core/ui/l;
.super Lio/dcloud/common/DHInterface/AbsMgr;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$WindowEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/l$m;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;

.field b:Ljava/util/List;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field e:Ljava/lang/Runnable;

.field f:Z

.field g:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/ICore;)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string/jumbo v1, "windowmgr"

    invoke-direct {p0, p1, v1, v0}, Lio/dcloud/common/DHInterface/AbsMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;Ljava/lang/String;Lio/dcloud/common/DHInterface/IMgr$MgrType;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 1218
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 1658
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    .line 1770
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/l;->f:Z

    .line 2379
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->g:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private a()Lio/dcloud/common/core/ui/b;
    .registers 2

    .line 933
    invoke-direct {p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 934
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
    .registers 7

    .line 415
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 416
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
    :cond_d
    new-instance v0, Lio/dcloud/common/core/ui/l$j;

    invoke-direct {v0, p0, p2, p3, p4}, Lio/dcloud/common/core/ui/l$j;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    .line 428
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 23

    move-object/from16 v4, p5

    move-object/from16 v7, p7

    .line 310
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    const/4 v3, -0x1

    .line 312
    invoke-interface {v0, v3, v7}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 314
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;

    move-result-object v3

    invoke-interface {v7, v3}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    move v13, v0

    goto :goto_23

    :cond_22
    const/4 v13, 0x1

    .line 316
    :goto_23
    const-string v0, "delay"

    invoke-interface {v4, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 318
    const-string v3, "autoclose"

    invoke-interface {v4, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 324
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string/jumbo v5, "w2a_autoclose"

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x1

    goto :goto_51

    :cond_50
    const/4 v5, 0x0

    .line 325
    :goto_51
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    .line 326
    const-string/jumbo v8, "target"

    invoke-interface {v4, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 328
    const-string v8, "default"

    :cond_64
    if-nez v3, :cond_68

    if-eqz v5, :cond_69

    :cond_68
    const/4 v1, 0x1

    .line 332
    :cond_69
    const-string v2, "__from_stream_open_timeout__"

    const/16 v9, 0x1770

    invoke-virtual {v6, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 333
    const-string v9, "__from_stream_open_autoclose__"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 334
    const-string v6, "id:"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    if-eqz v1, :cond_86

    const/16 v2, 0x2710

    const/16 v14, 0x2710

    goto :goto_87

    :cond_86
    move v14, v2

    .line 338
    :goto_87
    const-string/jumbo v2, "w2a_delay"

    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v5, :cond_96

    move v10, v2

    goto :goto_97

    :cond_96
    move v10, v0

    .line 342
    :goto_97
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-static/range {p6 .. p6}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 343
    const-string v2, "rendering"

    iput-object v2, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    goto :goto_ac

    .line 345
    :cond_a8
    const-string v2, "loaded"

    iput-object v2, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 348
    :goto_ac
    const-string v2, "event"

    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ba

    .line 350
    iput-object v2, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 352
    :cond_ba
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "_need_auto_close_splash = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";_delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";appid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";f_event="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Main_Path"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lio/dcloud/common/core/ui/l$i;

    move-object/from16 v5, p2

    move-object/from16 v9, p4

    move-object/from16 v6, p6

    move v3, v1

    move-object v2, v8

    move-object v1, p0

    move/from16 v8, p1

    invoke-direct/range {v0 .. v12}, Lio/dcloud/common/core/ui/l$i;-><init>(Lio/dcloud/common/core/ui/l;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;ILio/dcloud/common/core/ui/b;IJ)V

    invoke-interface {v7, v0}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    if-eqz v3, :cond_101

    .line 409
    invoke-direct {p0, v14, v5, v9, v10}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V

    :cond_101
    if-eqz v13, :cond_10a

    .line 413
    iget-boolean v0, v9, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v0, :cond_10a

    .line 414
    invoke-virtual {v5, v9}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_10a
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v7, "arguments"

    .line 34
    const-string v2, "StreamSDK"

    const-string v3, "come into activeAppRootView"

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_42a

    .line 40
    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 41
    aget-object v0, v9, v10

    move-object v2, v0

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    const/4 v8, 0x0

    .line 43
    invoke-static {v8}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lio/dcloud/p/c4;->c()Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_42a

    .line 46
    :cond_29
    array-length v0, v9

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-lt v0, v12, :cond_38

    aget-object v0, v9, v11

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v13, v0

    goto :goto_39

    :cond_38
    const/4 v13, 0x0

    .line 47
    :goto_39
    array-length v0, v9

    const/4 v14, 0x4

    if-lt v0, v14, :cond_42

    aget-object v0, v9, v12

    check-cast v0, Ljava/lang/String;

    goto :goto_44

    :cond_42
    const-string v0, "default"

    :goto_44
    move-object v15, v0

    const/4 v3, 0x1

    .line 48
    aget-object v0, v9, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 49
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v0, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/dcloud/common/core/ui/a;

    const/16 v0, 0xa

    move/from16 v6, p1

    if-ne v0, v6, :cond_73

    .line 53
    const-string/jumbo v0, "winmgr"

    const-string v3, "RESTART_APP_ROOT_VIEW"

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->a()V

    .line 56
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->j()V

    .line 57
    invoke-virtual {v5, v2}, Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 58
    invoke-direct {v1, v5}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/a;)V

    .line 60
    :cond_73
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "__from_stream_open_style__"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :try_start_7d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_81} :catch_b6

    if-nez v17, :cond_92

    const/16 v17, 0x0

    .line 64
    :try_start_85
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_85 .. :try_end_8a} :catch_b4

    .line 65
    :try_start_8a
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_91} :catch_b2

    goto :goto_bd

    :cond_92
    const/16 v17, 0x0

    .line 67
    :try_start_94
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_9a} :catch_b4

    if-nez v10, :cond_bd

    .line 69
    :try_start_9c
    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 70
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_a8
    move-object v10, v0

    goto :goto_bd

    .line 72
    :cond_aa
    const-string/jumbo v0, "{}"

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_b1} :catch_b2

    goto :goto_a8

    :catch_b2
    move-exception v0

    goto :goto_ba

    :catch_b4
    move-exception v0

    goto :goto_b9

    :catch_b6
    move-exception v0

    const/16 v17, 0x0

    :goto_b9
    move-object v10, v8

    .line 77
    :goto_ba
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_bd
    :goto_bd
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 81
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    .line 83
    :cond_cf
    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    const-string v3, "path"

    if-eqz v0, :cond_114

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_114

    const-string/jumbo v0, "uniapp_weex_js_service"

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_114

    .line 84
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :try_start_f3
    const-string v0, "_www/app-service.js"

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_f8} :catch_f9

    goto :goto_fd

    :catch_f9
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_fd
    move-object/from16 v18, v4

    .line 91
    const-string v4, "__uniapp__service"

    move-object/from16 v19, v3

    move-object v3, v5

    const-string v5, "__uniapp__service"

    move-object/from16 p2, v8

    move-object/from16 v8, v18

    move-object/from16 v12, v19

    const/16 v18, 0x3

    const/16 v20, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_11d

    :cond_114
    move-object v12, v3

    move-object v3, v5

    move-object/from16 p2, v8

    const/16 v18, 0x3

    const/16 v20, 0x1

    move-object v8, v4

    .line 93
    :goto_11d
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;)V

    .line 94
    invoke-direct {v1, v2, v3}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/core/ui/c;

    move-result-object v4

    .line 95
    iget-object v0, v3, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    .line 97
    const-string/jumbo v5, "uni_restart_to_direct"

    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 98
    const-string v14, "debugRefresh"

    invoke-interface {v2, v14}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 100
    sget-boolean v22, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v22, :cond_15e

    sget-object v22, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15e

    .line 102
    sget-object v6, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    .line 103
    sput-object p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    .line 104
    invoke-interface {v2, v14, v6}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    const/4 v6, 0x1

    goto :goto_160

    :cond_15e
    move-object/from16 v5, v21

    .line 111
    :goto_160
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_188

    .line 113
    :try_start_166
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16b
    .catch Lorg/json/JSONException; {:try_start_166 .. :try_end_16b} :catch_187

    .line 115
    :try_start_16b
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_16f
    .catch Lorg/json/JSONException; {:try_start_16b .. :try_end_16f} :catch_170

    goto :goto_17a

    .line 117
    :catch_170
    :try_start_170
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_179
    .catch Lorg/json/JSONException; {:try_start_170 .. :try_end_179} :catch_181

    move-object v5, v7

    .line 120
    :goto_17a
    :try_start_17a
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_17e
    .catch Lorg/json/JSONException; {:try_start_17a .. :try_end_17e} :catch_17f

    goto :goto_18c

    :catch_17f
    nop

    goto :goto_184

    :catch_181
    nop

    move-object/from16 v5, p2

    :goto_184
    move-object/from16 v7, p2

    goto :goto_18c

    :catch_187
    nop

    :cond_188
    move-object/from16 v5, p2

    move-object v7, v5

    move-object v14, v7

    :goto_18c
    const/16 v21, 0x2

    const-string v11, ""

    if-eqz v0, :cond_1a9

    .line 125
    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v22

    if-eqz v22, :cond_1a9

    .line 127
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    move-object/from16 v22, v3

    move/from16 v23, v6

    move-object/from16 v24, v9

    const/4 v3, 0x0

    :goto_1a3
    move-object/from16 v18, v8

    move-object v8, v5

    move-object v5, v0

    goto/16 :goto_38d

    :cond_1a9
    move-object/from16 v22, v3

    const-string v3, "id"

    if-eqz v6, :cond_23e

    .line 131
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_1b4
    const-string v0, "1"

    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "render"
    :try_end_1bb
    .catch Lorg/json/JSONException; {:try_start_1b4 .. :try_end_1bb} :catch_235

    move/from16 v23, v6

    :try_start_1bd
    const-string v6, "always"

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_240

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".js"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_240

    .line 139
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 140
    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1fe
    .catch Lorg/json/JSONException; {:try_start_1bd .. :try_end_1fe} :catch_233

    if-eqz v14, :cond_228

    if-eqz v5, :cond_228

    move-object/from16 v24, v9

    .line 142
    :try_start_204
    const-string v9, "query"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_22a

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_22a

    :cond_228
    move-object/from16 v24, v9

    .line 147
    :cond_22a
    :goto_22a
    const-string/jumbo v0, "uniNView"

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_230
    .catch Lorg/json/JSONException; {:try_start_204 .. :try_end_230} :catch_231

    goto :goto_242

    :catch_231
    move-exception v0

    goto :goto_23a

    :catch_233
    move-exception v0

    goto :goto_238

    :catch_235
    move-exception v0

    move/from16 v23, v6

    :goto_238
    move-object/from16 v24, v9

    .line 151
    :goto_23a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_242

    :cond_23e
    move/from16 v23, v6

    :cond_240
    move-object/from16 v24, v9

    .line 154
    :goto_242
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 158
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v24, v20

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v6, v12, v17

    aput-object v10, v12, v20

    const/4 v6, 0x4

    const/16 v21, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v5, v9, v17

    aput-object v2, v9, v20

    aput-object v12, v9, v21

    aput-object v22, v9, v18

    const/4 v5, 0x3

    .line 159
    invoke-virtual {v1, v0, v5, v9}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 169
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v5

    if-eqz v5, :cond_28b

    .line 170
    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v17

    const-string v6, "UI"

    aput-object v6, v9, v20

    const/16 v21, 0x2

    aput-object v11, v9, v21

    const/16 v18, 0x3

    aput-object p2, v9, v18

    const/4 v12, 0x1

    invoke-virtual {v1, v5, v12, v9}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_28c

    :cond_28b
    const/4 v12, 0x1

    .line 173
    :goto_28c
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    if-nez v13, :cond_29c

    .line 177
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v6

    move-object/from16 v9, p2

    invoke-virtual {v6, v12, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2a6

    :cond_29c
    move-object/from16 v9, p2

    .line 179
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 182
    :goto_2a6
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b4

    .line 183
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    goto :goto_2b7

    .line 185
    :cond_2b4
    invoke-interface {v5, v8}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    .line 187
    :goto_2b7
    invoke-interface {v5, v15}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iput-object v8, v3, Lio/dcloud/common/adapter/util/ViewOptions;->name:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iput-boolean v13, v3, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    .line 190
    invoke-static {v8}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38a

    .line 191
    const-string v3, "plusrequire"

    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ee

    .line 192
    const-string v3, "_www/__wap2app.js"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    .line 193
    const-string v3, "_www/__wap2appconfig.js"

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto :goto_2ef

    :cond_2ee
    const/4 v9, 0x0

    .line 196
    :goto_2ef
    const-string v3, "_www/server_index_append.js"

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    invoke-interface {v5, v3, v12}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    .line 198
    const-string v3, "_www/server_index_append.css"

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_30e

    .line 202
    invoke-interface {v5, v3, v9}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_332

    .line 203
    :cond_30e
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v6

    if-ne v6, v12, :cond_31e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31e

    .line 204
    invoke-interface {v5, v3, v9}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_332

    .line 206
    :cond_31e
    const-string v3, "_www/__wap2app.css"

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_332

    .line 209
    invoke-interface {v5, v3, v9}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_332
    :goto_332
    const-string v3, "appendCss"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_343

    .line 214
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_355

    .line 216
    :cond_343
    const-string v3, "preloadcss"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_354

    .line 217
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_355

    :cond_354
    move-object v3, v9

    .line 219
    :goto_355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35e

    .line 220
    invoke-interface {v5, v9, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_35e
    const-string v3, "appendJs"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36f

    .line 225
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_381

    .line 227
    :cond_36f
    const-string v3, "preloadjs"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_380

    .line 228
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_381

    :cond_380
    move-object v3, v9

    .line 230
    :goto_381
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38a

    .line 231
    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    :cond_38a
    const/4 v3, 0x1

    goto/16 :goto_1a3

    :goto_38d
    if-eqz v4, :cond_3b2

    if-eqz v23, :cond_3af

    if-eqz v14, :cond_3af

    .line 237
    const-string v0, "isTab"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39f

    .line 238
    invoke-virtual {v4, v5}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_3b2

    .line 240
    :cond_39f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b2

    invoke-virtual {v4, v7}, Lio/dcloud/common/core/ui/c;->checkPagePathIsTab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b2

    .line 241
    invoke-virtual {v4, v5}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_3b2

    .line 245
    :cond_3af
    invoke-virtual {v4, v5}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    .line 249
    :cond_3b2
    :goto_3b2
    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_3bb

    if-eqz v3, :cond_41e

    goto :goto_3c1

    :cond_3bb
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v0

    if-eqz v0, :cond_41e

    :goto_3c1
    move-object v6, v2

    move-object/from16 v7, v16

    move-object/from16 v4, v18

    move-object/from16 v3, v22

    move/from16 v2, p1

    .line 250
    invoke-direct/range {v1 .. v8}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    move-object v2, v6

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "load "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " launchPage ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v4, v24, v12

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Main_Path"

    invoke-static {v4, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    aget-object v0, v24, v12

    const-string v4, "about:blank"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_402

    .line 253
    const-string/jumbo v0, "text/html"

    const-string/jumbo v4, "utf-8"

    const-string v6, "<html><head><meta charset=\"utf-8\"></head><body></body><html>"

    invoke-interface {v8, v11, v6, v0, v4}, Lio/dcloud/common/DHInterface/IWebview;->loadContentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40b

    .line 255
    :cond_402
    aget-object v0, v24, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 257
    :goto_40b
    const-string v0, "splashscreen"

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41a

    .line 259
    iput-byte v12, v5, Lio/dcloud/common/core/ui/b;->n:B

    goto :goto_420

    :cond_41a
    const/4 v12, 0x0

    .line 261
    iput-byte v12, v5, Lio/dcloud/common/core/ui/b;->n:B

    goto :goto_420

    :cond_41e
    move-object/from16 v3, v22

    .line 264
    :goto_420
    invoke-virtual {v1, v2, v8}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 265
    iget-object v0, v3, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    if-nez v0, :cond_42a

    .line 266
    invoke-virtual {v1, v2, v8}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_42a
    :goto_42a
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;)V
    .registers 9

    .line 297
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isUniNViewBackgroud()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 298
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 302
    :try_start_1a
    const-string/jumbo v2, "template"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v0, "path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "nvue_service.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_43
    const/4 v0, 0x4

    .line 307
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object p2, v2, v1

    const-string p2, "__uniapp__nvue"

    const/4 v5, 0x3

    aput-object p2, v2, v5

    .line 308
    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string/jumbo p1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p1, v0, v4

    const-string p1, "createServiceUniNView"

    aput-object p1, v0, v1

    aput-object v2, v0, v5

    const/16 p1, 0xa

    invoke-virtual {p0, p2, p1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .registers 5

    if-eqz p2, :cond_22

    .line 448
    iget-boolean v0, p2, Lio/dcloud/common/core/ui/a;->q:Z

    if-eqz v0, :cond_7

    goto :goto_22

    .line 451
    :cond_7
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_22

    .line 455
    :cond_e
    new-instance v1, Lio/dcloud/common/core/ui/l$k;

    invoke-direct {v1, p0, v0, p2, p1}, Lio/dcloud/common/core/ui/l$k;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/DHInterface/IApp;)V

    .line 477
    iget-object p1, p0, Lio/dcloud/common/core/ui/l;->e:Ljava/lang/Runnable;

    if-eqz p1, :cond_1d

    const/4 p2, 0x1

    .line 478
    iput-boolean p2, p0, Lio/dcloud/common/core/ui/l;->f:Z

    .line 479
    invoke-static {p1}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1d
    const-wide/16 p1, 0x64

    .line 481
    invoke-static {v1, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_22
    :goto_22
    return-void
.end method

.method private a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 9

    .line 886
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 887
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v1, :cond_a

    goto/16 :goto_a9

    .line 890
    :cond_a
    iget-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 891
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez v1, :cond_1c

    goto/16 :goto_a9

    .line 895
    :cond_1c
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_a9

    .line 897
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 898
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/util/AppStatusBarManager;->getStatusBarDefaultColor()I

    move-result p2

    .line 899
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 902
    :try_start_3b
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_48

    .line 904
    :catch_42
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    .line 906
    :goto_48
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    move p2, v3

    .line 910
    :cond_4f
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 911
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5c

    goto :goto_a9

    .line 914
    :cond_5c
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-nez v4, :cond_61

    goto :goto_a9

    .line 917
    :cond_61
    new-instance v4, Lcom/dcloud/android/widget/StatusBarView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/dcloud/android/widget/StatusBarView;-><init>(Landroid/content/Context;)V

    .line 918
    invoke-virtual {v4, v1}, Lcom/dcloud/android/widget/StatusBarView;->setStatusBarHeight(I)V

    .line 919
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 920
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 922
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 923
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    if-eqz v1, :cond_93

    .line 924
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sget v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 925
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_96

    .line 927
    :cond_93
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 929
    :goto_96
    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_a1

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_a1

    goto :goto_a9

    .line 932
    :cond_a1
    new-instance v0, Lio/dcloud/common/core/ui/l$c;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/core/ui/l$c;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a9
    :goto_a9
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/a;)V
    .registers 3

    .line 429
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 430
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 431
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .registers 32

    move-object/from16 v1, p1

    const-string/jumbo v2, "titlesize"

    const-string/jumbo v3, "titlecolor"

    const-string/jumbo v4, "titleSize"

    const-string/jumbo v5, "titleColor"

    const-string/jumbo v6, "titleText"

    const-string/jumbo v7, "titletext"

    .line 1059
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_2b2

    .line 1060
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v15, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 1061
    invoke-static {v1}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v8

    .line 1062
    const-string/jumbo v9, "type"

    const/16 v16, 0x0

    const-string v10, " "

    if-eqz v15, :cond_170

    .line 1063
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_170

    .line 1065
    :try_start_35
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_b8

    const-string/jumbo v11, "undefined"

    if-eqz v0, :cond_4e

    :try_start_3e
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1067
    :cond_4e
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1068
    :cond_64
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1071
    :cond_67
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1073
    :cond_77
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1074
    :cond_87
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1075
    const-string v0, "#000000"

    invoke-virtual {v15, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    :cond_8f
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1079
    :cond_9f
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1080
    :cond_af
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1081
    const-string v0, "17px"

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception v0

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1088
    :cond_bc
    :goto_bc
    :try_start_bc
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1089
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 1090
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_e8

    .line 1091
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e5

    .line 1093
    :cond_d1
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1094
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 1095
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_e8

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e5} :catch_e7

    :goto_e5
    move-object v10, v0

    goto :goto_e8

    :catch_e7
    nop

    .line 1100
    :cond_e8
    :goto_e8
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 1102
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f6
    move-object v3, v0

    .line 1104
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 1106
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_105
    move-object v2, v0

    .line 1108
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "transparent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_123

    const/4 v0, 0x0

    .line 1111
    :try_start_11a
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11e} :catch_11f

    goto :goto_123

    :catch_11f
    move-exception v0

    .line 1113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1117
    :cond_123
    :goto_123
    const-string/jumbo v0, "titleOverflow"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    const-string/jumbo v4, "titleAlign"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1119
    const-string/jumbo v5, "titleIcon"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    const-string/jumbo v6, "titleIconRadius"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1121
    const-string/jumbo v7, "subtitleText"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1122
    const-string/jumbo v11, "subtitleColor"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1123
    const-string/jumbo v12, "subtitleSize"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1124
    const-string/jumbo v13, "subtitleOverflow"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1125
    const-string/jumbo v14, "titleIconWidth"

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v4

    move-object v4, v3

    move-object v3, v10

    move-object v10, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v5

    move-object v5, v2

    move-object v2, v9

    move-object v9, v6

    move-object v6, v0

    goto :goto_182

    .line 1128
    :cond_170
    const-string v4, ""

    move-object v7, v4

    move-object v11, v7

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v17, v14

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v5, v16

    move-object v6, v5

    move-object/from16 v9, v17

    move-object v10, v9

    move-object v4, v6

    :goto_182
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    move-object/from16 v18, v2

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v19

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v21, v4

    const-string v4, "[\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\']"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1129
    invoke-static {v3}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v22, v3

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v19, v3, v23

    const/4 v4, 0x1

    const-string v24, "nativeobj"

    aput-object v24, v3, v4

    const-string v25, "show"

    const/4 v4, 0x2

    aput-object v25, v3, v4

    const/16 v25, 0x3

    aput-object v22, v3, v25

    const/4 v4, 0x1

    .line 1130
    invoke-virtual {v0, v2, v4, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    .line 1134
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    move-object/from16 v22, v3

    const/4 v4, 0x2

    const/16 v26, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v23

    aput-object v8, v3, v26

    const/4 v4, 0x4

    const/16 v27, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v22, v4, v23

    aput-object v24, v4, v26

    const-string v19, "addNativeView"

    aput-object v19, v4, v27

    aput-object v3, v4, v25

    const/16 v3, 0xa

    .line 1135
    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1138
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v0, v2, v1, v8}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1139
    instance-of v2, v0, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v2, :cond_2b2

    .line 1140
    move-object v2, v0

    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    move-object/from16 v8, v17

    move-object/from16 v28, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .line 1144
    invoke-static/range {v1 .. v14}, Lio/dcloud/common/util/TitleNViewUtil;->drawTitle(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v2, v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewPadding(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 1150
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p2, :cond_225

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    goto :goto_227

    :cond_225
    move-object/from16 v1, v16

    :goto_227
    invoke-static {v2, v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setButtons(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 1153
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    invoke-static {v2, v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    .line 1156
    const-string v0, "splitLine"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_256

    .line 1157
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v1, v28

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v24, 0x0

    const/16 v26, 0x1

    move-object/from16 v22, v2

    invoke-static/range {v22 .. v27}, Lio/dcloud/common/util/TitleNViewUtil;->setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 1161
    :cond_256
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v2, v0}, Lio/dcloud/common/util/TitleNViewUtil;->setProgress(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    .line 1164
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    invoke-static {v2, v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setHomeButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v2, v0}, Lio/dcloud/common/util/TitleNViewUtil;->setCapsuleButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    .line 1169
    const-string v0, "searchInput"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_28e

    .line 1170
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p2, :cond_289

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v16

    :cond_289
    move-object/from16 v1, v16

    invoke-static {v2, v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setSearchInput(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 1173
    :cond_28e
    const-string v0, "backgroundRepeat"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a1

    .line 1175
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundRepeat(Ljava/lang/String;)V

    .line 1178
    :cond_2a1
    const-string v0, "shadow"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2b2

    .line 1179
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v2, v0}, Lio/dcloud/common/util/TitleNViewUtil;->setShadow(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_2b2
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;Z)V
    .registers 23

    move-object/from16 v0, p1

    .line 830
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    .line 831
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    .line 832
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v5

    .line 833
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 834
    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    .line 835
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lio/dcloud/common/core/ui/a;

    .line 836
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v8

    .line 837
    invoke-virtual {v7, v8}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 838
    invoke-virtual {v7, v6}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 839
    iput v2, v6, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 840
    iput v2, v6, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 841
    iput v2, v6, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 842
    iput v2, v6, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    .line 843
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 844
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v10}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 845
    iput v1, v6, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 846
    iput v3, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 847
    iget v14, v7, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 848
    iget v15, v7, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 849
    iget v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 850
    iget v9, v7, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 851
    invoke-static {v7, v8, v7}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v8

    invoke-virtual {v5, v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 852
    iput-boolean v2, v7, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    .line 853
    iget v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v7, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 854
    iput-boolean v4, v5, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 855
    const-string v7, "left"

    const/4 v8, -0x1

    move/from16 v17, v9

    const/4 v9, -0x1

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 856
    const-string/jumbo v7, "top"

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 857
    const-string/jumbo v7, "width"

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 858
    const-string v7, "height"

    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 861
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 862
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v16, v13

    move-object/from16 v13, p0

    .line 863
    invoke-direct/range {v13 .. v19}, Lio/dcloud/common/core/ui/l;->a(IIIIII)Z

    move-result v2

    move/from16 v4, v16

    move/from16 v5, v17

    const-string/jumbo v6, "winmgr"

    if-eqz v2, :cond_b3

    .line 866
    const-string v1, "createWindow use LayoutParams.MATCH_PARENT !"

    invoke-static {v6, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 868
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 870
    :cond_b3
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-static {v14, v15, v4, v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_c4

    .line 873
    invoke-virtual {v0, v1, v3}, Lio/dcloud/common/core/ui/b;->a(II)V

    return-void

    :cond_c4
    add-int/2addr v14, v4

    if-gt v14, v1, :cond_cd

    add-int v2, v15, v5

    if-le v2, v3, :cond_cc

    goto :goto_cd

    :cond_cc
    return-void

    .line 875
    :cond_cd
    :goto_cd
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLayoutParams allW="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";pdrW="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";pdrH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";allH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v15, v5

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/core/ui/b;->a(II)V

    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "backgroundColor"

    const-string v4, "backgroundcolor"

    if-eqz v2, :cond_1c7

    .line 998
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 1000
    :try_start_10
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1002
    :cond_20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1003
    :cond_30
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1004
    const-string v0, "#F8F8F8"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1009
    :cond_3d
    :goto_3d
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1011
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    move-object v3, v0

    .line 1015
    const-string/jumbo v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "transparent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "absolute"

    if-eqz v4, :cond_6f

    .line 1017
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    const/4 v0, 0x0

    .line 1019
    :try_start_65
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_69} :catch_6a

    goto :goto_85

    :catch_6a
    move-exception v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7b

    .line 1024
    :cond_6f
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "float"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_7b
    :goto_7b
    move-object v0, v3

    goto :goto_85

    :cond_7d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1028
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const-string v5, "dock"

    .line 1032
    :goto_85
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    .line 1033
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget-boolean v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const/4 v7, 0x0

    if-eqz p2, :cond_a7

    if-nez v6, :cond_a7

    const/4 v6, -0x1

    if-eq v6, v4, :cond_a7

    int-to-float v4, v4

    .line 1036
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    goto :goto_a8

    :cond_a7
    const/4 v4, 0x0

    .line 1039
    :goto_a8
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v6, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1040
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v9, v8, :cond_ca

    if-eqz v6, :cond_ca

    .line 1041
    const-string v8, "mode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "parent"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    const/4 v4, 0x0

    .line 1046
    :cond_ca
    const-string/jumbo v6, "tags"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 1047
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_d9

    :cond_d8
    const/4 v6, 0x0

    .line 1052
    :goto_d9
    iget-object v8, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v10, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v11

    .line 1053
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "{\'top\':\'0px\',\'left\':\'0px\',\'height\':\'44px\',\'width\':\'100%\',"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ""

    if-lez v4, :cond_10d

    .line 1054
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "\'statusbar\':{\'background\':\'"

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\',\'backgroundnoalpha\':\'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'},"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_10e

    :cond_10d
    move-object v3, v14

    :goto_10e
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const-string v3, "blurEffect"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_131

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "\'blurEffect\':\'"

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_132

    :cond_131
    move-object v3, v14

    :goto_132
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'backgroundColor\':\'"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'position\':\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'dock\':\'top\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v0, "backgroundImage"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_16a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ",\'backgroundImage\':\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16b

    :cond_16a
    move-object v0, v14

    :goto_16b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "redDotColor"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ",\'redDotColor\':\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_18b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v7

    const/4 v1, 0x1

    aput-object v12, v2, v1

    aput-object p4, v2, v9

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v4, 0x4

    aput-object v0, v2, v4

    const/4 v0, 0x5

    aput-object v6, v2, v0

    const-string v0, "TitleNView"

    const/4 v5, 0x6

    aput-object v0, v2, v5

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v11, v0, v7

    const-string v4, "nativeobj"

    aput-object v4, v0, v1

    const-string v1, "View"

    aput-object v1, v0, v9

    aput-object v2, v0, v3

    const/16 v1, 0xa

    .line 1058
    invoke-virtual {v8, v10, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1c7
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V
    .registers 12

    .line 947
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 951
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 952
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p2, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p2

    .line 953
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d8

    .line 956
    :cond_2d
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v3, 0x4

    const-string v4, "navigationbar"

    const-string/jumbo v5, "titleNView"

    const/4 v6, 0x0

    if-ne v1, v3, :cond_71

    .line 957
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 958
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    sget-object v2, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p2, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6e

    .line 960
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 961
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto/16 :goto_d8

    .line 962
    :cond_62
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 963
    invoke-static {p2, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto/16 :goto_d8

    :cond_6e
    move-object p2, v6

    goto/16 :goto_d8

    .line 968
    :cond_71
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v3, 0x5

    const/4 v7, 0x1

    if-ne v1, v3, :cond_a8

    .line 969
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 970
    array-length v2, p2

    if-le v2, v7, :cond_6e

    .line 971
    aget-object p2, p2, v7

    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_6e

    .line 973
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 974
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_d8

    .line 975
    :cond_9d
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 976
    invoke-static {p2, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_d8

    .line 983
    :cond_a8
    array-length v1, p2

    if-le v1, v7, :cond_d6

    .line 984
    aget-object v1, p2, v7

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_c7

    .line 986
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 987
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_c8

    .line 988
    :cond_bc
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 989
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_c8

    :cond_c7
    move-object v1, v6

    .line 992
    :goto_c8
    array-length v3, p2

    if-le v3, v2, :cond_d3

    .line 993
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    move-object v8, v1

    move-object v1, p2

    move-object p2, v8

    goto :goto_d8

    :cond_d3
    move-object p2, v1

    move-object v1, v6

    goto :goto_d8

    :cond_d6
    move-object p2, v6

    move-object v1, p2

    .line 997
    :goto_d8
    invoke-direct {p0, p1, v0, p2, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    return-void
.end method

.method private a(IIIIII)Z
    .registers 7

    if-nez p1, :cond_a

    if-nez p2, :cond_a

    if-ne p3, p5, :cond_a

    if-ne p4, p6, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    .line 879
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    const-string v0, "id:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p1, 0x3

    .line 880
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    return v1

    :cond_21
    const/4 p2, 0x4

    if-ne p1, p2, :cond_33

    .line 885
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "second"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    return v1

    :cond_33
    const/4 p2, 0x5

    if-ne p1, p2, :cond_39

    if-eqz p4, :cond_39

    return v1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 309
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private b()Lio/dcloud/common/core/ui/a;
    .registers 4

    .line 57
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    return-object v0
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)Lio/dcloud/common/core/ui/b;
    .registers 2

    .line 55
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/core/ui/a;

    if-eqz p1, :cond_d

    .line 56
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/core/ui/c;
    .registers 13

    .line 62
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_73

    .line 64
    new-instance v1, Lio/dcloud/common/core/ui/c;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v6, 0x8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/core/ui/c;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 65
    invoke-interface {v4, p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p2

    const/4 v2, 0x1

    .line 66
    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v6

    .line 67
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    .line 68
    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v8

    .line 69
    iget v9, v8, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v9, v6, :cond_32

    .line 70
    iget-object v9, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v8, v9, p2, v6}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 72
    :cond_32
    invoke-virtual {v7, v8}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 73
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 74
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    const/4 v4, -0x1

    .line 75
    iput v4, v7, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 76
    iput v4, v7, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 77
    iget v6, v7, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v7, v7, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {p2, v6, v7, v4, v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 78
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    invoke-virtual {v5, v1, p2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, v1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 82
    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, p1

    const-string p1, "UI"

    aput-object p1, v5, v2

    const-string p1, ""

    const/4 v4, 0x2

    aput-object p1, v5, v4

    const/4 p1, 0x3

    aput-object v0, v5, p1

    invoke-virtual {p0, p2, v2, v5}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_73
    move-object v3, p0

    return-object v0
.end method

.method private b(ILjava/lang/Object;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_cc

    .line 2
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    aget-object v0, v2, v3

    move-object v4, v0

    check-cast v4, Lio/dcloud/common/DHInterface/IApp;

    .line 4
    array-length v0, v2

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-lt v0, v6, :cond_20

    aget-object v0, v2, v5

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    goto :goto_21

    :cond_20
    const/4 v7, 0x0

    .line 5
    :goto_21
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v8

    .line 6
    iget-object v0, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lio/dcloud/common/core/ui/a;

    .line 7
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    const/4 v10, 0x1

    if-nez v0, :cond_35

    const/4 v11, 0x1

    goto :goto_36

    :cond_35
    const/4 v11, 0x0

    :goto_36
    const/4 v12, 0x0

    if-nez v0, :cond_89

    .line 10
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v13, "__from_stream_open_style__"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :try_start_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_58

    .line 14
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_4e} :catch_60

    .line 15
    :try_start_4e
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_55} :catch_56

    goto :goto_65

    :catch_56
    move-exception v0

    goto :goto_62

    .line 17
    :cond_58
    :try_start_58
    const-string/jumbo v0, "{}"

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_65

    :catch_60
    move-exception v0

    move-object v14, v12

    .line 20
    :goto_62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :goto_65
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aget-object v15, v2, v10

    const/16 p1, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v15, v3, p1

    aput-object v14, v3, v10

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, p1

    aput-object v4, v14, v10

    aput-object v3, v14, v5

    aput-object v9, v14, v6

    .line 27
    invoke-virtual {v1, v0, v6, v14}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 36
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    goto :goto_8b

    :cond_89
    const/16 p1, 0x0

    .line 38
    :goto_8b
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-nez v7, :cond_99

    .line 42
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v10, v12}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_a1

    .line 44
    :cond_99
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    :goto_a1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " launchPage ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Main_Path"

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    aget-object v2, v2, v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    if-eqz v11, :cond_cc

    .line 51
    invoke-virtual {v9, v0}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_cc
    return-void
.end method


# virtual methods
.method a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
    .registers 34

    move/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 504
    const-string v10, "createFrameView"

    invoke-static {v10, v10}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 506
    aget-object v0, v7, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 509
    const-string v0, "Layout_Path"

    const-string v1, "WindowMgr createWindow"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-interface {v2, v11}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    .line 511
    invoke-interface {v2, v14}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v15

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v5, v4, :cond_2f

    .line 516
    iget-object v6, v8, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    goto :goto_3a

    :cond_2f
    if-ne v5, v1, :cond_34

    .line 518
    iget-object v6, v8, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    goto :goto_3a

    :cond_34
    if-ne v5, v0, :cond_39

    .line 520
    iget-object v6, v8, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    goto :goto_3a

    :cond_39
    move-object v6, v3

    :goto_3a
    if-nez v6, :cond_79

    const/16 v16, 0x5

    .line 523
    new-instance v0, Lio/dcloud/common/core/ui/b;

    const/4 v6, 0x4

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x4

    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, v8

    const/4 v8, 0x5

    const/4 v11, 0x4

    const/4 v14, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/b;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILjava/lang/Object;)V

    move-object v1, v2

    move-object v2, v3

    if-ne v5, v14, :cond_5b

    .line 525
    iput-object v0, v4, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    move-object/from16 v18, v12

    goto :goto_77

    :cond_5b
    if-ne v5, v11, :cond_6e

    .line 527
    iput-object v0, v4, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    .line 528
    iget-object v3, v4, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    move-object/from16 v18, v12

    if-eqz v3, :cond_77

    .line 529
    iget-wide v11, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    const-wide/16 v19, 0x1

    add-long v11, v11, v19

    iput-wide v11, v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    goto :goto_77

    :cond_6e
    move-object/from16 v18, v12

    if-ne v5, v8, :cond_77

    .line 533
    iput-object v0, v4, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_8b

    :cond_77
    :goto_77
    move-object v3, v0

    goto :goto_8a

    :cond_79
    move-object/from16 v1, p0

    move-object v4, v8

    move-object/from16 v18, v12

    const/4 v8, 0x5

    const/4 v14, 0x2

    if-ne v5, v14, :cond_89

    .line 536
    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_89

    return-object v6

    :cond_89
    move-object v3, v6

    :goto_8a
    const/4 v0, 0x0

    .line 542
    :goto_8b
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 543
    invoke-virtual {v1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, v6, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    .line 544
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v11

    .line 545
    iget v12, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v12, v15, :cond_ac

    .line 546
    iget-object v12, v11, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v11, v12, v13, v15}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 548
    :cond_ac
    invoke-virtual {v6, v11}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 549
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 551
    array-length v11, v7

    const-string v12, ""

    const/4 v8, 0x1

    if-le v11, v8, :cond_102

    .line 552
    aget-object v11, v7, v8

    move-object v8, v11

    check-cast v8, Lorg/json/JSONObject;

    .line 553
    invoke-virtual {v6, v8}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    if-eqz v8, :cond_f6

    .line 555
    const-string v11, "render"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_dc

    .line 557
    const-string v14, "onscreen"

    invoke-virtual {v8, v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 559
    const-string v14, "always"

    invoke-static {v11, v14}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 561
    invoke-virtual {v3, v11}, Lio/dcloud/common/core/ui/b;->setNeedRender(Z)V

    .line 564
    :cond_dc
    const-string v11, "name"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e9

    .line 565
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f7

    .line 566
    :cond_e9
    const-string v11, "id"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f6

    .line 567
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f7

    :cond_f6
    move-object v11, v12

    .line 570
    :goto_f7
    array-length v14, v7

    move-object/from16 v21, v3

    const/4 v3, 0x2

    if-le v14, v3, :cond_10b

    .line 571
    aget-object v12, v7, v3

    check-cast v12, Ljava/lang/String;

    goto :goto_10b

    :cond_102
    move-object/from16 v21, v3

    const/4 v3, 0x2

    .line 574
    iput v13, v6, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 575
    iput v15, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object v11, v12

    const/4 v8, 0x0

    :cond_10b
    :goto_10b
    if-ne v5, v3, :cond_117

    .line 584
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 585
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v12

    :cond_117
    move-object/from16 v23, v12

    .line 591
    invoke-virtual/range {v21 .. v21}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v3, :cond_12e

    .line 592
    invoke-virtual/range {v21 .. v21}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaWebview;

    move-object v14, v3

    move-object/from16 v4, v18

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    goto/16 :goto_19b

    .line 594
    :cond_12e
    iget-object v3, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    if-eqz v3, :cond_17f

    const-string v12, "path"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 596
    iget-object v3, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_165

    const-string v9, ".js"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_165

    const-string v12, ".js?"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_165

    .line 598
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_165
    move-object/from16 v22, v3

    .line 600
    new-instance v19, Lio/dcloud/common/core/ui/d;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v20

    iget-object v3, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    const/16 v25, 0x0

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v25}, Lio/dcloud/common/core/ui/d;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    move-object/from16 v4, v18

    move-object/from16 v14, v19

    goto :goto_19b

    :cond_17f
    move-object/from16 v3, v21

    move-object/from16 v12, v23

    if-eqz v9, :cond_18f

    .line 602
    new-instance v14, Lio/dcloud/common/core/ui/e;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v14, v4, v1, v3, v9}, Lio/dcloud/common/core/ui/e;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    goto :goto_199

    .line 604
    :cond_18f
    new-instance v4, Lio/dcloud/common/core/ui/e;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9, v1, v3}, Lio/dcloud/common/core/ui/e;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/core/ui/b;)V

    move-object v14, v4

    :goto_199
    move-object/from16 v4, v18

    .line 607
    :goto_19b
    invoke-virtual {v14, v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->setOriginalUrl(Ljava/lang/String;)V

    .line 608
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a7

    .line 609
    invoke-virtual {v14, v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 614
    :cond_1a7
    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v9

    if-eqz v9, :cond_1b1

    const/4 v9, 0x0

    .line 615
    invoke-virtual {v14, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setIWebViewFocusable(Z)V

    .line 617
    :cond_1b1
    iget-object v9, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mPullToRefresh:Lorg/json/JSONObject;

    if-eqz v9, :cond_1ba

    .line 618
    const-string v12, "pull_down_refresh"

    invoke-virtual {v14, v12, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    :cond_1ba
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "createWindow before _url="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 621
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v9

    if-nez v9, :cond_1e4

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1db

    .line 622
    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v9

    if-eqz v9, :cond_1db

    goto :goto_1e4

    :cond_1db
    const/4 v9, 0x5

    if-eq v5, v9, :cond_1e4

    .line 625
    const-string v0, "createWindow not manifestBeParsed"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    return-object v3

    .line 629
    :cond_1e4
    :goto_1e4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "createWindow after _url="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v9

    const/4 v12, 0x2

    if-ne v9, v12, :cond_215

    .line 633
    const-string v9, "launch_is_statusbar"

    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v6, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    .line 634
    const-string v9, "launch_statusbar_color"

    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    goto :goto_234

    .line 635
    :cond_215
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v9

    const/4 v12, 0x4

    if-ne v9, v12, :cond_234

    .line 636
    const-string v9, "second_is_statusbar"

    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v6, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    .line 637
    const-string v9, "second_statusbar_color"

    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    .line 640
    :cond_234
    :goto_234
    invoke-direct {v1, v3, v7}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V

    .line 643
    iget-boolean v7, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    if-nez v7, :cond_245

    .line 644
    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_24e

    :cond_245
    const/4 v12, 0x0

    .line 646
    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 649
    :goto_24e
    iget-object v7, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mCacheMode:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaWebview;->init()V

    move-object/from16 v7, p5

    .line 651
    invoke-virtual {v3, v7}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    invoke-static {v6, v7}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    invoke-virtual {v3, v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 655
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v7

    .line 657
    const-string v9, "blockNetworkImage"

    invoke-static {v8, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 658
    invoke-virtual {v14, v9, v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v9, "shareable"

    invoke-static {v8, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 661
    const-string v12, "shareable"

    invoke-virtual {v14, v12, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_295

    .line 663
    const-string/jumbo v9, "visible"

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 664
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v12

    if-eqz v9, :cond_290

    const/4 v9, 0x0

    goto :goto_292

    :cond_290
    const/16 v9, 0x8

    :goto_292
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_295
    const-string v9, "injection"

    invoke-static {v8, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 668
    const-string v12, "injection"

    invoke-virtual {v14, v12, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string/jumbo v9, "videoFullscreen"

    invoke-static {v8, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 672
    const-string/jumbo v12, "videoFullscreen"

    invoke-virtual {v14, v12, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v9

    const-string v12, "all"

    move/from16 v18, v0

    const-string v0, "horizontal"

    const-string/jumbo v5, "vertical"

    move-object/from16 v19, v11

    const-string v11, "bounce"

    move-object/from16 v20, v10

    const-string v10, "additionalHttpHeaders"

    const/4 v2, 0x2

    if-ne v9, v2, :cond_321

    .line 679
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2, v14}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 681
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_31b

    .line 684
    invoke-virtual {v6, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 685
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2ec

    .line 686
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_2ed

    :cond_2ec
    const/4 v8, 0x0

    .line 689
    :goto_2ed
    invoke-static {v2, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 690
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_308

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_308

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_304

    goto :goto_308

    :cond_304
    const/4 v0, 0x0

    .line 693
    iput-boolean v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_30b

    :cond_308
    :goto_308
    const/4 v12, 0x1

    .line 694
    iput-boolean v12, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    .line 698
    :goto_30b
    iget-object v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v5, "historyBack"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    move/from16 v22, v13

    move/from16 v21, v15

    goto/16 :goto_393

    :cond_31b
    move/from16 v22, v13

    move/from16 v21, v15

    goto/16 :goto_390

    .line 702
    :cond_321
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    const-string v9, "navigationbar"

    move/from16 v21, v15

    const-string/jumbo v15, "titleNView"

    move/from16 v22, v13

    const/4 v13, 0x4

    if-ne v2, v13, :cond_395

    .line 703
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_390

    .line 706
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34b

    .line 707
    invoke-static {v2, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v8, v14}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_358

    .line 709
    :cond_34b
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_358

    .line 710
    invoke-static {v2, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v8, v14}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 713
    :cond_358
    :goto_358
    invoke-virtual {v6, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 714
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_366

    .line 715
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_367

    :cond_366
    const/4 v8, 0x0

    .line 718
    :goto_367
    invoke-static {v2, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 719
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_382

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_382

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37e

    goto :goto_382

    :cond_37e
    const/4 v0, 0x0

    .line 722
    iput-boolean v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_385

    :cond_382
    :goto_382
    const/4 v12, 0x1

    .line 723
    iput-boolean v12, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    .line 727
    :goto_385
    iget-object v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v5, "historyBack"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    goto :goto_393

    .line 749
    :cond_390
    :goto_390
    const-string v9, "none"

    const/4 v8, 0x0

    :goto_393
    const/4 v12, 0x1

    goto :goto_3e3

    .line 733
    :cond_395
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a3

    .line 734
    invoke-static {v8, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2, v14}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_3b0

    .line 735
    :cond_3a3
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b0

    .line 736
    invoke-static {v8, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2, v14}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 738
    :cond_3b0
    :goto_3b0
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3bd

    .line 739
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_3bf

    :cond_3bd
    const/16 v16, 0x0

    .line 742
    :goto_3bf
    invoke-virtual {v6, v8}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 744
    invoke-static {v8, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 745
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3de

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3de

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d9

    goto :goto_3de

    :cond_3d9
    const/4 v0, 0x0

    .line 748
    iput-boolean v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    const/4 v12, 0x1

    goto :goto_3e1

    :cond_3de
    :goto_3de
    const/4 v12, 0x1

    .line 749
    iput-boolean v12, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    :goto_3e1
    move-object/from16 v8, v16

    :goto_3e3
    if-eqz v8, :cond_40f

    .line 754
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_40f

    .line 755
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 756
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 757
    :goto_3f8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40c

    .line 758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 759
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f8

    .line 761
    :cond_40c
    invoke-virtual {v14, v4, v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 764
    :cond_40f
    invoke-virtual {v14, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v3, v6, v3, v7, v14}, Lio/dcloud/common/core/ui/b;->a(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 767
    invoke-virtual {v6}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_422

    const/4 v0, 0x0

    .line 768
    invoke-direct {v1, v3, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Z)V

    :goto_41f
    move-object/from16 v2, p2

    goto :goto_44a

    :cond_422
    const/4 v0, 0x0

    .line 770
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    .line 771
    iget v5, v6, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v7, -0x1

    move/from16 v8, v22

    if-ne v5, v8, :cond_42f

    const/4 v5, -0x1

    .line 772
    :cond_42f
    iget v8, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v9, v21

    if-ne v8, v9, :cond_436

    const/4 v8, -0x1

    .line 773
    :cond_436
    iget v9, v6, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {v2, v9, v6, v5, v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 774
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 780
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_41f

    .line 782
    :goto_44a
    invoke-direct {v1, v3, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V

    move-object/from16 v5, p4

    .line 784
    invoke-direct {v1, v3, v5}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    .line 786
    invoke-static {v3}, Lio/dcloud/common/util/SubNViewsUtil;->initFrameSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    .line 789
    const-string/jumbo v5, "winmgr"

    const-string v6, "createWindow end !"

    invoke-static {v5, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v5, "createFrameView\u8017\u65f6\uff1a"

    move-object/from16 v6, v20

    invoke-static {v6, v5}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string/jumbo v5, "target"

    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v6, p1

    move/from16 v7, v18

    move-object/from16 v11, v19

    .line 792
    invoke-direct {v1, v6, v11, v5, v7}, Lio/dcloud/common/core/ui/l;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_509

    .line 794
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    .line 795
    invoke-static {v6}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48c

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48c

    .line 796
    const-string v7, "rendering"

    iput-object v7, v1, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    goto :goto_490

    .line 798
    :cond_48c
    const-string v7, "loaded"

    iput-object v7, v1, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 800
    :goto_490
    const-string v7, "event"

    invoke-interface {v2, v7}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 801
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_49e

    .line 802
    iput-object v7, v1, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 804
    :cond_49e
    const-string v7, "autoclose"

    invoke-interface {v2, v7}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 805
    invoke-static {v6}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b9

    const-string/jumbo v6, "w2a_autoclose"

    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b9

    const/4 v8, 0x1

    goto :goto_4ba

    :cond_4b9
    const/4 v8, 0x0

    .line 807
    :goto_4ba
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4c5

    if-eqz v8, :cond_4c3

    goto :goto_4c5

    :cond_4c3
    const/4 v11, 0x0

    goto :goto_4c6

    :cond_4c5
    :goto_4c5
    const/4 v11, 0x1

    .line 810
    :goto_4c6
    const-string v0, "delay"

    invoke-interface {v2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 812
    const-string/jumbo v6, "w2a_delay"

    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v8, :cond_4df

    move v9, v6

    goto :goto_4e0

    :cond_4df
    move v9, v0

    .line 815
    :goto_4e0
    const-string v0, "id:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4fb

    .line 816
    const-string v6, "id:*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4fb

    .line 818
    new-instance v5, Lio/dcloud/common/core/ui/l$a;

    move-object/from16 v8, p3

    invoke-direct {v5, v1, v3, v2, v8}, Lio/dcloud/common/core/ui/l$a;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    invoke-virtual {v3, v5}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    goto :goto_4fd

    :cond_4fb
    move-object/from16 v8, p3

    :goto_4fd
    move v5, v0

    .line 829
    new-instance v0, Lio/dcloud/common/core/ui/l$b;

    move-object v6, v4

    move v4, v11

    move-object v7, v14

    invoke-direct/range {v0 .. v9}, Lio/dcloud/common/core/ui/l$b;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;ZZLjava/lang/String;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/core/ui/a;I)V

    invoke-virtual {v7, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    :cond_509
    return-object v3
.end method

.method a(Landroid/view/ViewGroup;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 5
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/core/ui/a;

    .line 7
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p3

    check-cast p3, Lio/dcloud/common/core/ui/b;

    .line 8
    iput-object p2, p3, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 10
    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_2e

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_2e
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 446
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 447
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "UI"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "n_createDirectWebview"

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 p2, 0x0

    const/4 v2, 0x3

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .registers 10

    .line 432
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 434
    :try_start_a
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 436
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 438
    invoke-virtual {v5, v4, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 440
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 441
    invoke-virtual {p1, v0, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p3

    .line 443
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 445
    :goto_23
    sget-object p3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string p2, "UI"

    aput-object p2, v3, v2

    const-string p2, "n_createHDWebview"

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    invoke-virtual {p0, p3, v2, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v7, p5

    const/4 v8, 0x0

    if-eqz v7, :cond_13

    .line 267
    const-string v0, "path"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 268
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_14

    :cond_13
    move-object v9, v8

    .line 270
    :goto_14
    invoke-static {v9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const/4 v10, 0x1

    .line 273
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uniapp_weex_js_service"

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 274
    invoke-interface {p1, v11}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v12

    .line 275
    invoke-interface {p1, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v13

    .line 276
    new-instance v0, Lio/dcloud/common/core/ui/b;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/b;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILjava/lang/Object;)V

    .line 277
    new-instance v1, Lio/dcloud/common/core/ui/d;

    move-object v2, v0

    move-object v0, v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v6, 0x1

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v3, v9

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/d;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    move-object v1, v0

    move-object v0, v2

    .line 278
    invoke-virtual {v1, v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 280
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 281
    iget v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v4, v13, :cond_64

    .line 282
    iget-object v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v12, v13}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 284
    :cond_64
    invoke-virtual {v2, v3}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 285
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 286
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    .line 287
    iget v4, v2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v5, -0x1

    if-ne v4, v12, :cond_77

    const/4 v4, -0x1

    .line 288
    :cond_77
    iget v6, v2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v6, v13, :cond_7c

    const/4 v6, -0x1

    .line 289
    :cond_7c
    iget v7, v2, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {v3, v7, v2, v4, v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 290
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 291
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v0, v11, v11}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    move-object/from16 v4, p2

    .line 293
    invoke-virtual {v4, v0, v2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, p4

    .line 294
    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->setFrameId(Ljava/lang/String;)V

    .line 295
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v0}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 296
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v11

    const-string v1, "UI"

    aput-object v1, v2, v10

    const-string v1, ""

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v8, v2, v1

    invoke-virtual {p0, v0, v10, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
    .registers 19

    .line 482
    new-instance v0, Lio/dcloud/common/core/ui/l$l;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move v3, p3

    move-object v2, p4

    move v9, p5

    move-object/from16 v4, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/dcloud/common/core/ui/l$l;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;III)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/l;->e:Ljava/lang/Runnable;

    const-wide/16 p1, 0x64

    .line 503
    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lio/dcloud/common/core/ui/b;)V
    .registers 5

    .line 935
    sget v0, Lio/dcloud/common/core/ui/b;->B:I

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 936
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 937
    iget-object v0, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 938
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 939
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 940
    iput-object v0, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 942
    :cond_1f
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->r()V

    .line 943
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->i()V

    const/4 v0, 0x0

    .line 944
    iput-boolean v0, p1, Lio/dcloud/common/core/ui/b;->i:Z

    .line 945
    iput-boolean v0, p1, Lio/dcloud/common/core/ui/b;->h:Z

    .line 946
    iput-boolean v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    return-void
.end method

.method public declared-synchronized a(Lio/dcloud/common/core/ui/l$m;)V
    .registers 3

    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    monitor-exit p0

    return-void

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method declared-synchronized a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "create "

    const-string v1, "come into createAppRootView and new le rootview  pAppid==="

    const-string v2, "come into createAppRootView pAppid==="

    monitor-enter p0

    .line 15
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "streamsdk"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 18
    iget-boolean v4, v2, Lio/dcloud/common/core/ui/a;->h:Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_97

    if-nez v4, :cond_29

    goto :goto_2b

    :cond_29
    monitor-exit p0

    return v3

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_36

    .line 19
    :try_start_2d
    iget-boolean v2, v2, Lio/dcloud/common/core/ui/a;->h:Z

    if-nez v2, :cond_36

    .line 20
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "streamsdk"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AppRootView"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main_Path"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lio/dcloud/common/core/ui/a;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lio/dcloud/common/core/ui/a;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;)V

    .line 26
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 27
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getAppViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 28
    invoke-interface {p1, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 29
    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    .line 30
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    const-string/jumbo v5, "{}"

    invoke-static {v5}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 32
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;
    :try_end_95
    .catchall {:try_start_2d .. :try_end_95} :catchall_97

    monitor-exit p0

    return v2

    :catchall_97
    move-exception p1

    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p1
.end method

.method b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 52
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 53
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-void

    .line 54
    :cond_1e
    :goto_1e
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "UI"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "n_createSecondWebview"

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 p2, 0x0

    const/4 v2, 0x3

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setMaskLayer(Z)V

    .line 61
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected declared-synchronized c()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-nez v0, :cond_6

    goto :goto_34

    .line 5
    :cond_6
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/l$m;

    .line 7
    invoke-interface {v2}, Lio/dcloud/common/core/ui/l$m;->onAnimationEnd()V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 10
    :cond_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 11
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_34
    .catchall {:try_start_6 .. :try_end_32} :catchall_36

    monitor-exit p0

    return-void

    :catch_34
    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public c(Lio/dcloud/common/core/ui/b;)V
    .registers 5

    .line 14
    sget v0, Lio/dcloud/common/core/ui/b;->A:I

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 15
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 16
    iget-object v0, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 17
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 18
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 21
    :cond_1f
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 22
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    .line 23
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->k()V

    return-void
.end method

.method public d(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setMaskLayer(Z)V

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispose()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->dispose()V

    goto :goto_11

    .line 9
    :cond_29
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v0, :cond_35

    .line 11
    invoke-static {}, Lio/dcloud/common/core/ui/f;->a()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "event"

    const-string v4, "auto_pop "

    const-string v5, "quitModel"

    const-string v6, "auto_push "

    const-string v7, "query"

    const-string v9, "Exception msg="

    const-string v8, "setStyle "

    const-string v10, "showWindow"

    const-string v11, "setUnParent "

    const-string v12, "hideShowWindow"

    const-string v13, "hideWindow"

    const-string v14, "setParent "

    const-string v15, "closeWindow"

    move-object/from16 v16, v15

    .line 1
    :try_start_22
    invoke-virtual/range {p0 .. p1}, Lio/dcloud/common/DHInterface/AbsMgr;->checkMgrId(Lio/dcloud/common/DHInterface/IMgr$MgrType;)Z

    move-result v17
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_b41

    if-nez v17, :cond_35

    .line 2
    :try_start_28
    iget-object v3, v1, Lio/dcloud/common/DHInterface/AbsMgr;->mCore:Lio/dcloud/common/DHInterface/ICore;

    move-object/from16 v4, p1

    invoke-interface {v3, v4, v0, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_b44

    :cond_35
    const/4 v15, -0x1

    if-eq v0, v15, :cond_b31

    const/16 v15, 0x34

    move-object/from16 v18, v7

    if-eq v0, v15, :cond_b14

    const-string v15, "View_Visible_Path"

    const-string v7, "Animation_Path"

    move-object/from16 v22, v3

    const/16 v24, 0x2

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_b4a

    packed-switch v0, :pswitch_data_b6a

    const-string v8, "Auto_Pop_Push_Path"

    const/16 v9, 0xa

    const-string v10, "appid"

    packed-switch v0, :pswitch_data_b74

    packed-switch v0, :pswitch_data_b92

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_baa

    goto/16 :goto_b3d

    .line 4999
    :pswitch_5f
    :try_start_5f
    invoke-direct {v1}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/a;->reload(Ljava/lang/String;)V

    goto/16 :goto_1de

    .line 5000
    :pswitch_6c
    invoke-direct {v1}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/a;->reload(Z)V

    goto/16 :goto_1de

    .line 5004
    :pswitch_76
    invoke-direct {v1}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/a;->reload(Z)V

    goto/16 :goto_1de

    .line 5005
    :pswitch_80
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 5006
    iget-object v0, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, v0, v3}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V

    goto/16 :goto_1de

    .line 5544
    :pswitch_8a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5545
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_1de

    .line 5547
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1de

    .line 5548
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5549
    :pswitch_ab
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_dd

    .line 5550
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 5551
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 5552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5553
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->h()V

    .line 5554
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v0}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 5555
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/b;->g:Z

    if-eqz v2, :cond_dd

    .line 5556
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    const/4 v2, 0x0

    .line 5557
    iput-boolean v2, v0, Lio/dcloud/common/core/ui/b;->g:Z

    :cond_dd
    const/4 v2, 0x1

    .line 5560
    iput-boolean v2, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    const/4 v4, 0x0

    .line 5561
    iput-boolean v4, v0, Lio/dcloud/common/core/ui/b;->i:Z

    goto/16 :goto_1de

    :pswitch_e5
    const/4 v4, 0x0

    .line 5590
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 5591
    aget-object v2, v0, v4

    check-cast v2, Lio/dcloud/common/core/ui/b;

    const/16 v20, 0x1

    .line 5592
    aget-object v4, v0, v20

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5593
    aget-object v5, v0, v24

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 5594
    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_115

    const-string/jumbo v6, "\u53d1\u751f\u4f4d\u7f6e\u533a\u57df\u53d8\u5316"

    goto :goto_123

    :cond_115
    if-eqz v5, :cond_11b

    .line 5596
    const-string/jumbo v6, "zindex\u53d1\u751f\u4e86\u53d8\u5316"

    goto :goto_123

    :cond_11b
    if-eqz v0, :cond_121

    .line 5597
    const-string/jumbo v6, "\u8bbe\u7f6e\u900f\u660e\u5ea6\u53d8\u5316"

    goto :goto_123

    .line 5598
    :cond_121
    const-string v6, ""

    :goto_123
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5599
    iput-boolean v0, v2, Lio/dcloud/common/core/ui/b;->d:Z

    .line 5600
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->p()V

    .line 5601
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/16 v20, 0x1

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v2, Lio/dcloud/common/core/ui/b;->g:Z

    .line 5602
    iget-boolean v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    const/16 v6, 0x1c

    if-eqz v3, :cond_187

    if-eqz v4, :cond_187

    .line 5604
    iget-boolean v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v0, :cond_16c

    .line 5605
    iget-object v0, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 5606
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 5607
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v6, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5608
    iput-object v3, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 5610
    :cond_163
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->s()V

    const/4 v4, 0x0

    .line 5611
    invoke-virtual {v2, v4}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto/16 :goto_1de

    .line 5613
    :cond_16c
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 5614
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->o()V

    if-eqz v4, :cond_1de

    .line 5616
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5620
    iget-object v0, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto :goto_1de

    :cond_187
    if-nez v5, :cond_190

    if-nez v0, :cond_190

    if-eqz v4, :cond_18e

    goto :goto_190

    :cond_18e
    const/4 v7, 0x0

    goto :goto_191

    :cond_190
    :goto_190
    const/4 v7, 0x1

    .line 5624
    :goto_191
    iput-boolean v7, v2, Lio/dcloud/common/core/ui/b;->v:Z

    .line 5625
    iget-boolean v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v0, :cond_1a8

    if-eqz v7, :cond_1a8

    .line 5627
    iget-object v0, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 5628
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v6, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5629
    iput-object v3, v2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 5632
    :cond_1a8
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 5633
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->o()V

    if-eqz v4, :cond_1de

    .line 5635
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1de

    .line 5638
    :pswitch_1be
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1d2

    .line 5639
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 5640
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 5642
    :cond_1d2
    invoke-direct {v1}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 5643
    :pswitch_1db
    invoke-direct {v1, v0, v2}, Lio/dcloud/common/core/ui/l;->a(ILjava/lang/Object;)V

    :cond_1de
    :goto_1de
    const/4 v4, 0x0

    goto/16 :goto_b3d

    .line 5652
    :pswitch_1e1
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 5653
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    const/16 v20, 0x1

    aget-object v0, v0, v20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5678
    :pswitch_1fb
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 5679
    aget-object v2, v0, v19

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v20, 0x1

    .line 5680
    aget-object v4, v0, v20

    check-cast v4, Lio/dcloud/common/DHInterface/IApp;

    .line 5681
    aget-object v5, v0, v24

    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    .line 5683
    array-length v5, v0

    const/4 v6, 0x4

    if-le v5, v6, :cond_22b

    .line 5684
    aget-object v5, v0, v6

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22b

    aget-object v5, v0, v6

    instance-of v6, v5, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    if-eqz v6, :cond_22b

    .line 5685
    check-cast v5, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    move-object v8, v5

    goto :goto_22c

    :cond_22b
    const/4 v8, 0x0

    .line 5690
    :goto_22c
    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_242

    .line 5691
    aget-object v3, v0, v3

    instance-of v5, v3, Lio/dcloud/common/core/ui/a;

    if-eqz v5, :cond_239

    .line 5692
    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_243

    .line 5693
    :cond_239
    instance-of v5, v3, Lio/dcloud/common/core/ui/b;

    if-eqz v5, :cond_242

    .line 5694
    check-cast v3, Lio/dcloud/common/core/ui/b;

    move-object v5, v3

    const/4 v3, 0x0

    goto :goto_244

    :cond_242
    const/4 v3, 0x0

    :goto_243
    const/4 v5, 0x0

    .line 5698
    :goto_244
    array-length v6, v0

    const/4 v10, 0x5

    if-lt v6, v10, :cond_253

    const/16 v23, 0x4

    .line 5699
    aget-object v6, v0, v23

    instance-of v10, v6, Lio/dcloud/common/DHInterface/IEventCallback;

    if-eqz v10, :cond_253

    .line 5700
    check-cast v6, Lio/dcloud/common/DHInterface/IEventCallback;

    goto :goto_254

    :cond_253
    const/4 v6, 0x0

    :goto_254
    if-nez v3, :cond_25c

    .line 5703
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    :cond_25c
    if-nez v5, :cond_266

    if-nez v3, :cond_262

    const/4 v5, 0x0

    goto :goto_266

    .line 5706
    :cond_262
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v5

    .line 5710
    :cond_266
    :goto_266
    array-length v10, v0

    const/4 v11, 0x6

    if-ne v10, v11, :cond_26e

    const/16 v21, 0x5

    .line 5711
    aget-object v0, v0, v21
    :try_end_26e
    .catchall {:try_start_5f .. :try_end_26e} :catchall_31

    :cond_26e
    const/4 v0, 0x1

    if-ne v2, v0, :cond_273

    goto/16 :goto_1de

    :cond_273
    move-object/from16 v25, v4

    move-object v4, v3

    move-object/from16 v3, v25

    .line 5718
    :try_start_278
    invoke-virtual/range {v1 .. v8}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;

    move-result-object v0
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27c} :catch_27d
    .catchall {:try_start_278 .. :try_end_27c} :catchall_31

    return-object v0

    :catch_27d
    move-exception v0

    .line 5722
    :try_start_27e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5723
    const-string/jumbo v2, "winmgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1de

    .line 5955
    :pswitch_295
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 5956
    aget-object v2, v0, v19

    instance-of v4, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_1de

    .line 5957
    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 5958
    array-length v4, v0

    if-ge v4, v3, :cond_2a7

    const/4 v3, 0x1

    goto :goto_2af

    :cond_2a7
    aget-object v3, v0, v24

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2af
    if-eqz v3, :cond_2b7

    .line 5960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 5962
    :cond_2b7
    sget v3, Lio/dcloud/common/core/ui/b;->z:I

    invoke-virtual {v2, v3}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 5966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5967
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lio/dcloud/common/core/ui/l$d;

    invoke-direct {v5, v1, v2, v0}, Lio/dcloud/common/core/ui/l$d;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_1de

    .line 4254
    :pswitch_2df
    invoke-direct {v1}, Lio/dcloud/common/core/ui/l;->a()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0

    .line 4255
    :pswitch_2e4
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 4256
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    const/16 v20, 0x1

    .line 4257
    aget-object v4, v0, v20

    check-cast v4, Ljava/lang/String;

    .line 4258
    aget-object v5, v0, v24

    check-cast v5, Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 4260
    array-length v6, v0

    if-le v6, v3, :cond_307

    .line 4261
    aget-object v6, v0, v3

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_307

    .line 4262
    aget-object v0, v0, v3

    check-cast v0, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    goto :goto_308

    :cond_307
    const/4 v0, 0x0

    .line 4266
    :goto_308
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    .line 4267
    iget-object v6, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    .line 4268
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    .line 4269
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/common/core/ui/a;

    .line 4271
    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 4273
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v4, v10, v19

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v19

    aput-object v2, v11, v9

    aput-object v10, v11, v24

    aput-object v6, v11, v3

    const/16 v23, 0x4

    aput-object v0, v11, v23

    .line 4274
    invoke-virtual {v1, v7, v3, v11}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 4278
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v5, :cond_34a

    .line 4280
    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    const/4 v3, -0x1

    .line 4281
    invoke-interface {v5, v3, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4283
    :cond_34a
    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-object v0

    .line 4288
    :pswitch_34e
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 4289
    aget-object v2, v0, v19

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v20, 0x1

    .line 4290
    aget-object v4, v0, v20

    check-cast v4, Lio/dcloud/common/DHInterface/IApp;

    .line 4291
    aget-object v5, v0, v24

    check-cast v5, Lio/dcloud/common/DHInterface/IWebview;

    .line 4292
    aget-object v0, v0, v3

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 4293
    invoke-virtual {v1, v2, v4, v5, v0}, Lio/dcloud/common/core/ui/l;->a(Landroid/view/ViewGroup;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1de

    .line 2701
    :pswitch_36a
    instance-of v0, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_37a

    .line 2702
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 2703
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2704
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_390

    .line 2705
    :cond_37a
    instance-of v0, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_38e

    .line 2706
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 2707
    aget-object v2, v0, v19

    check-cast v2, Landroid/app/Activity;

    const/16 v20, 0x1

    .line 2708
    aget-object v0, v0, v20

    check-cast v0, Ljava/lang/String;

    goto :goto_390

    :cond_38e
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2710
    :goto_390
    iget-object v3, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2711
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_39c
    .catchall {:try_start_27e .. :try_end_39c} :catchall_31

    .line 2712
    :cond_39c
    :try_start_39c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3bf

    .line 2713
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2714
    invoke-static {v4, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39c

    .line 2715
    iget-object v5, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    .line 2716
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-ne v2, v4, :cond_39c

    .line 2717
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3be
    .catchall {:try_start_39c .. :try_end_3be} :catchall_3c0

    return-object v0

    :cond_3bf
    return-object v15

    :catchall_3c0
    move-exception v0

    goto/16 :goto_b44

    .line 3291
    :pswitch_3c3
    :try_start_3c3
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 3292
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    .line 3294
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_1de

    .line 3296
    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->setWebViewIntoPreloadView(Landroid/view/View;)V

    goto/16 :goto_1de

    .line 3410
    :pswitch_3dd
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 3411
    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_1de

    .line 3412
    :pswitch_3e5
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 3413
    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/l;->d(Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_1de

    :pswitch_3ed
    if-eqz v2, :cond_1de

    .line 3414
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    .line 3417
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1de

    .line 3419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_403
    if-ltz v2, :cond_45f

    .line 3420
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/dcloud/common/core/ui/b;

    if-eqz v9, :cond_45c

    if-nez v3, :cond_411

    .line 3423
    iget-object v3, v9, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    :cond_411
    if-nez v4, :cond_417

    .line 3426
    invoke-virtual {v9}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    .line 3428
    :cond_417
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_454

    const/4 v10, 0x1

    .line 3429
    invoke-virtual {v9, v10}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onPushToStack(Z)V

    .line 3430
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    iget-boolean v10, v9, Lio/dcloud/common/core/ui/b;->g:Z

    or-int/2addr v5, v10

    const/4 v10, 0x0

    .line 3433
    iput-boolean v10, v9, Lio/dcloud/common/core/ui/b;->g:Z

    .line 3434
    iget-object v10, v9, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v10, v9}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_454
    const/4 v10, 0x1

    .line 3436
    iput-boolean v10, v9, Lio/dcloud/common/core/ui/b;->i:Z

    const/4 v11, 0x0

    .line 3437
    iput-boolean v11, v9, Lio/dcloud/common/core/ui/b;->h:Z

    .line 3438
    iput-boolean v10, v9, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    :cond_45c
    add-int/lit8 v2, v2, -0x1

    goto :goto_403

    :cond_45f
    if-eqz v5, :cond_1de

    const/4 v2, 0x0

    .line 3442
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/b;

    iget-object v0, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto/16 :goto_1de

    .line 3449
    :pswitch_46f
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1de

    .line 3453
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_47e
    if-ltz v2, :cond_510

    .line 3454
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/common/core/ui/b;

    if-eqz v6, :cond_50c

    if-nez v3, :cond_48c

    .line 3457
    iget-object v3, v6, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    :cond_48c
    if-nez v5, :cond_492

    .line 3460
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    .line 3462
    :cond_492
    iget-object v9, v6, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v9}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50c

    .line 3463
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->checkITypeofAble()Z

    move-result v9

    if-nez v9, :cond_4a8

    iget-boolean v9, v6, Lio/dcloud/common/core/ui/b;->a:Z

    if-nez v9, :cond_50c

    .line 3464
    :cond_4a8
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v9

    if-eqz v9, :cond_4b3

    goto :goto_50c

    .line 3467
    :cond_4b3
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    invoke-static {v9}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v9

    if-eqz v9, :cond_4cb

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    if-eqz v9, :cond_4cb

    .line 3468
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 3470
    :cond_4cb
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->g()Z

    move-result v9

    invoke-virtual {v6, v9}, Lio/dcloud/common/core/ui/b;->onPopFromStack(Z)V

    .line 3471
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    iget-object v9, v6, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v9, v6}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 3474
    iget-object v9, v6, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v9}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 3475
    iput-boolean v10, v6, Lio/dcloud/common/core/ui/b;->i:Z

    const/4 v9, 0x1

    .line 3476
    iput-boolean v9, v6, Lio/dcloud/common/core/ui/b;->h:Z

    .line 3477
    iput-boolean v10, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    :cond_50c
    :goto_50c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_47e

    :cond_510
    if-eqz v3, :cond_1de

    if-eqz v5, :cond_1de

    .line 3481
    invoke-static {v5}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 3482
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v4, 0x1

    :goto_525
    if-ltz v2, :cond_1de

    .line 3485
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/b;

    if-eqz v5, :cond_579

    .line 3486
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    if-eqz v6, :cond_579

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_579

    sub-int v6, v0, v4

    if-ne v2, v6, :cond_571

    .line 3490
    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_566

    .line 3491
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->c()I

    move-result v6

    sget v7, Lio/dcloud/common/core/ui/b;->A:I

    if-eq v6, v7, :cond_566

    .line 3492
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->c()I

    move-result v6

    sget v7, Lio/dcloud/common/core/ui/b;->B:I

    if-eq v6, v7, :cond_566

    .line 3493
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    goto :goto_579

    .line 3495
    :cond_566
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_579

    .line 3499
    :cond_571
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    :cond_579
    :goto_579
    add-int/lit8 v2, v2, -0x1

    goto :goto_525

    .line 3500
    :pswitch_57c
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_1de

    .line 3502
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->k()V

    .line 3503
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->l()V

    goto/16 :goto_1de

    .line 3504
    :pswitch_589
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 3505
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    .line 3506
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->dispose()V

    .line 3507
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1de

    .line 3736
    :pswitch_59e
    instance-of v0, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_5a6

    .line 3737
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    goto :goto_5a7

    :cond_5a6
    const/4 v0, 0x0

    :goto_5a7
    if-nez v0, :cond_5ac

    const/16 v17, 0x0

    return-object v17

    .line 3741
    :cond_5ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3742
    sget v2, Lio/dcloud/common/core/ui/b;->z:I

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 3746
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$e;

    invoke-direct {v4, v1, v0}, Lio/dcloud/common/core/ui/l$e;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v2, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_1de

    .line 3812
    :pswitch_5d4
    instance-of v0, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_5dc

    .line 3813
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    goto :goto_5dd

    :cond_5dc
    const/4 v0, 0x0

    :goto_5dd
    if-nez v0, :cond_5e2

    const/16 v17, 0x0

    return-object v17

    .line 3816
    :cond_5e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3818
    sget v2, Lio/dcloud/common/core/ui/b;->A:I

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 3819
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$f;

    invoke-direct {v4, v1, v0}, Lio/dcloud/common/core/ui/l$f;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v2, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_1de

    :pswitch_60a
    if-eqz v2, :cond_1de

    .line 4056
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 4057
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 4058
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_649

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v2

    if-nez v2, :cond_649

    .line 4059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->g()Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/dcloud/common/core/ui/b;->onPopFromStack(Z)V

    .line 4061
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 4062
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_649
    const/4 v10, 0x0

    .line 4064
    iput-boolean v10, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 4065
    iput-boolean v10, v0, Lio/dcloud/common/core/ui/b;->h:Z

    goto/16 :goto_1de

    .line 5945
    :pswitch_650
    instance-of v3, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v3, :cond_657

    .line 5946
    check-cast v2, Lio/dcloud/common/core/ui/b;

    goto :goto_658

    :cond_657
    const/4 v2, 0x0

    :goto_658
    if-nez v2, :cond_65d

    const/16 v17, 0x0

    return-object v17

    .line 5952
    :cond_65d
    sget v3, Lio/dcloud/common/core/ui/b;->B:I

    invoke-virtual {v2, v3}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 5953
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5954
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lio/dcloud/common/core/ui/l$g;

    invoke-direct {v5, v1, v2, v0}, Lio/dcloud/common/core/ui/l$g;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;I)V

    invoke-virtual {v3, v4, v5}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4066
    :pswitch_687
    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isEnableBackground:Z

    const/16 v20, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 4067
    instance-of v3, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v3, :cond_69b

    .line 4068
    move-object v3, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_6ef

    .line 4069
    :cond_69b
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6ab

    .line 4070
    iget-object v3, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_6ef

    .line 4071
    :cond_6ab
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_6ee

    .line 4072
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 4073
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4074
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c1

    const/16 v17, 0x0

    return-object v17

    .line 4077
    :cond_6c1
    iget-object v4, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    .line 4078
    const-string v4, "isStopApp"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4079
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6ec

    if-eqz v4, :cond_6ec

    .line 4080
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4081
    iget-object v5, v3, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5, v0}, Lio/dcloud/common/DHInterface/IApp;->setQuitModel(I)V

    :cond_6ec
    move v0, v4

    goto :goto_6ef

    :cond_6ee
    const/4 v3, 0x0

    .line 4086
    :goto_6ef
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v4

    if-eqz v4, :cond_704

    if-nez v0, :cond_704

    if-eqz v3, :cond_701

    .line 4088
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_701
    const/16 v17, 0x0

    return-object v17

    :cond_704
    if-eqz v3, :cond_70f

    .line 4094
    iget-object v0, v3, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lio/dcloud/common/DHInterface/IApp;->setStatus(B)V

    const/4 v10, 0x0

    .line 4095
    iput-boolean v10, v3, Lio/dcloud/common/core/ui/a;->h:Z

    .line 4098
    :cond_70f
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v1, v0, v9, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1de

    .line 1783
    :pswitch_716
    instance-of v0, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_1de

    .line 1784
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_1de

    .line 1787
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->e()Lio/dcloud/common/core/ui/b;

    move-result-object v3

    if-eqz v3, :cond_742

    .line 1788
    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v2

    if-eqz v2, :cond_742

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_742

    .line 1789
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkPreLoadJsContent()V

    :cond_742
    const/4 v10, 0x5

    .line 1793
    invoke-virtual {v0, v10}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-eqz v0, :cond_1de

    .line 1794
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_1de

    .line 1795
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkPreLoadJsContent()V

    goto/16 :goto_1de

    .line 1805
    :pswitch_75a
    instance-of v0, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_1de

    .line 1806
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    .line 1808
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->e()Lio/dcloud/common/core/ui/b;

    move-result-object v2

    if-eqz v2, :cond_77c

    .line 1809
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v3, :cond_77c

    .line 1810
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    .line 1814
    :cond_77c
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-eqz v0, :cond_1de

    .line 1815
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_1de

    .line 1816
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    goto/16 :goto_1de

    .line 1825
    :pswitch_793
    instance-of v0, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_1de

    .line 1826
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    .line 1827
    move-object v4, v2

    check-cast v4, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v1, v4}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    if-eqz v4, :cond_7ae

    .line 1828
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->e()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    goto :goto_7b3

    :cond_7ae
    const/4 v10, 0x5

    .line 1830
    invoke-virtual {v0, v10}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v0

    .line 1832
    :goto_7b3
    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    sget-object v4, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1833
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1835
    const-string v5, "NWindow"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1836
    const-string v5, "setStyle"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1838
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1839
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1841
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1842
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1843
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1845
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1848
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v0, v5, v19

    const-string v0, "UI"

    const/4 v9, 0x1

    aput-object v0, v5, v9

    const-string v0, "execMethod"

    const/16 v24, 0x2

    aput-object v0, v5, v24

    aput-object v4, v5, v3

    invoke-virtual {v1, v2, v9, v5}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1de

    .line 2563
    :pswitch_803
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2564
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_1de

    .line 2566
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0

    .line 2567
    :pswitch_816
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2568
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_1de

    .line 2570
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->e()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0

    .line 2669
    :pswitch_829
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 2670
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/core/ui/b;

    const/4 v9, 0x1

    .line 2671
    aget-object v0, v0, v9

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 2672
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_84f

    .line 2673
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v9}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 2674
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v9}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 2676
    :cond_84f
    iget-wide v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 2677
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object v3

    .line 2678
    iget-object v4, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->c()Ljava/util/ArrayList;

    move-result-object v4

    .line 2679
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 2680
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2681
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2682
    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2683
    iget-object v0, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$h;

    invoke-direct {v4, v1, v2}, Lio/dcloud/common/core/ui/l$h;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v0, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_1de

    .line 2684
    :pswitch_883
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 2685
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    .line 2686
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0

    .line 2687
    :pswitch_897
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 2688
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;
    :try_end_8a2
    .catchall {:try_start_3c3 .. :try_end_8a2} :catchall_31

    return-object v0

    .line 2692
    :pswitch_8a3
    :try_start_8a3
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 2693
    iget-object v2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    iget-object v3, v2, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;
    :try_end_8aa
    .catchall {:try_start_8a3 .. :try_end_8aa} :catchall_b41

    if-ne v0, v3, :cond_1de

    const/4 v4, 0x0

    .line 2694
    :try_start_8ad
    iput-object v4, v2, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    goto/16 :goto_b3d

    :pswitch_8b1
    const/4 v4, 0x0

    .line 2700
    invoke-direct {v1, v0, v2}, Lio/dcloud/common/core/ui/l;->b(ILjava/lang/Object;)V

    goto/16 :goto_b3d

    .line 237
    :pswitch_8b7
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 238
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    .line 239
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-eqz v0, :cond_8d6

    .line 240
    instance-of v2, v0, Lio/dcloud/common/core/ui/c;

    if-eqz v2, :cond_8d6

    .line 241
    check-cast v0, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/c;->u()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    :cond_8d6
    if-eqz v0, :cond_8eb

    .line 243
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    if-eqz v2, :cond_8eb

    .line 244
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_8ea
    .catchall {:try_start_8ad .. :try_end_8ea} :catchall_b3f

    goto :goto_8ec

    :cond_8eb
    move-object v15, v4

    :goto_8ec
    if-nez v15, :cond_911

    if-eqz v0, :cond_911

    .line 247
    :try_start_8f0
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v2, :cond_911

    .line 248
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    .line 249
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 250
    const-string v3, "arguments"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_910
    .catchall {:try_start_8f0 .. :try_end_910} :catchall_3c0

    return-object v0

    :cond_911
    return-object v15

    .line 963
    :pswitch_912
    :try_start_912
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 964
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    const/16 v20, 0x1

    .line 965
    aget-object v0, v0, v20

    check-cast v0, Landroid/os/Bundle;

    .line 966
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_b3d

    .line 967
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string/jumbo v3, "unimp_capsule_button_click"

    invoke-interface {v2, v3, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_b3d

    :pswitch_937
    if-eqz v2, :cond_b3d

    .line 998
    move-object v0, v2

    check-cast v0, Landroid/os/Bundle;

    .line 1000
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    iget-object v5, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/a;

    if-eqz v5, :cond_b3d

    .line 1003
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v5

    if-eqz v5, :cond_b3d

    .line 1006
    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 1007
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    const-string v7, "__uniapp__service"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v5, v7, v19

    const-string/jumbo v5, "ui"

    const/16 v20, 0x1

    aput-object v5, v7, v20

    const-string v5, "findWebview"

    const/16 v24, 0x2

    aput-object v5, v7, v24

    aput-object v2, v7, v3

    .line 1008
    invoke-virtual {v1, v6, v9, v7}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b3d

    .line 1010
    instance-of v3, v2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v3, :cond_b3d

    .line 1011
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1012
    const-string v5, "dataType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "JSON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_98d
    .catchall {:try_start_912 .. :try_end_98d} :catchall_b3f

    const-string v6, "data"

    if-eqz v5, :cond_99f

    .line 1013
    :try_start_991
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1014
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_99c
    move-object/from16 v5, v22

    goto :goto_9a7

    .line 1016
    :cond_99f
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99c

    .line 1018
    :goto_9a7
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v0, Lio/dcloud/common/adapter/util/EventActionInfo;

    const-string/jumbo v5, "uniMPNativeEvent"

    invoke-direct {v0, v5, v3}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1020
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v2, v0}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->fireEvent(Lio/dcloud/common/adapter/util/EventActionInfo;)V

    goto/16 :goto_b3d

    :pswitch_9bd
    if-eqz v2, :cond_b3d

    .line 1021
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1022
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    .line 1023
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-eqz v0, :cond_9da

    .line 1024
    instance-of v2, v0, Lio/dcloud/common/core/ui/c;

    if-eqz v2, :cond_9da

    .line 1025
    check-cast v0, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/c;->u()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    :cond_9da
    if-eqz v0, :cond_b3d

    .line 1028
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v2, :cond_b3d

    .line 1029
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v0, :cond_b3d

    .line 1031
    const-string v2, "path"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_9f2
    .catchall {:try_start_991 .. :try_end_9f2} :catchall_b3f

    move-object/from16 v2, v18

    .line 1032
    :try_start_9f4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a19

    .line 1033
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a19

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a18
    .catchall {:try_start_9f4 .. :try_end_a18} :catchall_3c0

    return-object v0

    :cond_a19
    return-object v15

    :pswitch_a1a
    if-eqz v2, :cond_b3d

    .line 1036
    :try_start_a1c
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 1037
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    const/16 v20, 0x1

    .line 1038
    aget-object v0, v0, v20

    check-cast v0, Landroid/os/Bundle;

    .line 1039
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_b3d

    .line 1040
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string v3, "TITLE_BAR_MENU_CLICK"

    invoke-interface {v2, v3, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_b3d

    .line 1041
    :pswitch_a40
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 1042
    iget-object v2, v1, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/a;

    .line 1043
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->h()Lio/dcloud/common/core/ui/b;

    move-result-object v2

    if-eqz v2, :cond_a5f

    .line 1044
    instance-of v3, v2, Lio/dcloud/common/core/ui/c;

    if-eqz v3, :cond_a5f

    .line 1045
    check-cast v2, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/c;->u()Lio/dcloud/common/core/ui/b;

    move-result-object v2
    :try_end_a5f
    .catchall {:try_start_a1c .. :try_end_a5f} :catchall_b3f

    :cond_a5f
    const-string/jumbo v3, "uni_restart_to_direct"

    if-eqz v2, :cond_a86

    .line 1047
    :try_start_a64
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget-object v5, v5, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    if-eqz v5, :cond_a86

    .line 1048
    const-string v5, "debugRefresh"

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x1

    .line 1049
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b3d

    :cond_a86
    const/16 v19, 0x0

    .line 1051
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b3d

    .line 1761
    :pswitch_a91
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 1762
    aget-object v0, v0, v19

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 1763
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1764
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    if-eqz v3, :cond_ab2

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/util/ViewOptions;->isTabHasBg()Z

    move-result v3

    if-eqz v3, :cond_ab6

    .line 1765
    :cond_ab2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1767
    :cond_ab6
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0, v2, v0, v3, v5}, Lio/dcloud/common/core/ui/b;->b(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto/16 :goto_b3d

    .line 1768
    :pswitch_ac5
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 1769
    aget-object v0, v0, v19

    check-cast v0, Lio/dcloud/common/core/ui/b;

    const/4 v9, 0x1

    .line 1770
    invoke-direct {v1, v0, v9}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Z)V

    goto :goto_b3d

    .line 1771
    :pswitch_ad3
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 1772
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/core/ui/b;

    const/16 v20, 0x1

    .line 1773
    aget-object v0, v0, v20

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 1774
    invoke-direct {v1, v2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    goto :goto_b3d

    .line 1775
    :pswitch_ae6
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 1776
    aget-object v2, v0, v19

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 1777
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v3

    iget-boolean v3, v3, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    const/16 v20, 0x1

    .line 1778
    aget-object v5, v0, v20

    check-cast v5, Lorg/json/JSONObject;

    const/16 v24, 0x2

    .line 1779
    aget-object v0, v0, v24

    check-cast v0, Ljava/lang/String;

    .line 1780
    invoke-direct {v1, v2, v3, v5, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_b3d

    .line 1781
    :pswitch_b09
    move-object v0, v2

    check-cast v0, Lio/dcloud/common/core/ui/l$m;

    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l$m;)V

    goto :goto_b3d

    .line 1782
    :pswitch_b10
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/l;->c()V

    goto :goto_b3d

    :cond_b14
    const/4 v4, 0x0

    .line 5968
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    .line 5969
    aget-object v2, v0, v19

    move-object v3, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v1, v2}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;)Lio/dcloud/common/core/ui/b;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/core/ui/b;->l:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/16 v20, 0x1

    aget-object v0, v0, v20

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    goto :goto_b3d

    :cond_b31
    const/4 v4, 0x0

    .line 6845
    invoke-direct {v1}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->obtainMainViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->debug(Landroid/view/ViewGroup;)V
    :try_end_b3d
    .catchall {:try_start_a64 .. :try_end_b3d} :catchall_b3f

    :cond_b3d
    :goto_b3d
    move-object v15, v4

    goto :goto_b49

    :catchall_b3f
    move-exception v0

    goto :goto_b43

    :catchall_b41
    move-exception v0

    const/4 v4, 0x0

    :goto_b43
    move-object v15, v4

    .line 6993
    :goto_b44
    const-string v2, "WindowMgr.processEvent"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b49
    return-object v15

    :pswitch_data_b4a
    .packed-switch 0x1
        :pswitch_295
        :pswitch_650
        :pswitch_1fb
        :pswitch_1e1
        :pswitch_1db
        :pswitch_1be
        :pswitch_e5
        :pswitch_ab
        :pswitch_8a
        :pswitch_1db
        :pswitch_80
        :pswitch_76
        :pswitch_6c
        :pswitch_5f
    .end packed-switch

    :pswitch_data_b6a
    .packed-switch 0x10
        :pswitch_34e
        :pswitch_2e4
        :pswitch_2df
    .end packed-switch

    :pswitch_data_b74
    .packed-switch 0x14
        :pswitch_687
        :pswitch_650
        :pswitch_60a
        :pswitch_5d4
        :pswitch_59e
        :pswitch_589
        :pswitch_57c
        :pswitch_46f
        :pswitch_3ed
        :pswitch_3e5
        :pswitch_3dd
        :pswitch_3c3
        :pswitch_36a
    .end packed-switch

    :pswitch_data_b92
    .packed-switch 0x29
        :pswitch_8b1
        :pswitch_8a3
        :pswitch_897
        :pswitch_883
        :pswitch_829
        :pswitch_816
        :pswitch_803
        :pswitch_793
        :pswitch_75a
        :pswitch_716
    .end packed-switch

    :pswitch_data_baa
    .packed-switch 0x46
        :pswitch_b10
        :pswitch_b09
        :pswitch_ae6
        :pswitch_ad3
        :pswitch_ac5
        :pswitch_a91
        :pswitch_a40
        :pswitch_a1a
        :pswitch_9bd
        :pswitch_937
        :pswitch_912
        :pswitch_8b7
    .end packed-switch
.end method

###### Class io.dcloud.common.core.ui.l.a (io.dcloud.common.core.ui.l$a)
.class Lio/dcloud/common/core/ui/l$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/core/ui/a;

.field final synthetic d:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$a;->d:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$a;->a:Lio/dcloud/common/core/ui/b;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$a;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$a;->c:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    const-string p2, "close"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$a;->d:Lio/dcloud/common/core/ui/l;

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$a;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, p0, Lio/dcloud/common/core/ui/l$a;->c:Lio/dcloud/common/core/ui/a;

    invoke-static {p1, p2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.b (io.dcloud.common.core.ui.l$b)
.class Lio/dcloud/common/core/ui/l$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWebviewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/core/ui/b;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/common/adapter/ui/AdaWebview;

.field final synthetic h:Lio/dcloud/common/core/ui/a;

.field final synthetic i:I

.field final synthetic j:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;ZZLjava/lang/String;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/core/ui/a;I)V
    .registers 10

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    iput-boolean p4, p0, Lio/dcloud/common/core/ui/l$b;->d:Z

    iput-boolean p5, p0, Lio/dcloud/common/core/ui/l$b;->e:Z

    iput-object p6, p0, Lio/dcloud/common/core/ui/l$b;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/core/ui/l$b;->g:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object p8, p0, Lio/dcloud/common/core/ui/l$b;->h:Lio/dcloud/common/core/ui/a;

    iput p9, p0, Lio/dcloud/common/core/ui/l$b;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/l$b;->a:Z

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    iget-object v2, v2, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string/jumbo v3, "titleUpdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v2, :cond_16

    const/4 v2, 0x4

    goto :goto_25

    .line 3
    :cond_16
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    iget-object v2, v2, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string v6, "rendering"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x6

    goto :goto_25

    :cond_24
    const/4 v2, 0x1

    :goto_25
    const/4 v6, 0x3

    if-ne v1, v6, :cond_8a

    .line 7
    iget-boolean v6, v0, Lio/dcloud/common/core/ui/l$b;->a:Z

    if-nez v6, :cond_8a

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x32

    if-lt v7, v8, :cond_8a

    .line 8
    iput-boolean v5, v0, Lio/dcloud/common/core/ui/l$b;->a:Z

    .line 9
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".streamdownload.downloadfinish."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v8, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "appid"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "progress"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v6, "flag"

    const-string v8, "direct_page_progressed"

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v6, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8a
    const/4 v6, 0x0

    if-ne v1, v5, :cond_ae

    .line 19
    iget-object v5, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_9c

    .line 20
    iget-object v5, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->checkOrLoadlaunchWebview()V

    goto :goto_ae

    .line 21
    :cond_9c
    iget-object v5, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v5

    if-ne v5, v4, :cond_ae

    .line 22
    new-instance v5, Lio/dcloud/common/core/ui/l$b$a;

    invoke-direct {v5, v0}, Lio/dcloud/common/core/ui/l$b$a;-><init>(Lio/dcloud/common/core/ui/l$b;)V

    const-wide/16 v7, 0xbb8

    invoke-static {v5, v7, v8, v6}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    :cond_ae
    :goto_ae
    if-ne v1, v2, :cond_10d

    .line 36
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$b;->d:Z

    if-eqz v2, :cond_10d

    .line 38
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$b;->e:Z

    const/16 v12, 0x44c

    if-nez v2, :cond_dd

    iget-object v2, v0, Lio/dcloud/common/core/ui/l$b;->f:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    if-eq v1, v4, :cond_dd

    if-ne v1, v3, :cond_c7

    goto :goto_dd

    .line 45
    :cond_c7
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    const-string/jumbo v2, "timeout"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v7, v0, Lio/dcloud/common/core/ui/l$b;->h:Lio/dcloud/common/core/ui/a;

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    iget v10, v0, Lio/dcloud/common/core/ui/l$b;->i:I

    const/4 v11, 0x1

    move-object v8, v7

    invoke-virtual/range {v7 .. v12}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    goto :goto_10d

    .line 47
    :cond_dd
    :goto_dd
    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$b;->e:Z

    if-nez v2, :cond_ef

    if-ne v1, v4, :cond_e8

    const/16 v12, 0x4b0

    const/16 v21, 0x4b0

    goto :goto_f1

    :cond_e8
    if-ne v1, v3, :cond_ef

    const/16 v12, 0x514

    const/16 v21, 0x514

    goto :goto_f1

    :cond_ef
    const/16 v21, 0x44c

    .line 50
    :goto_f1
    iget-object v13, v0, Lio/dcloud/common/core/ui/l$b;->j:Lio/dcloud/common/core/ui/l;

    const/4 v1, 0x0

    iput-boolean v1, v13, Lio/dcloud/common/core/ui/l;->f:Z

    .line 51
    iget-object v14, v0, Lio/dcloud/common/core/ui/l$b;->g:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v15, v0, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$b;->h:Lio/dcloud/common/core/ui/a;

    iget-object v3, v0, Lio/dcloud/common/core/ui/l$b;->c:Lio/dcloud/common/core/ui/b;

    iget v4, v0, Lio/dcloud/common/core/ui/l$b;->i:I

    const/16 v18, 0x1

    move-object/from16 v17, v1

    move/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {v13 .. v21}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V

    :cond_10d
    :goto_10d
    return-object v6
.end method

###### Class io.dcloud.common.core.ui.l.b.a (io.dcloud.common.core.ui.l$b$a)
.class Lio/dcloud/common/core/ui/l$b$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l$b;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/l$b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$b$a;->a:Lio/dcloud/common/core/ui/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$b$a;->a:Lio/dcloud/common/core/ui/l$b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/core/ui/a;

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-nez p1, :cond_18

    .line 6
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$b$a;->a:Lio/dcloud/common/core/ui/l$b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/l$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->checkOrLoadlaunchWebview()V

    :cond_18
    return-void
.end method

###### Class io.dcloud.common.core.ui.l.c (io.dcloud.common.core.ui.l$c)
.class Lio/dcloud/common/core/ui/l$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/adapter/ui/AdaFrameItem;

.field final synthetic b:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$c;->b:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$c;->a:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$c;->a:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    return-void
.end method

###### Class io.dcloud.common.core.ui.l.d (io.dcloud.common.core.ui.l$d)
.class Lio/dcloud/common/core/ui/l$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$d;->c:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$d;->a:Lio/dcloud/common/core/ui/b;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$d;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$d;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean p1, p1, Lio/dcloud/common/core/ui/b;->u:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    return-object p2

    .line 2
    :cond_8
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$d;->b:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$d;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/b;->c(Z)V

    return-object p2
.end method

###### Class io.dcloud.common.core.ui.l.e (io.dcloud.common.core.ui.l$e)
.class Lio/dcloud/common/core/ui/l$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$e;->b:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->k()V

    .line 7
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_5c

    .line 8
    const-string p1, "computeStackArray"

    invoke-static {p1}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 10
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isAutoPop()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onPushToStack(Z)V

    .line 11
    const-string/jumbo v1, "\u8ba1\u7b97\u6ee1\u5c4f\u5e55\u65f6\u95f4"

    invoke-static {p1, v1}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/Stack;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 16
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    .line 17
    invoke-virtual {v1, p1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    goto :goto_69

    .line 21
    :cond_54
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->l()V

    goto :goto_69

    .line 24
    :cond_5c
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 25
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, p1}, Lio/dcloud/common/core/ui/a;->h(Lio/dcloud/common/core/ui/b;)V

    .line 28
    :cond_69
    :goto_69
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_d6

    .line 29
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    .line 30
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    .line 31
    iget-object v2, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne p1, v2, :cond_96

    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr p1, p2

    if-ge p1, v1, :cond_ab

    :cond_96
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_b0

    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne p1, p2, :cond_b0

    .line 34
    :cond_ab
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {p1, v0}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 37
    :cond_b0
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "none"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cb

    .line 38
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 39
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->m()V

    goto :goto_f9

    .line 41
    :cond_cb
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 42
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_f9

    .line 46
    :cond_d6
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "fade-in"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 47
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 48
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_f9

    .line 50
    :cond_ef
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 51
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->m()V

    .line 54
    :goto_f9
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$e;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->i(Lio/dcloud/common/core/ui/b;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.f (io.dcloud.common.core.ui.l$f)
.class Lio/dcloud/common/core/ui/l$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$f;->b:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/b;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->p()V

    .line 4
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    sget v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1f

    const/4 p2, 0x1

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    .line 6
    :goto_20
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_d2

    if-eqz p2, :cond_d2

    iget-boolean p2, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez p2, :cond_d2

    .line 10
    iget-object p2, v0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, v0}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 11
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 12
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->b:Lio/dcloud/common/core/ui/l;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iget-object v3, v3, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v5, 0x1c

    invoke-virtual {p2, v0, v5, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    iput-object v4, p2, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 16
    :cond_4b
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p2

    .line 17
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    .line 18
    iget-object v3, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget v3, v3, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne p2, v3, :cond_74

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr p2, v2

    if-ge p2, v0, :cond_89

    :cond_74
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8a

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne p2, v0, :cond_8a

    :cond_89
    const/4 v1, 0x1

    .line 20
    :cond_8a
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    const-string v0, "none"

    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a0

    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->isDefaultAim:Z

    if-eqz p2, :cond_c2

    if-eqz v1, :cond_c2

    :cond_a0
    if-ltz p1, :cond_c2

    .line 22
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    if-eqz v1, :cond_bc

    .line 24
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_bc

    .line 25
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {p1, v2}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 28
    :cond_bc
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v2}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_df

    .line 30
    :cond_c2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 31
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    .line 32
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->k()V

    goto :goto_df

    .line 36
    :cond_d2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 37
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    .line 38
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$f;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->k()V

    :goto_df
    return-object v4
.end method

###### Class io.dcloud.common.core.ui.l.g (io.dcloud.common.core.ui.l$g)
.class Lio/dcloud/common/core/ui/l$g;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:I

.field final synthetic c:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iput p3, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/b;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->p()V

    .line 3
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object v0, p2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p2}, Lio/dcloud/common/core/ui/a;->d(Lio/dcloud/common/core/ui/b;)Z

    move-result p2

    const/16 v0, 0x2a

    const/4 v1, 0x3

    const-string/jumbo v2, "true"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_8b

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object v6, p2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    iget-boolean v6, v6, Lio/dcloud/common/core/ui/a;->q:Z

    if-nez v6, :cond_29

    goto :goto_8b

    .line 40
    :cond_29
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->r()V

    .line 42
    iget p2, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    if-ne p2, v3, :cond_65

    .line 43
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v3, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-eqz v3, :cond_50

    .line 44
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    const-string/jumbo v3, "zoom-fade-in"

    iput-object v3, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 45
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->s()V

    .line 46
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2, v5}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_53

    .line 48
    :cond_50
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->i()V

    .line 50
    :goto_53
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p2

    if-ne p2, v1, :cond_6a

    .line 51
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2, v1, v0, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 54
    :cond_65
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->i()V

    .line 57
    :cond_6a
    :goto_6a
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13c

    .line 59
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_13c

    .line 64
    :cond_8b
    :goto_8b
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v6, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 73
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9b

    const/4 p2, 0x1

    goto :goto_9c

    :cond_9b
    const/4 p2, 0x0

    .line 74
    :goto_9c
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {v6, v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v6

    .line 75
    iget-object v7, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v7}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    invoke-interface {v7, v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v7

    .line 76
    iget-object v8, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v8

    iget v8, v8, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne v6, v8, :cond_c5

    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr v6, v5

    if-ge v6, v7, :cond_da

    :cond_c5
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_dc

    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v6, v7, :cond_dc

    :cond_da
    const/4 v6, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v6, 0x0

    :goto_dd
    const-string v7, "none"

    if-ltz p1, :cond_f6

    if-eqz v6, :cond_f6

    .line 77
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f6

    .line 79
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {v6, v5}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 83
    :cond_f6
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->r()V

    .line 84
    iget v6, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    if-ne v6, v3, :cond_137

    if-ltz p1, :cond_137

    .line 85
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v3, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-eqz v3, :cond_120

    if-eqz p2, :cond_120

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {p1, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_120

    .line 86
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 87
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v5}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_125

    .line 89
    :cond_120
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->i()V

    .line 91
    :goto_125
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    if-ne p1, v1, :cond_13c

    .line 92
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, p2, v0, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13c

    .line 95
    :cond_137
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->i()V

    .line 126
    :cond_13c
    :goto_13c
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iput-boolean v4, p1, Lio/dcloud/common/core/ui/b;->i:Z

    .line 127
    iput-boolean v4, p1, Lio/dcloud/common/core/ui/b;->h:Z

    .line 128
    iput-boolean v4, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    return-object v2
.end method

###### Class io.dcloud.common.core.ui.l.h (io.dcloud.common.core.ui.l$h)
.class Lio/dcloud/common/core/ui/l$h;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$h;->b:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$h;->a:Lio/dcloud/common/core/ui/b;

    iget-object p1, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->i()V

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.l.i (io.dcloud.common.core.ui.l$i)
.class Lio/dcloud/common/core/ui/l$i;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWebviewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic e:Lio/dcloud/common/core/ui/a;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic h:I

.field final synthetic i:Lio/dcloud/common/core/ui/b;

.field final synthetic j:I

.field final synthetic k:J

.field final synthetic l:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;ILio/dcloud/common/core/ui/b;IJ)V
    .registers 13

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$i;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lio/dcloud/common/core/ui/l$i;->c:Z

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    iput-object p5, p0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    iput-object p6, p0, Lio/dcloud/common/core/ui/l$i;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/core/ui/l$i;->g:Lio/dcloud/common/DHInterface/IWebview;

    iput p8, p0, Lio/dcloud/common/core/ui/l$i;->h:I

    iput-object p9, p0, Lio/dcloud/common/core/ui/l$i;->i:Lio/dcloud/common/core/ui/b;

    iput p10, p0, Lio/dcloud/common/core/ui/l$i;->j:I

    iput-wide p11, p0, Lio/dcloud/common/core/ui/l$i;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/l$i;->a:Z

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v3, v3, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string/jumbo v4, "titleUpdate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v3, :cond_18

    const/4 v3, 0x4

    goto :goto_27

    .line 3
    :cond_18
    iget-object v3, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v3, v3, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    const-string v7, "rendering"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x6

    goto :goto_27

    :cond_26
    const/4 v3, 0x1

    .line 6
    :goto_27
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "autoCloseSplash4LaunchWebview  IWebviewStateListener pType= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";pArgs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Main_Path"

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v3, :cond_100

    .line 8
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->b:Ljava/lang/String;

    const-string v3, "id:*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$i;->c:Z

    if-eqz v2, :cond_5d

    .line 9
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    invoke-static {v1, v2, v4}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    goto :goto_bc

    .line 10
    :cond_5d
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->b:Ljava/lang/String;

    const-string v7, "default"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-boolean v2, v0, Lio/dcloud/common/core/ui/l$i;->c:Z

    if-eqz v2, :cond_bc

    .line 12
    iget-object v2, v0, Lio/dcloud/common/core/ui/l$i;->f:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v2

    const/16 v12, 0x44c

    if-eqz v2, :cond_a7

    if-eq v1, v5, :cond_79

    if-ne v1, v4, :cond_a7

    :cond_79
    if-ne v1, v5, :cond_80

    const/16 v12, 0x4b0

    const/16 v21, 0x4b0

    goto :goto_89

    :cond_80
    if-ne v1, v4, :cond_87

    const/16 v12, 0x514

    const/16 v21, 0x514

    goto :goto_89

    :cond_87
    const/16 v21, 0x44c

    .line 14
    :goto_89
    iget-object v13, v0, Lio/dcloud/common/core/ui/l$i;->l:Lio/dcloud/common/core/ui/l;

    iput-boolean v3, v13, Lio/dcloud/common/core/ui/l;->f:Z

    .line 15
    iget-object v14, v0, Lio/dcloud/common/core/ui/l$i;->g:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v15, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    iget v2, v0, Lio/dcloud/common/core/ui/l$i;->h:I

    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->i:Lio/dcloud/common/core/ui/b;

    iget v5, v0, Lio/dcloud/common/core/ui/l$i;->j:I

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v13 .. v21}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V

    goto :goto_bc

    .line 17
    :cond_a7
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    const-string/jumbo v2, "timeout"

    const-string v4, "-1"

    invoke-interface {v1, v2, v4}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v7, v0, Lio/dcloud/common/core/ui/l$i;->e:Lio/dcloud/common/core/ui/a;

    iget-object v9, v0, Lio/dcloud/common/core/ui/l$i;->i:Lio/dcloud/common/core/ui/b;

    iget v10, v0, Lio/dcloud/common/core/ui/l$i;->j:I

    const/4 v11, 0x1

    move-object v8, v7

    invoke-virtual/range {v7 .. v12}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    .line 21
    :cond_bc
    :goto_bc
    const-string v1, "f_need_auto_close_splash"

    invoke-static {v3, v1}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v0, Lio/dcloud/common/core/ui/l$i;->k:J

    sub-long/2addr v1, v4

    .line 25
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "loadedTime"

    invoke-interface {v4, v7, v5}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$i;->g:Lio/dcloud/common/DHInterface/IWebview;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "javascript:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "p.runtime.launchLoadedTime = \'%s\';"

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string/jumbo v1, "try{if((window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus).runtime)var p=window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus; %s }catch(_){}"

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IWebview;->evalJS(Ljava/lang/String;)V

    goto :goto_114

    :cond_100
    const/4 v3, 0x3

    if-ne v1, v3, :cond_114

    .line 28
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$i;->d:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 30
    const-string v3, "progress"

    invoke-interface {v1, v3, v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_114
    :goto_114
    const/4 v1, 0x0

    return-object v1
.end method

###### Class io.dcloud.common.core.ui.l.j (io.dcloud.common.core.ui.l$j)
.class Lio/dcloud/common/core/ui/l$j;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;

.field final synthetic b:Lio/dcloud/common/core/ui/b;

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$j;->d:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$j;->a:Lio/dcloud/common/core/ui/a;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$j;->b:Lio/dcloud/common/core/ui/b;

    iput p4, p0, Lio/dcloud/common/core/ui/l$j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$j;->a:Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_f

    .line 2
    iget-object v2, p0, Lio/dcloud/common/core/ui/l$j;->b:Lio/dcloud/common/core/ui/b;

    iget v3, p0, Lio/dcloud/common/core/ui/l$j;->c:I

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    move-object v1, v0

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    .line 5
    :cond_f
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$j;->d:Lio/dcloud/common/core/ui/l;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    return-void
.end method

###### Class io.dcloud.common.core.ui.l.k (io.dcloud.common.core.ui.l$k)
.class Lio/dcloud/common/core/ui/l$k;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/a;

.field final synthetic c:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic d:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$k;->d:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    iput-object p3, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$k;->c:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__uniappservice.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->checkWhite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 3
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    iget-object v3, p0, Lio/dcloud/common/core/ui/l$k;->a:Lio/dcloud/common/core/ui/b;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    return-void

    .line 7
    :cond_38
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->d:Lio/dcloud/common/core/ui/l;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$k;->c:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    return-void

    .line 10
    :cond_42
    iget-object v0, p0, Lio/dcloud/common/core/ui/l$k;->d:Lio/dcloud/common/core/ui/l;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$k;->c:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/common/core/ui/l$k;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4b

    :catch_4b
    return-void
.end method

###### Class io.dcloud.common.core.ui.l.RunnableC0037l (io.dcloud.common.core.ui.l$l)
.class Lio/dcloud/common/core/ui/l$l;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;

.field final synthetic b:Z

.field final synthetic c:Lio/dcloud/common/core/ui/b;

.field final synthetic d:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic e:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;III)V
    .registers 10

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$l;->i:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    iput-boolean p3, p0, Lio/dcloud/common/core/ui/l$l;->b:Z

    iput-object p4, p0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    iput-object p5, p0, Lio/dcloud/common/core/ui/l$l;->d:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/common/core/ui/l$l;->e:Lio/dcloud/common/DHInterface/IApp;

    iput p7, p0, Lio/dcloud/common/core/ui/l$l;->f:I

    iput p8, p0, Lio/dcloud/common/core/ui/l$l;->g:I

    iput p9, p0, Lio/dcloud/common/core/ui/l$l;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    .line 1
    :try_start_2
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_62

    iget-boolean v1, v1, Lio/dcloud/common/core/ui/a;->q:Z

    if-eqz v1, :cond_b

    goto :goto_62

    .line 4
    :cond_b
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->i:Lio/dcloud/common/core/ui/l;

    iget-boolean v1, v1, Lio/dcloud/common/core/ui/l;->f:Z

    if-eqz v1, :cond_12

    goto :goto_62

    .line 7
    :cond_12
    iget-boolean v1, v0, Lio/dcloud/common/core/ui/l$l;->b:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v1, :cond_2a

    .line 8
    :cond_20
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->d:Lio/dcloud/common/DHInterface/IWebview;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->checkWhite(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 9
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sGlobalUserAgent:Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->e:Lio/dcloud/common/DHInterface/IApp;

    const-string/jumbo v2, "timeout"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v4, v0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    iget-object v6, v0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    iget v7, v0, Lio/dcloud/common/core/ui/l$l;->f:I

    iget v9, v0, Lio/dcloud/common/core/ui/l$l;->g:I

    const/4 v8, 0x1

    move-object v5, v4

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V

    return-void

    .line 13
    :cond_47
    iget-object v10, v0, Lio/dcloud/common/core/ui/l$l;->i:Lio/dcloud/common/core/ui/l;

    iget-object v11, v0, Lio/dcloud/common/core/ui/l$l;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v12, v0, Lio/dcloud/common/core/ui/l$l;->e:Lio/dcloud/common/DHInterface/IApp;

    iget-boolean v13, v0, Lio/dcloud/common/core/ui/l$l;->b:Z

    iget-object v14, v0, Lio/dcloud/common/core/ui/l$l;->a:Lio/dcloud/common/core/ui/a;

    iget v15, v0, Lio/dcloud/common/core/ui/l$l;->h:I

    iget-object v1, v0, Lio/dcloud/common/core/ui/l$l;->c:Lio/dcloud/common/core/ui/b;

    iget v2, v0, Lio/dcloud/common/core/ui/l$l;->f:I

    iget v3, v0, Lio/dcloud/common/core/ui/l$l;->g:I

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_62} :catch_62

    :catch_62
    :cond_62
    :goto_62
    return-void
.end method

###### Class io.dcloud.common.core.ui.l.m (io.dcloud.common.core.ui.l$m)
.class public interface abstract Lio/dcloud/common/core/ui/l$m;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "m"
.end annotation


# virtual methods
.method public abstract onAnimationEnd()V
.end method
