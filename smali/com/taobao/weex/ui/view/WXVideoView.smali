###### Class com.taobao.weex.ui.view.WXVideoView (com.taobao.weex.ui.view.WXVideoView)
.class public Lcom/taobao/weex/ui/view/WXVideoView;
.super Landroid/widget/VideoView;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;,
        Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;
    }
.end annotation


# instance fields
.field private mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_e

    .line 3
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_e
    return v0
.end method

.method public pause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;->onPause()V

    :cond_a
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    return-void
.end method

.method public start()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;->onStart()V

    :cond_a
    return-void
.end method

###### Class com.taobao.weex.ui.view.WXVideoView.VideoPlayListener (com.taobao.weex.ui.view.WXVideoView$VideoPlayListener)
.class public interface abstract Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoPlayListener"
.end annotation


# virtual methods
.method public abstract onPause()V
.end method

.method public abstract onStart()V
.end method

###### Class com.taobao.weex.ui.view.WXVideoView.Wrapper (com.taobao.weex.ui.view.WXVideoView$Wrapper)
.class public Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private mControls:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUri:Landroid/net/Uri;

.field private mVideoPlayListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

.field private mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mControls:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mControls:Z

    .line 17
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mControls:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->init(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized createVideoView()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_6

    goto :goto_60

    .line 4
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-direct {v1, v0}, Lcom/taobao/weex/ui/view/WXVideoView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 9
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 12
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 13
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 14
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 15
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoPlayListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 16
    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v3, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 18
    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 19
    invoke-virtual {v3, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 20
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mControls:Z

    if-nez v0, :cond_4c

    const/16 v0, 0x8

    .line 21
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    .line 23
    :cond_4c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_4f
    iput-object v3, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mMediaController:Landroid/widget/MediaController;

    .line 26
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    const/4 v0, 0x1

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 29
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_60

    .line 30
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setVideoURI(Landroid/net/Uri;)V
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_62

    monitor-exit p0

    return-void

    :cond_60
    :goto_60
    monitor-exit p0

    return-void

    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "#ee000000"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 7
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private removeSelfFromViewTreeObserver()V
    .registers 2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public createIfNotExist()Lcom/taobao/weex/ui/view/WXVideoView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoView()V

    .line 4
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    return-object v0
.end method

.method public createVideoViewIfVisible()Z
    .registers 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    return v2

    .line 4
    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 5
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoView()V

    return v2

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaController()Landroid/widget/MediaController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    return-object v0
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoViewIfVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->removeSelfFromViewTreeObserver()V

    :cond_9
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView;->pause()V

    :cond_7
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    :cond_7
    return-void
.end method

.method public setControls(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mControls:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_16

    if-nez p1, :cond_12

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_12
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_9
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_9
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_9
    return-void
.end method

.method public setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoPlayListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    :cond_9
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mUri:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView;->start()V

    :cond_7
    return-void
.end method

.method public stopPlayback()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_7
    return-void
.end method
