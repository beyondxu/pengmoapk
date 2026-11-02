###### Class com.facebook.imagepipeline.nativecode.StaticWebpNativeLoader (com.facebook.imagepipeline.nativecode.StaticWebpNativeLoader)
.class public Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;
.super Ljava/lang/Object;
.source "StaticWebpNativeLoader.java"


# static fields
.field private static sInitialized:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensure()V
    .registers 2

    const-class v0, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-boolean v1, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->sInitialized:Z

    if-nez v1, :cond_10

    .line 32
    const-string/jumbo v1, "static-webp"

    invoke-static {v1}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 33
    sput-boolean v1, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->sInitialized:Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 35
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method
