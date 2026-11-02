###### Class uts.sdk.modules.DCloudUniNetwork.SharedStreamBuffer (uts.sdk.modules.DCloudUniNetwork.SharedStreamBuffer)
.class public Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0004\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;",
        "",
        "<init>",
        "()V",
        "buffer",
        "Ljava/io/ByteArrayOutputStream;",
        "getBuffer",
        "()Ljava/io/ByteArrayOutputStream;",
        "setBuffer",
        "(Ljava/io/ByteArrayOutputStream;)V",
        "isStreamEnded",
        "",
        "()Z",
        "setStreamEnded",
        "(Z)V",
        "totalBytesRead",
        "",
        "getTotalBytesRead",
        "()Ljava/lang/Number;",
        "setTotalBytesRead",
        "(Ljava/lang/Number;)V",
        "hasNewData",
        "getHasNewData",
        "setHasNewData",
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
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private hasNewData:Z

.field private isStreamEnded:Z

.field private totalBytesRead:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 1354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->totalBytesRead:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/io/ByteArrayOutputStream;
    .registers 2

    .line 1352
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getHasNewData()Z
    .registers 2

    .line 1355
    iget-boolean v0, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->hasNewData:Z

    return v0
.end method

.method public getTotalBytesRead()Ljava/lang/Number;
    .registers 2

    .line 1354
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->totalBytesRead:Ljava/lang/Number;

    return-object v0
.end method

.method public isStreamEnded()Z
    .registers 2

    .line 1353
    iget-boolean v0, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->isStreamEnded:Z

    return v0
.end method

.method public setBuffer(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1352
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public setHasNewData(Z)V
    .registers 2

    .line 1355
    iput-boolean p1, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->hasNewData:Z

    return-void
.end method

.method public setStreamEnded(Z)V
    .registers 2

    .line 1353
    iput-boolean p1, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->isStreamEnded:Z

    return-void
.end method

.method public setTotalBytesRead(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1354
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->totalBytesRead:Ljava/lang/Number;

    return-void
.end method
