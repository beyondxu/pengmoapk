###### Class com.facebook.soloader.nativeloader.NativeLoader (com.facebook.soloader.nativeloader.NativeLoader)
.class public Lcom/facebook/soloader/nativeloader/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_d

    .line 70
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 72
    invoke-interface {v1, p0}, Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_15
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method

.method public static getSoSourcesVersion()I
    .registers 3

    .line 81
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 82
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_d

    .line 88
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 90
    invoke-interface {v1}, Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;->getSoSourcesVersion()I

    move-result v0

    return v0

    .line 83
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_15
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    .registers 3

    .line 100
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 101
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-nez v1, :cond_b

    .line 104
    sput-object p0, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    .line 105
    monitor-exit v0

    return-void

    .line 102
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-initialize NativeLoader."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_13
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    .registers 2

    .line 130
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 131
    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V

    :cond_9
    return-void
.end method

.method public static isInitialized()Z
    .registers 2

    .line 117
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 118
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .registers 4

    .line 43
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_d

    .line 50
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 52
    invoke-interface {v1, p0, p1}, Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 45
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_15
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method
