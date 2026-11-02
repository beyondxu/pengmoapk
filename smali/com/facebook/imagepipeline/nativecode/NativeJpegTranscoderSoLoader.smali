###### Class com.facebook.imagepipeline.nativecode.NativeJpegTranscoderSoLoader (com.facebook.imagepipeline.nativecode.NativeJpegTranscoderSoLoader)
.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;
.super Ljava/lang/Object;
.source "NativeJpegTranscoderSoLoader.java"


# static fields
.field private static sInitialized:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensure()V
    .registers 2

    const-class v0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-boolean v1, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->sInitialized:Z

    if-nez v1, :cond_f

    .line 33
    const-string v1, "native-imagetranscoder"

    invoke-static {v1}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 34
    sput-boolean v1, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->sInitialized:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 36
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method
