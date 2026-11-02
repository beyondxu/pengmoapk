###### Class com.facebook.soloader.recovery.WaitForAsyncInit (com.facebook.soloader.recovery.WaitForAsyncInit)
.class public Lcom/facebook/soloader/recovery/WaitForAsyncInit;
.super Ljava/lang/Object;
.source "WaitForAsyncInit.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .registers 9

    .line 29
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    if-eqz v0, :cond_c

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/facebook/soloader/SoLoaderULError;

    .line 31
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getSoName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 34
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting on SoSources due to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1c

    .line 38
    const-string p1, ""

    goto :goto_2a

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, ", retrying for specific library "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    const-string v0, "SoLoader"

    invoke-static {v0, p1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    array-length p1, p2

    const/4 v1, 0x0

    :goto_38
    if-ge v1, p1, :cond_5e

    aget-object v2, p2, v1

    .line 41
    instance-of v3, v2, Lcom/facebook/soloader/AsyncInitSoSource;

    if-eqz v3, :cond_5b

    .line 42
    move-object v3, v2

    check-cast v3, Lcom/facebook/soloader/AsyncInitSoSource;

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Waiting on SoSource "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/soloader/SoSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v3}, Lcom/facebook/soloader/AsyncInitSoSource;->waitUntilInitCompleted()V

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_5e
    const/4 p1, 0x1

    return p1
.end method
