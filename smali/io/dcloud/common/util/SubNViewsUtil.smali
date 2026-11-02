###### Class io.dcloud.common.util.SubNViewsUtil (io.dcloud.common.util.SubNViewsUtil)
.class public Lio/dcloud/common/util/SubNViewsUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFrameSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "NativeView"

    .line 1
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const-string v3, "auto"

    const/4 v4, 0x4

    const-string v5, "animationOptimization"

    const-string/jumbo v6, "subNViews"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4e

    .line 2
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v9, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_35

    .line 3
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5
    :try_start_26
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_35
    :goto_35
    if-eqz v9, :cond_8d

    .line 10
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 11
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 13
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iput-boolean v7, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isAnimationOptimization:Z

    goto :goto_8d

    .line 17
    :cond_4e
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    if-ne v0, v4, :cond_8d

    .line 18
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v9, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_75

    .line 19
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 21
    :try_start_66
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_75
    :goto_75
    if-eqz v9, :cond_8d

    .line 26
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 27
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 29
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iput-boolean v7, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isAnimationOptimization:Z

    .line 33
    :cond_8d
    :goto_8d
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    if-eqz v0, :cond_139

    .line 34
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    const/4 v5, 0x0

    .line 36
    :goto_9c
    :try_start_9c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_139

    .line 37
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 38
    const-string v9, "id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 39
    const-string/jumbo v10, "uuid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_dd

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    int-to-long v13, v5

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 43
    :cond_dd
    const-string/jumbo v11, "styles"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 44
    const-string/jumbo v12, "tags"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 45
    const-string/jumbo v13, "type"

    const-string v14, "NView"

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    iget-object v13, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v14, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v15

    .line 47
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v17

    aput-object v16, v3, v7

    aput-object v9, v3, v8

    const/4 v9, 0x3

    aput-object v10, v3, v9

    aput-object v11, v3, v4

    const/4 v10, 0x5

    aput-object v12, v3, v10

    const/4 v10, 0x6

    aput-object v6, v3, v10

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v15, v6, v17

    const-string v10, "nativeobj"

    aput-object v10, v6, v7

    const-string v10, "View"

    aput-object v10, v6, v8

    aput-object v3, v6, v9

    const/16 v3, 0xa

    .line 48
    invoke-virtual {v13, v14, v3, v6}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_131

    .line 51
    check-cast v3, Lio/dcloud/common/DHInterface/INativeView;

    .line 52
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/INativeView;->attachToViewGroup(Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_131
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_131} :catch_135

    :cond_131
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9c

    :catch_135
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_139
    return-void
.end method

.method public static startAnimation(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/nineoldandroids/animation/Animator;I)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz p1, :cond_ae

    if-nez p2, :cond_ae

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildNativeViewList:Ljava/util/ArrayList;

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_ae

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v7

    .line 4
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_35

    .line 7
    invoke-virtual {v6, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_35
    const/4 p1, 0x0

    .line 9
    :goto_36
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4c

    .line 10
    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 11
    instance-of v0, p2, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_49

    .line 12
    check-cast p2, Lio/dcloud/common/DHInterface/INativeView;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    .line 15
    :cond_4c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_51
    if-ge p2, p1, :cond_6a

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    check-cast v0, Lio/dcloud/common/DHInterface/INativeView;

    .line 16
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_51

    .line 19
    :cond_6a
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :try_start_6d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "onPause"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_7c

    goto :goto_81

    :catch_7c
    move-exception v0

    move-object p1, v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_81
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    .line 26
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 28
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    new-instance v2, Lio/dcloud/common/util/SubNViewsUtil$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lio/dcloud/common/util/SubNViewsUtil$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 p0, 0x1

    .line 68
    invoke-virtual {v3, p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 69
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return p0

    :cond_ae
    return v1
.end method

.method public static updateSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONArray;)V
    .registers 9

    if-eqz p1, :cond_2f

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    aput-object v3, v5, p0

    const/4 v3, 0x2

    aput-object p1, v5, v3

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v6

    const-string v2, "nativeobj"

    aput-object v2, p1, p0

    const-string/jumbo p0, "updateSubNViews"

    aput-object p0, p1, v3

    aput-object v5, p1, v4

    const/16 p0, 0xa

    .line 3
    invoke-virtual {v0, v1, p0, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-void
.end method

###### Class io.dcloud.common.util.SubNViewsUtil.AnonymousClass1 (io.dcloud.common.util.SubNViewsUtil$1)
.class Lio/dcloud/common/util/SubNViewsUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/SubNViewsUtil;->startAnimation(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/nineoldandroids/animation/Animator;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$mViewImpl:Landroid/view/View;

.field final synthetic val$staticNViews:Ljava/util/ArrayList;

.field final synthetic val$webParent:Landroid/view/ViewGroup;

.field final synthetic val$webView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p2, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$mViewImpl:Landroid/view/View;

    iput-object p3, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$staticNViews:Ljava/util/ArrayList;

    iput-object p4, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    iput-object p5, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    const/4 p1, 0x0

    .line 3
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 5
    iget-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$mViewImpl:Landroid/view/View;

    new-instance v0, Lio/dcloud/common/util/SubNViewsUtil$1$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/SubNViewsUtil$1$1;-><init>(Lio/dcloud/common/util/SubNViewsUtil$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

###### Class io.dcloud.common.util.SubNViewsUtil.AnonymousClass1.RunnableC00411 (io.dcloud.common.util.SubNViewsUtil$1$1)
.class Lio/dcloud/common/util/SubNViewsUtil$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/SubNViewsUtil$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/SubNViewsUtil$1;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/SubNViewsUtil$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$staticNViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_2b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    .line 2
    iget-object v5, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v5, v5, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v5, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v5, v5, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeView;->obtanMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 5
    :cond_2b
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v1, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$frameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_48

    .line 7
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    :cond_48
    :try_start_48
    iget-object v0, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v0, v0, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/util/SubNViewsUtil$1$1;->this$0:Lio/dcloud/common/util/SubNViewsUtil$1;

    iget-object v1, v1, Lio/dcloud/common/util/SubNViewsUtil$1;->val$webView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
