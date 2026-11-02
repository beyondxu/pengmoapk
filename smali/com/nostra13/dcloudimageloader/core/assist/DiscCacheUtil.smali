###### Class com.nostra13.dcloudimageloader.core.assist.DiscCacheUtil (com.nostra13.dcloudimageloader.core.assist.DiscCacheUtil)
.class public final Lcom/nostra13/dcloudimageloader/core/assist/DiscCacheUtil;
.super Ljava/lang/Object;
.source "DiscCacheUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findInCache(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;)Ljava/io/File;
    .registers 2

    .line 16
    invoke-interface {p1, p0}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;)Z
    .registers 2

    .line 21
    invoke-interface {p1, p0}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method
