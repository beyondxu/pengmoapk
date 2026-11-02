###### Class com.facebook.common.statfs.StatFsHelper (com.facebook.common.statfs.StatFsHelper)
.class public Lcom/facebook/common/statfs/StatFsHelper;
.super Ljava/lang/Object;
.source "StatFsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/statfs/StatFsHelper$StorageType;
    }
.end annotation


# static fields
.field public static final DEFAULT_DISK_OLIVE_LEVEL_IN_BYTES:J = 0x3e800000L

.field public static final DEFAULT_DISK_RED_LEVEL_IN_BYTES:J = 0x6400000L

.field public static final DEFAULT_DISK_RED_LEVEL_IN_MB:I = 0x64

.field public static final DEFAULT_DISK_YELLOW_LEVEL_IN_BYTES:J = 0x19000000L

.field public static final DEFAULT_DISK_YELLOW_LEVEL_IN_MB:I = 0x190

.field private static final RESTAT_INTERVAL_MS:J

.field private static sStatsFsHelper:Lcom/facebook/common/statfs/StatFsHelper;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private volatile mExternalPath:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mExternalStatFs:Landroid/os/StatFs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mInternalPath:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mInternalStatFs:Landroid/os/StatFs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastRestatTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/common/statfs/StatFsHelper;->RESTAT_INTERVAL_MS:J

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalStatFs:Landroid/os/StatFs;

    .line 66
    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalStatFs:Landroid/os/StatFs;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInitialized:Z

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method protected static createStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .registers 2

    .line 319
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private ensureInitialized()V
    .registers 3

    .line 95
    iget-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInitialized:Z

    if-nez v0, :cond_2c

    .line 96
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    :try_start_9
    iget-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInitialized:Z

    if-nez v0, :cond_1f

    .line 99
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalPath:Ljava/io/File;

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalPath:Ljava/io/File;

    .line 104
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->updateStats()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInitialized:Z
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_25

    .line 108
    :cond_1f
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_25
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    throw v0

    :cond_2c
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/common/statfs/StatFsHelper;
    .registers 2

    const-class v0, Lcom/facebook/common/statfs/StatFsHelper;

    monitor-enter v0

    .line 76
    :try_start_3
    sget-object v1, Lcom/facebook/common/statfs/StatFsHelper;->sStatsFsHelper:Lcom/facebook/common/statfs/StatFsHelper;

    if-nez v1, :cond_e

    .line 77
    new-instance v1, Lcom/facebook/common/statfs/StatFsHelper;

    invoke-direct {v1}, Lcom/facebook/common/statfs/StatFsHelper;-><init>()V

    sput-object v1, Lcom/facebook/common/statfs/StatFsHelper;->sStatsFsHelper:Lcom/facebook/common/statfs/StatFsHelper;

    .line 79
    :cond_e
    sget-object v1, Lcom/facebook/common/statfs/StatFsHelper;->sStatsFsHelper:Lcom/facebook/common/statfs/StatFsHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private maybeUpdateStats()V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 244
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/common/statfs/StatFsHelper;->mLastRestatTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/common/statfs/StatFsHelper;->RESTAT_INTERVAL_MS:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    .line 245
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->updateStats()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1e

    .line 248
    :cond_18
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 249
    throw v0

    :cond_25
    return-void
.end method

