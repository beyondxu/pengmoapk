###### Class uts.sdk.modules.DCloudUniNetwork.FileInformation (uts.sdk.modules.DCloudUniNetwork.FileInformation)
.class public Luts/sdk/modules/DCloudUniNetwork/FileInformation;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/FileInformation;",
        "",
        "<init>",
        "()V",
        "inputStream",
        "Ljava/io/InputStream;",
        "getInputStream",
        "()Ljava/io/InputStream;",
        "setInputStream",
        "(Ljava/io/InputStream;)V",
        "size",
        "",
        "getSize",
        "()J",
        "setSize",
        "(J)V",
        "mime",
        "",
        "getMime",
        "()Ljava/lang/String;",
        "setMime",
        "(Ljava/lang/String;)V",
        "name",
        "getName",
        "setName",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private mime:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 678
    iput-wide v0, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->size:J

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 677
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .registers 2

    .line 679
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 680
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 678
    iget-wide v0, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->size:J

    return-wide v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .registers 2

    .line 677
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setMime(Ljava/lang/String;)V
    .registers 2

    .line 679
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->mime:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 680
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 678
    iput-wide p1, p0, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->size:J

    return-void
.end method
