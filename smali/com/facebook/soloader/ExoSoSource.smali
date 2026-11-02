###### Class com.facebook.soloader.ExoSoSource (com.facebook.soloader.ExoSoSource)
.class public final Lcom/facebook/soloader/ExoSoSource;
.super Lcom/facebook/soloader/UnpackingSoSource;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExoSoSource$FileDso;,
        Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getHashingAlgorithm()Ljava/security/MessageDigest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 47
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, "ExoSoSource"

    return-object v0
.end method

.method protected makeUnpacker(Z)Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance p1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-direct {p1, p0, p0}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;-><init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    return-object p1
.end method

###### Class com.facebook.soloader.ExoSoSource.ExoUnpacker (com.facebook.soloader.ExoSoSource$ExoUnpacker)
.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExoUnpacker"
.end annotation


# instance fields
.field private final mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

.field final synthetic this$0:Lcom/facebook/soloader/ExoSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 59
    const-string v2, ".so"

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->this$0:Lcom/facebook/soloader/ExoSoSource;

    invoke-direct {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 60
    iget-object v0, v0, Lcom/facebook/soloader/ExoSoSource;->mContext:Landroid/content/Context;

    .line 61
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/local/tmp/exopackage/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/native-libs/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 68
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3a
    if-ge v8, v6, :cond_117

    aget-object v9, v5, v8

    .line 69
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_4d

    :goto_49
    move-object/from16 v17, v3

    goto/16 :goto_fa

    .line 74
    :cond_4d
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v9, Ljava/io/File;

    const-string v11, "metadata.txt"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_5e

    goto :goto_49

    .line 81
    :cond_5e
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 82
    :try_start_63
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_10c

    .line 84
    :goto_68
    :try_start_68
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f2

    .line 85
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_75

    goto :goto_68

    :cond_75
    const/16 v13, 0x20

    .line 89
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_d6

    .line 94
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_95
    if-ge v7, v15, :cond_b2

    .line 98
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/facebook/soloader/ExoSoSource$FileDso;

    iget-object v3, v3, Lcom/facebook/soloader/ExoSoSource$FileDso;->name:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    :goto_a9
    move-object/from16 v3, v17

    const/4 v7, 0x0

    goto :goto_68

    :cond_ad
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    goto :goto_95

    :cond_b2
    move-object/from16 v17, v3

    add-int/lit8 v13, v13, 0x1

    .line 108
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x2d

    .line 111
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 110
    invoke-virtual {v3, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 112
    new-instance v12, Lcom/facebook/soloader/ExoSoSource$FileDso;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v12, v14, v7, v13}, Lcom/facebook/soloader/ExoSoSource$FileDso;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 91
    :cond_d6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal line in exopackage metadata: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f2
    .catchall {:try_start_68 .. :try_end_f2} :catchall_101

    :cond_f2
    move-object/from16 v17, v3

    .line 114
    :try_start_f4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_10c

    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    :goto_fa
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    const/4 v7, 0x0

    goto/16 :goto_3a

    :catchall_101
    move-exception v0

    move-object v2, v0

    .line 81
    :try_start_103
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_107

    goto :goto_10b

    :catchall_107
    move-exception v0

    :try_start_108
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10b
    throw v2
    :try_end_10c
    .catchall {:try_start_108 .. :try_end_10c} :catchall_10c

    :catchall_10c
    move-exception v0

    move-object v2, v0

    :try_start_10e
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_116

    :catchall_112
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_116
    throw v2

    .line 117
    :cond_117
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-void
.end method


# virtual methods
.method public getDsos()[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-object v0
.end method

.method public unpack(Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 128
    new-array v0, v0, [B

    .line 129
    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 130
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, v4, Lcom/facebook/soloader/ExoSoSource$FileDso;->backingFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 131
    :try_start_14
    new-instance v6, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v6, v4, v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_2d

    const/4 v5, 0x0

    .line 133
    :try_start_1a
    invoke-virtual {p0, v6, v0, p1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[BLjava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    .line 134
    :try_start_1d
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2d

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catchall_23
    move-exception p1

    .line 131
    :try_start_24
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v0

    :try_start_29
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    if-eqz v5, :cond_33

    .line 136
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 138
    :cond_33
    throw p1

    :cond_34
    return-void
.end method

###### Class com.facebook.soloader.ExoSoSource.FileDso (com.facebook.soloader.ExoSoSource$FileDso)
.class final Lcom/facebook/soloader/ExoSoSource$FileDso;
.super Lcom/facebook/soloader/UnpackingSoSource$Dso;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDso"
.end annotation


# instance fields
.field final backingFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource$Dso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-object p3, p0, Lcom/facebook/soloader/ExoSoSource$FileDso;->backingFile:Ljava/io/File;

    return-void
.end method
