###### Class com.facebook.soloader.NoopSoSource (com.facebook.soloader.NoopSoSource)
.class public Lcom/facebook/soloader/NoopSoSource;
.super Lcom/facebook/soloader/SoSource;
.source "NoopSoSource.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "NoopSoSource"

    return-object v0
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public unpackLibrary(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "unpacking not supported in test mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
