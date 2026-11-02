###### Class io.dcloud.common.util.NativeCrashManager (io.dcloud.common.util.NativeCrashManager)
.class public Lio/dcloud/common/util/NativeCrashManager;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initNativeCrash(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "dcCrashDump"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/sample/breakpad/BreakpadInit;->initBreakpad(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method
