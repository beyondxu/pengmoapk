###### Class uts.sdk.modules.DCloudUniNetwork.SimpleUploadCallback (uts.sdk.modules.DCloudUniNetwork.SimpleUploadCallback)
.class public Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;",
        "Lokhttp3/Callback;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "exception",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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
.field private listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;


# direct methods
.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlin/Pair;

    .line 1830
    invoke-static {p1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 1831
    const-string v0, "statusCode"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1832
    const-string v0, "errorCode"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1833
    const-string v0, "errorMsg"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1834
    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1835
    new-instance v0, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v0, p2}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    const-string p2, "cause"

    invoke-virtual {p1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1836
    iget-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;

    if-eqz p2, :cond_41

    invoke-interface {p2, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_41
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlin/Pair;

    .line 1839
    invoke-static {p1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 1840
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, ""

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1841
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_32

    :cond_31
    const/4 p2, 0x0

    :goto_32
    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1842
    iget-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;

    if-eqz p2, :cond_3e

    invoke-interface {p2, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_3e
    return-void
.end method
