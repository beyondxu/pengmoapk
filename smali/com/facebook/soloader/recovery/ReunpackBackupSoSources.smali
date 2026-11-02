###### Class com.facebook.soloader.recovery.ReunpackBackupSoSources (com.facebook.soloader.recovery.ReunpackBackupSoSources)
.class public Lcom/facebook/soloader/recovery/ReunpackBackupSoSources;
.super Ljava/lang/Object;
.source "ReunpackBackupSoSources.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .registers 10

    .line 37
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderULError;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 42
    :cond_6
    instance-of v0, p1, Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    if-eqz v0, :cond_b

    return v1

    .line 47
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/facebook/soloader/SoLoaderULError;

    .line 48
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 49
    const-string v3, "/app/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "/mnt/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_a4

    .line 54
    :cond_26
    invoke-virtual {v0}, Lcom/facebook/soloader/SoLoaderULError;->getSoName()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reunpacking BackupSoSources due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_39

    .line 59
    const-string p1, ""

    goto :goto_47

    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, ", retrying for specific library "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    const-string v2, "SoLoader"

    invoke-static {v2, p1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    array-length p1, p2

    const/4 v3, 0x0

    :goto_55
    if-ge v3, p1, :cond_a2

    aget-object v4, p2, v3

    .line 62
    instance-of v5, v4, Lcom/facebook/soloader/BackupSoSource;

    if-nez v5, :cond_5e

    goto :goto_7b

    .line 66
    :cond_5e
    check-cast v4, Lcom/facebook/soloader/BackupSoSource;

    .line 68
    :try_start_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Runpacking BackupSoSource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/facebook/soloader/BackupSoSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Lcom/facebook/soloader/BackupSoSource;->prepareForceRefresh()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7b} :catch_7e

    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :catch_7e
    move-exception p1

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered an exception while reunpacking BackupSoSource "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4}, Lcom/facebook/soloader/BackupSoSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for library "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-static {v2, p2, p1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_a2
    const/4 p1, 0x1

    return p1

    :cond_a4
    :goto_a4
    return v1
.end method
