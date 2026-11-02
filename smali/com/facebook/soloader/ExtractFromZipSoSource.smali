###### Class com.facebook.soloader.ExtractFromZipSoSource (com.facebook.soloader.ExtractFromZipSoSource)
.class public Lcom/facebook/soloader/ExtractFromZipSoSource;
.super Lcom/facebook/soloader/UnpackingSoSource;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;,
        Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "soloader.ExtractFromZipSoSource"


# instance fields
.field protected final mZipFileName:Ljava/io/File;

.field protected final mZipSearchPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iput-object p3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource;->mZipFileName:Ljava/io/File;

    .line 54
    iput-object p4, p0, Lcom/facebook/soloader/ExtractFromZipSoSource;->mZipSearchPattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected computeFileHash(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 155
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_30

    .line 156
    :try_start_5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x400

    .line 157
    new-array v1, v1, [B

    .line 159
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x0

    .line 160
    invoke-interface {p1, v1, v3, v2}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_e

    .line 162
    :cond_1a
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_26

    .line 163
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_30

    return-object p1

    :catchall_26
    move-exception p1

    .line 155
    :try_start_27
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    :try_start_2c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw p1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    :catch_30
    move-exception p1

    .line 164
    const-string v0, "soloader.ExtractFromZipSoSource"

    const-string v1, "Failed to compute file hash "

    invoke-static {v0, v1, p1}, Lcom/facebook/soloader/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const-string p1, ""

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 59
    const-string v0, "ExtractFromZipSoSource"

    return-object v0
.end method

.method protected makeUnpacker(Z)Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-direct {p1, p0, p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    return-object p1
.end method

###### Class com.facebook.soloader.ExtractFromZipSoSource.ZipDso (com.facebook.soloader.ExtractFromZipSoSource$ZipDso)
.class public final Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
.super Lcom/facebook/soloader/UnpackingSoSource$Dso;
.source "ExtractFromZipSoSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExtractFromZipSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ZipDso"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/soloader/UnpackingSoSource$Dso;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;",
        ">;"
    }
.end annotation


# instance fields
.field final abiScore:I

.field final backingEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V
    .registers 6

    .line 175
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/soloader/UnpackingSoSource$Dso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object p2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    .line 177
    iput p3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;)I
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 169
    check-cast p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-virtual {p0, p1}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->compareTo(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 194
    :cond_12
    check-cast p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 196
    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    iget p1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    if-ne v2, p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 201
    iget v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget-object v1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.facebook.soloader.ExtractFromZipSoSource.ZipUnpacker (com.facebook.soloader.ExtractFromZipSoSource$ZipUnpacker)
.class public Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExtractFromZipSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ZipUnpacker"
.end annotation


# instance fields
.field protected mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSoSource:Lcom/facebook/soloader/UnpackingSoSource;

.field private final mZipFile:Ljava/util/zip/ZipFile;

.field final synthetic this$0:Lcom/facebook/soloader/ExtractFromZipSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->this$0:Lcom/facebook/soloader/ExtractFromZipSoSource;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 74
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object p1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource;->mZipFileName:Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    .line 75
    iput-object p2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mSoSource:Lcom/facebook/soloader/UnpackingSoSource;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method computeDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .registers 10

    .line 79
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->this$0:Lcom/facebook/soloader/ExtractFromZipSoSource;

    iget-object v2, v2, Lcom/facebook/soloader/ExtractFromZipSoSource;->mZipSearchPattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 82
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 84
    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 85
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 86
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 87
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_1c

    :cond_37
    const/4 v7, 0x1

    .line 90
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 91
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v3, v7}, Lcom/facebook/soloader/SysUtil;->findAbiScore([Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_48

    goto :goto_1c

    .line 96
    :cond_48
    invoke-virtual {v0, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-eqz v7, :cond_57

    .line 98
    iget v7, v7, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    if-ge v8, v7, :cond_1c

    .line 99
    :cond_57
    new-instance v7, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-direct {v7, v6, v5, v8}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 103
    :cond_60
    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mSoSource:Lcom/facebook/soloader/UnpackingSoSource;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 106
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDsos()[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    return-object v0
.end method

.method getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-eqz v0, :cond_5

    return-object v0

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->computeDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0
.end method

.method public unpack(Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    const v1, 0x8000

    .line 138
    new-array v1, v1, [B

    .line 139
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_37

    aget-object v4, v0, v3

    .line 140
    iget-object v5, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v6, v4, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 141
    :try_start_17
    new-instance v6, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v6, v4, v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_30

    const/4 v5, 0x0

    .line 143
    :try_start_1d
    invoke-virtual {p0, v6, v1, p1}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[BLjava/io/File;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 144
    :try_start_20
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_30

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_26
    move-exception p1

    .line 141
    :try_start_27
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    :try_start_2c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw p1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p1

    if-eqz v5, :cond_36

    .line 146
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 148
    :cond_36
    throw p1

    :cond_37
    return-void
.end method
