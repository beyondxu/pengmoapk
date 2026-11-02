###### Class io.dcloud.p.e3 (io.dcloud.p.e3)
.class public abstract Lio/dcloud/p/e3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/e3$a;
    }
.end annotation


# direct methods
.method public static a()J
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 5
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lio/dcloud/p/e3$a;
    .registers 5

    .line 6
    new-instance v0, Lio/dcloud/p/e3$a;

    invoke-direct {v0}, Lio/dcloud/p/e3$a;-><init>()V

    .line 8
    :try_start_5
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 9
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 11
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v2, v0, Lio/dcloud/p/e3$a;->b:J

    .line 12
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v1, v0, Lio/dcloud/p/e3$a;->a:J

    .line 13
    invoke-static {}, Lio/dcloud/p/e3;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lio/dcloud/p/e3$a;->c:J

    .line 14
    invoke-static {}, Lio/dcloud/p/e3;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lio/dcloud/p/e3$a;->d:J
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-object v0

    :catchall_2a
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static b()J
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 7
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

###### Class io.dcloud.p.e3.a (io.dcloud.p.e3$a)
.class public Lio/dcloud/p/e3$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
