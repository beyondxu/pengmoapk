###### Class androidtranscoder.utils.MediaExtractorUtils (androidtranscoder.utils.MediaExtractorUtils)
.class public Landroidtranscoder/utils/MediaExtractorUtils;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstVideoAndAudioTrack(Landroid/media/MediaExtractor;)Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;
    .registers 7

    .line 1
    new-instance v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;-><init>(Landroidtranscoder/utils/MediaExtractorUtils$1;)V

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    .line 3
    iput v1, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    .line 4
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_4e

    .line 6
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 7
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iget v5, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-gez v5, :cond_30

    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 9
    iput v2, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    .line 10
    iput-object v4, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackMime:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackFormat:Landroid/media/MediaFormat;

    goto :goto_42

    .line 12
    :cond_30
    iget v5, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-gez v5, :cond_42

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 13
    iput v2, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    .line 14
    iput-object v4, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackMime:Ljava/lang/String;

    .line 15
    iput-object v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackFormat:Landroid/media/MediaFormat;

    .line 17
    :cond_42
    :goto_42
    iget v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-ltz v3, :cond_4b

    iget v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-ltz v3, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 19
    :cond_4e
    :goto_4e
    iget p0, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    if-ltz p0, :cond_57

    iget p0, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    if-ltz p0, :cond_57

    return-object v0

    .line 20
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extractor does not contain video and/or audio tracks."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class androidtranscoder.utils.MediaExtractorUtils.AnonymousClass1 (androidtranscoder.utils.MediaExtractorUtils$1)
.class synthetic Landroidtranscoder/utils/MediaExtractorUtils$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/utils/MediaExtractorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidtranscoder.utils.MediaExtractorUtils.TrackResult (androidtranscoder.utils.MediaExtractorUtils$TrackResult)
.class public Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/utils/MediaExtractorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackResult"
.end annotation


# instance fields
.field public mAudioTrackFormat:Landroid/media/MediaFormat;

.field public mAudioTrackIndex:I

.field public mAudioTrackMime:Ljava/lang/String;

.field public mVideoTrackFormat:Landroid/media/MediaFormat;

.field public mVideoTrackIndex:I

.field public mVideoTrackMime:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidtranscoder/utils/MediaExtractorUtils$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;-><init>()V

    return-void
.end method