.method private updateStats()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalStatFs:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalPath:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/statfs/StatFsHelper;->updateStatsHelper(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalStatFs:Landroid/os/StatFs;

    .line 278
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalStatFs:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalPath:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/statfs/StatFsHelper;->updateStatsHelper(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalStatFs:Landroid/os/StatFs;

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->mLastRestatTime:J

    return-void
.end method

.method private updateStatsHelper(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;
    .registers 5
    .param p1    # Landroid/os/StatFs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_23

    .line 288
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_23

    :cond_a
    if-nez p1, :cond_15

    .line 296
    :try_start_c
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/statfs/StatFsHelper;->createStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object p1

    return-object p1

    .line 299
    :cond_15
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_1c} :catch_23
    .catchall {:try_start_c .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception p1

    .line 312
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_23
    :cond_23
    :goto_23
    return-object v0
.end method


# virtual methods
.method public getAvailableStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J
    .registers 6

    .line 199
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->ensureInitialized()V

    .line 201
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->maybeUpdateStats()V

    .line 203
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalStatFs:Landroid/os/StatFs;

    goto :goto_f

    :cond_d
    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalStatFs:Landroid/os/StatFs;

    :goto_f
    if-eqz p1, :cond_1c

    .line 207
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 208
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0

    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFreeStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J
    .registers 6

    .line 143
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->ensureInitialized()V

    .line 145
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->maybeUpdateStats()V

    .line 147
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalStatFs:Landroid/os/StatFs;

    goto :goto_f

    :cond_d
    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalStatFs:Landroid/os/StatFs;

    :goto_f
    if-eqz p1, :cond_1c

    .line 151
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 152
    invoke-virtual {p1}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0

    :cond_1c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTotalStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J
    .registers 6

    .line 171
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->ensureInitialized()V

    .line 173
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->maybeUpdateStats()V

    .line 175
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mInternalStatFs:Landroid/os/StatFs;

    goto :goto_f

    :cond_d
    iget-object p1, p0, Lcom/facebook/common/statfs/StatFsHelper;->mExternalStatFs:Landroid/os/StatFs;

    :goto_f
    if-eqz p1, :cond_1c

    .line 179
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 180
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0

    :cond_1c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isHighSpaceCondition()Z
    .registers 6

    .line 229
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    invoke-virtual {p0, v0}, Lcom/facebook/common/statfs/StatFsHelper;->getAvailableStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J

    move-result-wide v0

    const-wide/32 v2, 0x3e800000

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isLowSpaceCondition()Z
    .registers 6

    .line 219
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    invoke-virtual {p0, v0}, Lcom/facebook/common/statfs/StatFsHelper;->getAvailableStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J

    move-result-wide v0

    const-wide/32 v2, 0x19000000

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isVeryLowSpaceCondition()Z
    .registers 6

    .line 224
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    invoke-virtual {p0, v0}, Lcom/facebook/common/statfs/StatFsHelper;->getAvailableStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public resetStats()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 262
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->ensureInitialized()V

    .line 264
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->updateStats()V
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_14

    .line 266
    iget-object v0, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/statfs/StatFsHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 267
    throw v0

    :cond_1b
    return-void
.end method

.method public testLowDiskSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;J)Z
    .registers 9

    .line 125
    invoke-direct {p0}, Lcom/facebook/common/statfs/StatFsHelper;->ensureInitialized()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/facebook/common/statfs/StatFsHelper;->getAvailableStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    cmp-long v2, v0, p2

    if-gez v2, :cond_13

    return p1

    :cond_13
    const/4 p1, 0x0

    :cond_14
    return p1
.end method

###### Class com.facebook.common.statfs.StatFsHelper.StorageType (com.facebook.common.statfs.StatFsHelper$StorageType)
.class public final enum Lcom/facebook/common/statfs/StatFsHelper$StorageType;
.super Ljava/lang/Enum;
.source "StatFsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/statfs/StatFsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/common/statfs/StatFsHelper$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/statfs/StatFsHelper$StorageType;

.field public static final enum EXTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

.field public static final enum INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/statfs/StatFsHelper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 42
    new-instance v1, Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    const-string v3, "EXTERNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/common/statfs/StatFsHelper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    const/4 v3, 0x2

    .line 40
    new-array v3, v3, [Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->$VALUES:[Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/statfs/StatFsHelper$StorageType;
    .registers 2

    .line 40
    const-class v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/common/statfs/StatFsHelper$StorageType;
    .registers 1

    .line 40
    sget-object v0, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->$VALUES:[Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    invoke-virtual {v0}, [Lcom/facebook/common/statfs/StatFsHelper$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    return-object v0
.end method
