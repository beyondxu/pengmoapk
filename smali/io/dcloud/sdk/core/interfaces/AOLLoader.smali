###### Class io.dcloud.sdk.core.interfaces.AOLLoader (io.dcloud.sdk.core.interfaces.AOLLoader)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$SplashAOLLoadListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$ContentPageVideoListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$VideoAdListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$AdInteractionListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$AdVideo;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$AdImage;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$AppInfo;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLInteractionListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;,
        Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getPersonalAOL(Landroid/content/Context;)Z
.end method

.method public abstract setPersonalAOL(Landroid/content/Context;Z)V
.end method

.method public abstract setPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V
.end method

.method public abstract updatePrivacyConfig(Landroid/content/Context;Lorg/json/JSONObject;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.AdImage (io.dcloud.sdk.core.interfaces.AOLLoader$AdImage)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$AdImage;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdImage"
.end annotation


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isValid()Z
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.AdInteractionListener (io.dcloud.sdk.core.interfaces.AOLLoader$AdInteractionListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$AdInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdInteractionListener"
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdShow()V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.AdVideo (io.dcloud.sdk.core.interfaces.AOLLoader$AdVideo)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$AdVideo;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdVideo"
.end annotation


# virtual methods
.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract reportVideoAutoStart()V
.end method

.method public abstract reportVideoBreak(J)V
.end method

.method public abstract reportVideoContinue(J)V
.end method

.method public abstract reportVideoError(JII)V
.end method

.method public abstract reportVideoFinish()V
.end method

.method public abstract reportVideoPause(J)V
.end method

.method public abstract reportVideoStart()V
.end method

.method public abstract reportVideoStartError(II)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.AppDownloadListener (io.dcloud.sdk.core.interfaces.AOLLoader$AppDownloadListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onIdle()V
.end method

.method public abstract onInstalled(Ljava/lang/String;Ljava/lang/String;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.AppInfo (io.dcloud.sdk.core.interfaces.AOLLoader$AppInfo)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$AppInfo;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppInfo"
.end annotation


# virtual methods
.method public abstract getApkSize()Ljava/lang/String;
.end method

.method public abstract getAppDownloadCount()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAppPackageName()Ljava/lang/String;
.end method

.method public abstract getAppScore()Ljava/lang/String;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getDeveloperName()Ljava/lang/String;
.end method

.method public abstract getFunctionDescUrl()Ljava/lang/String;
.end method

.method public abstract getPermissionInfoUrl()Ljava/lang/String;
.end method

.method public abstract getPrivacyUrl()Ljava/lang/String;
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.ContentPageVideoListener (io.dcloud.sdk.core.interfaces.AOLLoader$ContentPageVideoListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$ContentPageVideoListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentPageVideoListener"
.end annotation


# virtual methods
.method public abstract onComplete(Lio/dcloud/sdk/core/v3/cp/DCContentPage$ContentPageItem;)V
.end method

.method public abstract onError(Lio/dcloud/sdk/core/v3/cp/DCContentPage$ContentPageItem;)V
.end method

.method public abstract onPause(Lio/dcloud/sdk/core/v3/cp/DCContentPage$ContentPageItem;)V
.end method

.method public abstract onResume(Lio/dcloud/sdk/core/v3/cp/DCContentPage$ContentPageItem;)V
.end method

.method public abstract onStart(Lio/dcloud/sdk/core/v3/cp/DCContentPage$ContentPageItem;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.DrawAOLInteractionListener (io.dcloud.sdk.core.interfaces.AOLLoader$DrawAOLInteractionListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawAOLInteractionListener"
.end annotation


# virtual methods
.method public abstract onEnd()V
.end method

.method public abstract onError()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.FeedAOLInteractionListener (io.dcloud.sdk.core.interfaces.AOLLoader$FeedAOLInteractionListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedAOLInteractionListener"
.end annotation


# virtual methods
.method public abstract onClicked()V
.end method

.method public abstract onClosed(Ljava/lang/String;)V
.end method

.method public abstract onPaidGet(JLjava/lang/String;I)V
.end method

.method public abstract onRenderFail()V
.end method

.method public abstract onRenderSuccess()V
.end method

.method public abstract onShow()V
.end method

.method public abstract onShowError()V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.GetConvertResultListener (io.dcloud.sdk.core.interfaces.AOLLoader$GetConvertResultListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetConvertResultListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lio/dcloud/sdk/core/entry/DCRetryRewardEntry;I)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.NativeAOLInteractionListener (io.dcloud.sdk.core.interfaces.AOLLoader$NativeAOLInteractionListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAOLInteractionListener"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract getAppInfo()Lio/dcloud/sdk/core/interfaces/AOLLoader$AppInfo;
.end method

.method public abstract getButtonText()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/interfaces/AOLLoader$AdImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getMaterialType()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoDuration()D
.end method

.method public abstract getVideoView(Landroid/app/Activity;)Landroid/view/View;
.end method

.method public abstract isExpressAd()Z
.end method

.method public abstract setAppDownloadListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;)V
.end method

.method public abstract setVideoAdListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$VideoAdListener;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.NativeAOLListener (io.dcloud.sdk.core.interfaces.AOLLoader$NativeAOLListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAOLListener"
.end annotation


# virtual methods
.method public abstract dislike(Landroid/app/Activity;)V
.end method

.method public abstract getVideoView(Landroid/app/Activity;)Landroid/view/View;
.end method

.method public abstract registerViewForInteraction(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/FrameLayout;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppDownloadListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;)V
.end method

.method public abstract setVideoAdListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$VideoAdListener;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.RequestConvertResultListener (io.dcloud.sdk.core.interfaces.AOLLoader$RequestConvertResultListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestConvertResultListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.RewVAOLInteractionListener (io.dcloud.sdk.core.interfaces.AOLLoader$RewVAOLInteractionListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewVAOLInteractionListener"
.end annotation


# virtual methods
.method public abstract onReward(Lorg/json/JSONObject;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.SplashAOLLoadListener (io.dcloud.sdk.core.interfaces.AOLLoader$SplashAOLLoadListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$SplashAOLLoadListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SplashAOLLoadListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.VAOLInteractionListener (io.dcloud.sdk.core.interfaces.AOLLoader$VAOLInteractionListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VAOLInteractionListener"
.end annotation


# virtual methods
.method public abstract onClick()V
.end method

.method public abstract onClose()V
.end method

.method public abstract onPaidGet(JLjava/lang/String;I)V
.end method

.method public abstract onShow()V
.end method

.method public abstract onShowError(ILjava/lang/String;)V
.end method

.method public abstract onSkip()V
.end method

.method public abstract onVideoPlayEnd()V
.end method

###### Class io.dcloud.sdk.core.interfaces.AOLLoader.VideoAdListener (io.dcloud.sdk.core.interfaces.AOLLoader$VideoAdListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$VideoAdListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoAdListener"
.end annotation


# virtual methods
.method public abstract onProgressUpdate(JJ)V
.end method

.method public abstract onVideoAdComplete()V
.end method

.method public abstract onVideoAdPaused()V
.end method

.method public abstract onVideoAdResume()V
.end method

.method public abstract onVideoAdStartPlay()V
.end method

.method public abstract onVideoError(ILjava/lang/String;)V
.end method

.method public abstract onVideoLoad()V
.end method
