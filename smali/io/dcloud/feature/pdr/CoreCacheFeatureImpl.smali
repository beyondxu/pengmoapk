###### Class io.dcloud.feature.pdr.CoreCacheFeatureImpl (io.dcloud.feature.pdr.CoreCacheFeatureImpl)
.class public Lio/dcloud/feature/pdr/CoreCacheFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 1
    const-string v0, "clear"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppWebCachePath()Ljava/lang/String;

    move-result-object p2

    .line 5
    :try_start_15
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 6
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_24

    goto :goto_29

    :catch_24
    move-exception v0

    move-object p2, v0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_29
    aget-object p2, p3, v1

    const-string p3, ""

    invoke-static {p1, p2, p3}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 11
    :cond_31
    const-string v0, "calculate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 12
    new-instance p2, Ljava/io/File;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppWebCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 15
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_57

    :cond_55
    const-wide/16 v2, 0x0

    .line 17
    :goto_57
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 18
    aget-object v5, p3, v1

    long-to-double v6, v2

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V

    goto :goto_9e

    :cond_6f
    move-object v4, p1

    .line 19
    const-string p1, "setMaxSize"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 20
    aget-object p1, p3, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 21
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 22
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 24
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 25
    const-string v0, "maxSize"

    invoke-interface {p3, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9e
    :goto_9e
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
