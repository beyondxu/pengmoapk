###### Class com.taobao.weex.ui.component.WXVideo (com.taobao.weex.ui.component.WXVideo)
.class public Lcom/taobao/weex/ui/component/WXVideo;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoPlay:Z

.field private mError:Z

.field mPrepared:Z

.field private mStopped:Z

.field private mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXVideo;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->notify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p1
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    const-string v0, "playStatus"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timeStamp"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string p2, "attrs"

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2
    const-string p1, "appear"

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$1;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$1;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 21
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$2;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$2;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 50
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXVideo$3;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 63
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXVideo$4;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 86
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoViewIfVisible()Z

    return-void
.end method

.method public setAutoPlay(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    if-eqz p1, :cond_e

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createIfNotExist()Lcom/taobao/weex/ui/view/WXVideoView;

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    :cond_e
    return-void
.end method

.method public setControls(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "controls"
    .end annotation

    .line 1
    const-string v0, "controls"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setControls(Z)V

    return-void

    .line 3
    :cond_f
    const-string v0, "nocontrols"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setControls(Z)V

    :cond_1d
    return-void
.end method

.method public setPlaystatus(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "playStatus"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    const-string v1, "play"

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-nez v0, :cond_3a

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    return-void

    .line 4
    :cond_1a
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->pause()V

    return-void

    .line 6
    :cond_28
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->stopPlayback()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return-void

    .line 10
    :cond_3a
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-eqz v0, :cond_59

    :cond_42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    .line 12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->resume()V

    .line 14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_59
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_86

    goto :goto_47

    :sswitch_10
    const-string v0, "playStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_47

    :cond_19
    const/4 v2, 0x4

    goto :goto_47

    :sswitch_1b
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_47

    :cond_24
    const/4 v2, 0x3

    goto :goto_47

    :sswitch_26
    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_47

    :cond_2f
    const/4 v2, 0x2

    goto :goto_47

    :sswitch_31
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_47

    :cond_3a
    const/4 v2, 0x1

    goto :goto_47

    :sswitch_3c
    const-string/jumbo v0, "zOrderTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_9c

    .line 28
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 29
    :pswitch_50
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 31
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setPlaystatus(Ljava/lang/String;)V

    :cond_59
    return v1

    .line 32
    :pswitch_5a
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setAutoPlay(Z)V

    :cond_67
    return v1

    .line 35
    :pswitch_68
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 37
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setSrc(Ljava/lang/String;)V

    :cond_71
    return v1

    .line 48
    :pswitch_72
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 50
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    :cond_85
    return v1

    :sswitch_data_86
    .sparse-switch
        -0x9f6de3f -> :sswitch_3c
        0x1bde4 -> :sswitch_31
        0x55bf6d83 -> :sswitch_26
        0x55cdf963 -> :sswitch_1b
        0x5e571046 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_72
        :pswitch_68
        :pswitch_5a
        :pswitch_5a
        :pswitch_50
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_31

    .line 5
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v2, "video"

    invoke-virtual {v0, p1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setVideoURI(Landroid/net/Uri;)V

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    :goto_31
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass1 (com.taobao.weex.ui.component.WXVideo$1)
.class Lcom/taobao/weex/ui/component/WXVideo$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;

.field final synthetic val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onError:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Video"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_19
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 9
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string/jumbo v0, "stop"

    invoke-static {p1, p3, v0}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return p2
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass2 (com.taobao.weex.ui.component.WXVideo$2)
.class Lcom/taobao/weex/ui/component/WXVideo$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;

.field final synthetic val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    const-string p1, "Video"

    const-string v0, "onPrepared"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 6
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXVideo;->access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    .line 11
    :cond_28
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object p1

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 14
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 15
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXVideo;->access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 16
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_56

    .line 18
    :cond_4d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 22
    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXVideo;->access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass3 (com.taobao.weex.ui.component.WXVideo$3)
.class Lcom/taobao/weex/ui/component/WXVideo$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$3;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    const-string p1, "Video"

    const-string v0, "onCompletion"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$3;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string v0, "finish"

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$3;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string/jumbo v1, "stop"

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVideo.AnonymousClass4 (com.taobao.weex.ui.component.WXVideo$4)
.class Lcom/taobao/weex/ui/component/WXVideo$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    const-string v0, "Video"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v0, v1, v1}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    const-string v0, "Video"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$4;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string v2, "play"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method
