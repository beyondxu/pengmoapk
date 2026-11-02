###### Class uts.sdk.modules.DCloudUniNetwork.ProgressRequestBody (uts.sdk.modules.DCloudUniNetwork.ProgressRequestBody)
.class public Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;",
        "Lokhttp3/RequestBody;",
        "requestBody",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;",
        "<init>",
        "(Lokhttp3/RequestBody;Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;)V",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "writeTo",
        "",
        "sink",
        "Lokio/BufferedSink;",
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
.field private listener:Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;

.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;)V
    .registers 4

    const-string v0, "requestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 408
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    .line 409
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->listener:Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 412
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 415
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    if-nez v0, :cond_e

    .line 417
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 419
    :cond_e
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/CountingSink;

    check-cast p1, Lokio/Sink;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    iget-object v2, p0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->listener:Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1, v2}, Luts/sdk/modules/DCloudUniNetwork/CountingSink;-><init>(Lokio/Sink;Ljava/lang/Number;Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;)V

    .line 424
    check-cast v0, Lokio/Sink;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 425
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 426
    :cond_28
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
