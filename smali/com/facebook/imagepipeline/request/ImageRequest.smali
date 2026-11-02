###### Class com.facebook.imagepipeline.request.ImageRequest (com.facebook.imagepipeline.request.ImageRequest)
.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$CachesLocationsMasks;,
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    }
.end annotation


# static fields
.field public static final REQUEST_TO_URI_FN:Lcom/facebook/common/internal/Fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Fn<",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheHashcode:Z

.field private static sUseCachedHashcodeInEquals:Z


# instance fields
.field private final mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field protected mCachesDisabled:I

.field private final mDecodePrefetches:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDelayMs:I

.field private final mDiskCacheId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHashcode:I

.field private final mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private final mIsDiskCacheEnabled:Z

.field private final mIsMemoryCacheEnabled:Z

.field private final mLoadThumbnailOnly:Z

.field private final mLocalThumbnailPreviewsEnabled:Z

.field private final mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private final mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mProgressiveRenderingEnabled:Z

.field private final mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

.field private final mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mResizingAllowedOverride:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private mSourceFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSourceUri:Landroid/net/Uri;

.field private final mSourceUriType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 557
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$1;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$1;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest;->REQUEST_TO_URI_FN:Lcom/facebook/common/internal/Fn;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .registers 4

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 145
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    .line 146
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUriType(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUriType:I

    .line 148
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->isProgressiveRenderingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mProgressiveRenderingEnabled:Z

    .line 149
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->isLocalThumbnailPreviewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    .line 150
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getLoadThumbnailOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    .line 152
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 154
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 156
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 157
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->autoRotate()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    goto :goto_42

    .line 158
    :cond_3e
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    :goto_42
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 159
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 161
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getRequestPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    .line 162
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 164
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->isDiskCacheEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    .line 166
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getCachesDisabled()I

    move-result v1

    if-nez v0, :cond_64

    or-int/lit8 v1, v1, 0x30

    .line 171
    :cond_64
    iput v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    .line 173
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->isMemoryCacheEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    .line 174
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->shouldDecodePrefetches()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    .line 176
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 178
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 180
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getResizingAllowedOverride()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    .line 182
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getDownsampleOverride()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getDelayMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    .line 186
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->getDiskCacheId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDiskCacheId:Ljava/lang/String;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .registers 1
    .param p0    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_4
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    return-object p0
.end method

.method public static fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .registers 1
    .param p0    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_4
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    return-object p0
.end method

.method public static fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_12

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHashCodeHelper(Ljava/lang/Object;)I
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 417
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method private static getSourceUriType(Landroid/net/Uri;)I
    .registers 3
    .param p0    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 534
    :cond_4
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 536
    :cond_c
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 537
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/common/media/MediaUtils;->extractMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/common/media/MediaUtils;->isVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x2

    return p0

    :cond_28
    const/4 p0, 0x3

    return p0

    .line 542
    :cond_2a
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isLocalContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 p0, 0x4

    return p0

    .line 544
    :cond_32
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isLocalAssetUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 p0, 0x5

    return p0

    .line 546
    :cond_3a
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isLocalResourceUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 p0, 0x6

    return p0

    .line 548
    :cond_42
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isDataUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 p0, 0x7

    return p0

    .line 550
    :cond_4a
    invoke-static {p0}, Lcom/facebook/common/util/UriUtil;->isQualifiedResourceUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    return v0
.end method

.method public static setCacheHashcode(Z)V
    .registers 1

    .line 570
    sput-boolean p0, Lcom/facebook/imagepipeline/request/ImageRequest;->sCacheHashcode:Z

    return-void
.end method

.method public static setUseCachedHashcodeInEquals(Z)V
    .registers 1

    .line 566
    sput-boolean p0, Lcom/facebook/imagepipeline/request/ImageRequest;->sUseCachedHashcodeInEquals:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 309
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 312
    :cond_6
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 313
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->sUseCachedHashcodeInEquals:Z

    if-eqz v0, :cond_17

    .line 314
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mHashcode:I

    .line 315
    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mHashcode:I

    if-eqz v0, :cond_17

    if-eqz v2, :cond_17

    if-eq v0, v2, :cond_17

    return v1

    .line 320
    :cond_17
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    if-eq v0, v2, :cond_1e

    return v1

    .line 321
    :cond_1e
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    if-eq v0, v2, :cond_25

    return v1

    .line 322
    :cond_25
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    if-eq v0, v2, :cond_2c

    return v1

    .line 323
    :cond_2c
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 324
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDiskCacheId:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mDiskCacheId:Ljava/lang/String;

    .line 325
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceFile:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceFile:Ljava/io/File;

    .line 326
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 327
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 328
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 329
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    .line 330
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 331
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    .line 333
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    .line 334
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 335
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 336
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    if-eq v0, v2, :cond_c7

    goto :goto_e9

    .line 341
    :cond_c7
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    const/4 v2, 0x0

    if-eqz v0, :cond_d1

    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/Postprocessor;->getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    goto :goto_d2

    :cond_d1
    move-object v0, v2

    .line 343
    :goto_d2
    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v3, :cond_da

    invoke-interface {v3}, Lcom/facebook/imagepipeline/request/Postprocessor;->getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    .line 344
    :cond_da
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    return v1

    .line 345
    :cond_e1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    if-ne v0, p1, :cond_e9

    const/4 p1, 0x1

    return p1

    :cond_e9
    :goto_e9
    return v1
.end method

.method public getAutoRotateEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v0

    return v0
.end method

.method public getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    return-object v0
.end method

.method public getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public getCachesDisabled()I
    .registers 2

    .line 255
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    return v0
.end method

.method public getDelayMs()I
    .registers 2

    .line 284
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    return v0
.end method

.method public getDiskCacheId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDiskCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownsampleOverride()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public getLoadThumbnailOnlyForAndroidSdkAboveQ()Z
    .registers 3

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalThumbnailPreviewsEnabled()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    return v0
.end method

.method public getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    return-object v0
.end method

.method public getPreferredHeight()I
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    return v0

    :cond_7
    const/16 v0, 0x800

    return v0
.end method

.method public getPreferredWidth()I
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    return v0

    :cond_7
    const/16 v0, 0x800

    return v0
.end method

.method public getPriority()Lcom/facebook/imagepipeline/common/Priority;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public getProgressiveRenderingEnabled()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mProgressiveRenderingEnabled:Z

    return v0
.end method

.method public getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    return-object v0
.end method

.method public getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-object v0
.end method

.method public getResizingAllowedOverride()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public declared-synchronized getSourceFile()Ljava/io/File;
    .registers 3

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceFile:Ljava/io/File;

    if-nez v0, :cond_1b

    .line 289
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceFile:Ljava/io/File;

    .line 292
    :cond_1b
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceFile:Ljava/io/File;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceUriType()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUriType:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 350
    sget-boolean v0, Lcom/facebook/imagepipeline/request/ImageRequest;->sCacheHashcode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 353
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mHashcode:I

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-nez v2, :cond_9c

    .line 357
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lcom/facebook/imagepipeline/request/Postprocessor;->getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 358
    :goto_15
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 359
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 360
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 361
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 362
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 363
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 364
    iget v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 365
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 366
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 367
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 368
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 369
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 370
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-static {v1, v3}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 371
    invoke-static {v1, v2}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 372
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 373
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-static {v1, v2}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 374
    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    .line 375
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/memory/helper/HashCode;->extend(ILjava/lang/Object;)I

    move-result v1

    if-eqz v0, :cond_9b

    .line 378
    iput v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mHashcode:I

    :cond_9b
    return v1

    :cond_9c
    return v2
.end method

.method public isCacheEnabled(I)Z
    .registers 3

    .line 264
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCachesDisabled()I

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public isDiskCacheEnabled()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    return v0
.end method

.method public isMemoryCacheEnabled()Z
    .registers 2

    .line 268
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    return v0
.end method

.method public recordHashCode(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/Postprocessor;->getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 387
    :goto_a
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mSourceUri"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    .line 392
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 390
    const-string v2, "ImageRequest.mLocalThumbnailPreviewsEnabled"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mBytesRange"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mRequestPriority"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 397
    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 395
    const-string v2, "ImageRequest.mLowestPermittedRequestLevel"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mCachesDisabled"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mIsDiskCacheEnabled"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mIsMemoryCacheEnabled"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mImageDecodeOptions"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mDecodePrefetches"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mSoumResizeOptionsrceUri"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImageRequest.mRotationOptions"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ImageRequest.postprocessorCacheKey"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    .line 407
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 406
    const-string v1, "ImageRequest.mResizingAllowedOverride"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ImageRequest.mDownsampleOverride"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ImageRequest.mDelayMs"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getHashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ImageRequest.mLoadThumbnailOnly"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldDecodePrefetches()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 423
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mSourceUri:Landroid/net/Uri;

    .line 424
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cacheChoice"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 425
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "decodeOptions"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 426
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "postprocessor"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 427
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "priority"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRequestPriority:Lcom/facebook/imagepipeline/common/Priority;

    .line 428
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "resizeOptions"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 429
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "rotationOptions"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mRotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "bytesRange"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mBytesRange:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 431
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "resizingAllowedOverride"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mResizingAllowedOverride:Ljava/lang/Boolean;

    .line 432
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "downsampleOverride"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDownsampleOverride:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 433
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "progressiveRenderingEnabled"

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mProgressiveRenderingEnabled:Z

    .line 434
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "localThumbnailPreviewsEnabled"

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLocalThumbnailPreviewsEnabled:Z

    .line 435
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadThumbnailOnly"

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLoadThumbnailOnly:Z

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "lowestPermittedRequestLevel"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mLowestPermittedRequestLevel:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 437
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cachesDisabled"

    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mCachesDisabled:I

    .line 438
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isDiskCacheEnabled"

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsDiskCacheEnabled:Z

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "isMemoryCacheEnabled"

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mIsMemoryCacheEnabled:Z

    .line 440
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "decodePrefetches"

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDecodePrefetches:Ljava/lang/Boolean;

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "delayMs"

    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->mDelayMs:I

    .line 442
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.request.ImageRequest.AnonymousClass1 (com.facebook.imagepipeline.request.ImageRequest$1)
.class Lcom/facebook/imagepipeline/request/ImageRequest$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/facebook/common/internal/Fn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Fn<",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/facebook/imagepipeline/request/ImageRequest;)Landroid/net/Uri;
    .registers 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_7

    .line 561
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 558
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/request/ImageRequest$1;->apply(Lcom/facebook/imagepipeline/request/ImageRequest;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.imagepipeline.request.ImageRequest.CacheChoice (com.facebook.imagepipeline.request.ImageRequest$CacheChoice)
.class public final enum Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheChoice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field public static final enum DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field public static final enum DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field public static final enum SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 450
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 453
    new-instance v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 456
    new-instance v3, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const-string v5, "DYNAMIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DYNAMIC:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const/4 v5, 0x3

    .line 447
    new-array v5, v5, [Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->$VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .registers 2

    .line 447
    const-class v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .registers 1

    .line 447
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->$VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

###### Class com.facebook.imagepipeline.request.ImageRequest.CachesLocationsMasks (com.facebook.imagepipeline.request.ImageRequest$CachesLocationsMasks)
.class public interface abstract annotation Lcom/facebook/imagepipeline/request/ImageRequest$CachesLocationsMasks;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CachesLocationsMasks"
.end annotation


# static fields
.field public static final BITMAP_READ:I = 0x1

.field public static final BITMAP_WRITE:I = 0x2

.field public static final DISK_READ:I = 0x10

.field public static final DISK_WRITE:I = 0x20

.field public static final ENCODED_READ:I = 0x4

.field public static final ENCODED_WRITE:I = 0x8

###### Class com.facebook.imagepipeline.request.ImageRequest.RequestLevel (com.facebook.imagepipeline.request.ImageRequest$RequestLevel)
.class public final enum Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field public static final enum BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field public static final enum DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field public static final enum ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field public static final enum FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 465
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const-string v1, "FULL_FETCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 468
    new-instance v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const-string v4, "DISK_CACHE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 471
    new-instance v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const-string v6, "ENCODED_MEMORY_CACHE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 474
    new-instance v6, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const-string v8, "BITMAP_MEMORY_CACHE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 463
    new-array v8, v9, [Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->$VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 479
    iput p3, p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->mValue:I

    return-void
.end method

.method public static getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .registers 4

    .line 487
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-le v0, v1, :cond_b

    return-object p0

    :cond_b
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .registers 2

    .line 463
    const-class v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .registers 1

    .line 463
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->$VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 483
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->mValue:I

    return v0
.end method
