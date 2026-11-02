###### Class com.facebook.soloader.recovery.ReunpackNonBackupSoSources (com.facebook.soloader.recovery.ReunpackNonBackupSoSources)
.class public Lcom/facebook/soloader/recovery/ReunpackNonBackupSoSources;
.super Ljava/lang/Object;
.source "ReunpackNonBackupSoSources.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .registers 10

    .line 35
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 40
    :cond_6
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    if-eqz v0, :cond_b

    return v1

    .line 45
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/facebook/soloader/SoLoaderULError;

    .line 46
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getSoName()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reunpacking NonApk UnpackingSoSources due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_21

    .line 52
    const-string p1, ""

    goto :goto_2f

    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, ", retrying for specific library "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    const-string v2, "SoLoader"

    invoke-static {v2, p1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    array-length p1, p2

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, p1, :cond_8f

    aget-object v4, p2, v3

    .line 55
    instance-of v5, v4, Lcom/facebook/soloader/UnpackingSoSource;

    if-nez v5, :cond_46

    goto :goto_68

    .line 58
    :cond_46
    check-cast v4, Lcom/facebook/soloader/UnpackingSoSource;

    .line 59
    instance-of v5, v4, Lcom/facebook/soloader/BackupSoSource;

    if-eqz v5, :cond_4d

    goto :goto_68

    .line 64
    :cond_4d
    :try_start_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Runpacking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/facebook/soloader/UnpackingSoSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4}, Lcom/facebook/soloader/UnpackingSoSource;->prepareForceRefresh()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_68} :catch_6b

    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :catch_6b
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered an exception while reunpacking "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Lcom/facebook/soloader/UnpackingSoSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for library "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-static {v2, p2, p1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_8f
    const/4 p1, 0x1

    return p1
.end method
