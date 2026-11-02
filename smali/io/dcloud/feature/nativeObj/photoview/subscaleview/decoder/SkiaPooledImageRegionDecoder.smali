###### Class io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder (io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder)
.class public Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/ImageRegionDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;
    }
.end annotation


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final RESOURCE_PREFIX:Ljava/lang/String; = "android.resource://"

.field private static final TAG:Ljava/lang/String; = "SkiaPooledImageRegionDecoder"

.field private static debug:Z = false


# instance fields
.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private context:Landroid/content/Context;

.field private final decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

.field private fileLength:J

.field private final imageDimensions:Landroid/graphics/Point;

.field private final lazyInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;-><init>(Landroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;-><init>(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-wide v0, 0x7fffffffffffffffL

    .line 15
    iput-wide v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    .line 16
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    invoke-static {}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz p1, :cond_32

    .line 29
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void

    :cond_32
    if-eqz v0, :cond_37

    .line 31
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void

    .line 33
    :cond_37
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    return-wide v0
.end method

.method static synthetic access$400(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->initialiseDecoder()V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug:Z

    if-eqz v0, :cond_9

    .line 2
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private getNumCoresOldPhones()I
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;

    invoke-direct {v1, p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;-><init>(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 3
    array-length v0, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    :catch_12
    const/4 v0, 0x1

    return v0
.end method

.method private getNumberOfCores()I
    .registers 2

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method private initialiseDecoder()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_96

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_38

    .line 10
    :cond_2e
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    :goto_38
    iget-object v6, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5e

    .line 17
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 18
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v2, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    :cond_5e
    if-ne v7, v2, :cond_77

    .line 20
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 22
    :try_start_6c
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    :cond_77
    const/4 v0, 0x0

    .line 27
    :goto_78
    :try_start_78
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_86} :catch_86

    .line 32
    :catch_86
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    goto/16 :goto_10e

    .line 33
    :cond_96
    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const/16 v1, 0x16

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :try_start_a4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b2} :catch_b2

    .line 41
    :catch_b2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    goto :goto_10e

    .line 42
    :cond_c1
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e2

    const/4 v1, 0x7

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 45
    :try_start_d2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e1} :catch_10b

    goto :goto_10b

    :cond_e2
    const/4 v0, 0x0

    .line 55
    :try_start_e3
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 57
    invoke-static {v0, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_f3
    .catchall {:try_start_e3 .. :try_end_f3} :catchall_142

    .line 59
    :try_start_f3
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_104

    .line 61
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_101} :catch_103
    .catchall {:try_start_f3 .. :try_end_101} :catchall_142

    move-wide v4, v3

    goto :goto_104

    :catch_103
    nop

    :cond_104
    :goto_104
    if-eqz v0, :cond_10d

    .line 68
    :try_start_106
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_10d

    :catch_10a
    move-object v1, v2

    :catch_10b
    :cond_10b
    :goto_10b
    move-object v0, v1

    goto :goto_10e

    :cond_10d
    :goto_10d
    move-object v0, v2

    .line 73
    :goto_10e
    iput-wide v4, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    .line 74
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 75
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_126
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v1, :cond_12d

    .line 78
    invoke-static {v1, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$600(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_12d
    .catchall {:try_start_126 .. :try_end_12d} :catchall_137

    .line 81
    :cond_12d
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_137
    move-exception v0

    .line 82
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    throw v0

    :catchall_142
    move-exception v1

    if-eqz v0, :cond_148

    .line 84
    :try_start_145
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_148

    .line 86
    :catch_148
    :cond_148
    throw v1
.end method

.method private isLowMemory()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_17

    .line 3
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return v0

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private lazyInit()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-wide v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->fileLength:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-gez v4, :cond_22

    .line 2
    const-string v0, "Starting lazy init of additional decoders"

    invoke-direct {p0, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;-><init>(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_22
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug:Z

    return-void
.end method


# virtual methods
.method protected allowAdditionalDecoder(IJ)Z
    .registers 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-lt p1, v0, :cond_a

    .line 1
    const-string p1, "No additional decoders allowed, reached hard limit (4)"

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    :cond_a
    int-to-long v2, p1

    mul-long v2, v2, p2

    const-wide/32 p2, 0x1400000

    cmp-long v0, v2, p2

    if-lez v0, :cond_1a

    .line 4
    const-string p1, "No additional encoders allowed, reached hard memory limit (20Mb)"

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    .line 6
    :cond_1a
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->getNumberOfCores()I

    move-result p2

    if-lt p1, p2, :cond_3b

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No additional encoders allowed, limited by CPU cores ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->getNumberOfCores()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3b
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->isLowMemory()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 10
    const-string p1, "No additional encoders allowed, memory is low"

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    return v1

    .line 13
    :cond_47
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Additional decoder allowed, current count is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", estimated native memory "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0x100000

    div-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "Mb"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decode region "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->debug(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lt v0, v1, :cond_35

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_38

    .line 3
    :cond_35
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInit()V

    .line 5
    :cond_38
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    :try_start_41
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v0, :cond_87

    .line 8
    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$700(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_8f

    if-eqz v0, :cond_80

    .line 11
    :try_start_4b
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_80

    .line 12
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 14
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_79

    if-eqz p1, :cond_71

    .line 23
    :try_start_62
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    invoke-static {p2, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$800(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_8f

    .line 29
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 30
    :cond_71
    :try_start_71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Skia image decoder returned null bitmap - image format may not be supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception p1

    .line 36
    :try_start_7a
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    invoke-static {p2, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$800(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V

    .line 38
    throw p1

    :cond_80
    if-eqz v0, :cond_87

    .line 39
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    invoke-static {p1, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$800(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V

    .line 43
    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot decode region after decoder has been recycled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8f
    .catchall {:try_start_7a .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p1

    .line 45
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46
    throw p1
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->initialiseDecoder()V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->imageDimensions:Landroid/graphics/Point;

    return-object p1
.end method

.method public declared-synchronized isReady()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$900(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    if-nez v0, :cond_e

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_e
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized recycle()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2e

    .line 3
    :try_start_a
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    if-eqz v0, :cond_18

    .line 4
    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$1000(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderPool:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->context:Landroid/content/Context;

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->uri:Landroid/net/Uri;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_23

    .line 10
    :cond_18
    :try_start_18
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    .line 11
    :try_start_24
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw v0

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_2e

    throw v0
.end method

###### Class io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder.AnonymousClass1 (io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder$1)
.class Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;
.super Ljava/lang/Thread;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->lazyInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$100(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$100(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->access$200(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)I

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$300(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->allowAdditionalDecoder(IJ)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 5
    :try_start_1e
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$100(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    const-string v3, "Starting decoder"

    invoke-static {v2, v3}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$400(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$500(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started decoder, took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$400(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_56} :catch_57

    goto :goto_0

    :catch_57
    move-exception v0

    .line 14
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start decoder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->access$400(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;Ljava/lang/String;)V

    goto :goto_0

    :cond_70
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder.C1CpuFilter (io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder$1CpuFilter)
.class Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;->getNumCoresOldPhones()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1CpuFilter;->this$0:Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpu[0-9]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder.DecoderPool (io.dcloud.feature.nativeObj.photoview.subscaleview.decoder.SkiaPooledImageRegionDecoder$DecoderPool)
.class Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecoderPool"
.end annotation


# instance fields
.field private final available:Ljava/util/concurrent/Semaphore;

.field private final decoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/BitmapRegionDecoder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->available:Ljava/util/concurrent/Semaphore;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$1;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->recycle()V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->size()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->add(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$700(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)Landroid/graphics/BitmapRegionDecoder;
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->acquire()Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;Landroid/graphics/BitmapRegionDecoder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->release(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$900(Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private acquire()Landroid/graphics/BitmapRegionDecoder;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->getNextAvailable()Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized add(Landroid/graphics/BitmapRegionDecoder;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private declared-synchronized getNextAvailable()Landroid/graphics/BitmapRegionDecoder;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    monitor-exit p0

    return-object v0

    :cond_30
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method private declared-synchronized markAsUnused(Landroid/graphics/BitmapRegionDecoder;)Z
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_b

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_36

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_32
    monitor-exit p0

    return v2

    :cond_34
    monitor-exit p0

    return v2

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method private declared-synchronized recycle()V
    .registers 3

    monitor-enter p0

    .line 1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->acquire()Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    goto :goto_1

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private release(Landroid/graphics/BitmapRegionDecoder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->markAsUnused(Landroid/graphics/BitmapRegionDecoder;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_b
    return-void
.end method

.method private declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/decoder/SkiaPooledImageRegionDecoder$DecoderPool;->decoders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
