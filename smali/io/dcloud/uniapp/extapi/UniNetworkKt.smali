###### Class io.dcloud.uniapp.extapi.UniNetworkKt (io.dcloud.uniapp.extapi.UniNetworkKt)
.class public final Lio/dcloud/uniapp/extapi/UniNetworkKt;
.super Ljava/lang/Object;
.source "uniNetwork.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nuniNetwork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 uniNetwork.kt\nio/dcloud/uniapp/extapi/UniNetworkKt\n+ 2 UTSAndroid.kt\nio/dcloud/uts/UTSAndroid\n*L\n1#1,55:1\n473#2:56\n477#2:57\n*S KotlinDebug\n*F\n+ 1 uniNetwork.kt\nio/dcloud/uniapp/extapi/UniNetworkKt\n*L\n49#1:56\n50#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010,\u001a\u00060\u001aj\u0002`-\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0016\u0010.\u001a\u0012\u0012\u0004\u0012\u0002H\u00010\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`/H\u0086\u0008\"0\u00100\u001a!\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(.\u0012\u0004\u0012\u00020\u001e01j\u0002`4\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106\"0\u00107\u001a!\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(.\u0012\u0004\u0012\u00020\"01j\u0002`8\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00106*\u001c\u0010\u0000\u001a\u0004\u0008\u0000\u0010\u0001\"\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0002*\u001c\u0010\u0003\u001a\u0004\u0008\u0000\u0010\u0001\"\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0004*\n\u0010\u0005\"\u00020\u00062\u00020\u0006*\n\u0010\u0007\"\u00020\u00082\u00020\u0008*\n\u0010\t\"\u00020\n2\u00020\n*\n\u0010\u000b\"\u00020\u000c2\u00020\u000c*\n\u0010\r\"\u00020\u000e2\u00020\u000e*\n\u0010\u000f\"\u00020\u00102\u00020\u0010*\n\u0010\u0011\"\u00020\u00122\u00020\u0012*\n\u0010\u0013\"\u00020\u00142\u00020\u0014*\n\u0010\u0015\"\u00020\u00162\u00020\u0016*\n\u0010\u0017\"\u00020\u00182\u00020\u0018*\n\u0010\u0019\"\u00020\u001a2\u00020\u001a*\n\u0010\u001b\"\u00020\u001c2\u00020\u001c*\n\u0010\u001d\"\u00020\u001e2\u00020\u001e*\n\u0010\u001f\"\u00020 2\u00020 *\n\u0010!\"\u00020\"2\u00020\"*\u000e\u0010#\"\u0002`$2\u00060%j\u0002`$*\u000e\u0010&\"\u0002`\'2\u00060(j\u0002`\'*\u000e\u0010)\"\u0002`*2\u00060+j\u0002`*\u00a8\u0006:"
    }
    d2 = {
        "RequestOptions",
        "T",
        "Luts/sdk/modules/DCloudUniNetwork/RequestOptions;",
        "RequestSuccess",
        "Luts/sdk/modules/DCloudUniNetwork/RequestSuccess;",
        "RequestTaskOnChunkReceivedListenerResult",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
        "RequestTaskOnHeadersReceivedListenerResult",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
        "UploadFileOptionFiles",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;",
        "UploadFileSuccess",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileSuccess;",
        "UploadFileOptions",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "OnProgressUpdateResult",
        "Luts/sdk/modules/DCloudUniNetwork/OnProgressUpdateResult;",
        "DownloadFileSuccess",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileSuccess;",
        "DownloadFileOptions",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
        "OnProgressDownloadResult",
        "Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;",
        "RequestFail",
        "Luts/sdk/modules/DCloudUniNetwork/RequestFail;",
        "RequestTask",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "UploadFileFail",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileFail;",
        "UploadTask",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "DownloadFileFail",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileFail;",
        "DownloadTask",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadTask;",
        "RequestMethod",
        "Luts/sdk/modules/DCloudUniNetwork/RequestMethod;",
        "",
        "RequestErrorCode",
        "Luts/sdk/modules/DCloudUniNetwork/RequestErrorCode;",
        "",
        "DownloadFileComplete",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileComplete;",
        "",
        "request",
        "Lio/dcloud/uniapp/extapi/RequestTask;",
        "options",
        "Lio/dcloud/uniapp/extapi/RequestOptions;",
        "uploadFile",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFile;",
        "getUploadFile",
        "()Lkotlin/jvm/functions/Function1;",
        "downloadFile",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFile;",
        "getDownloadFile",
        "uni-network_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final downloadFile:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final uploadFile:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
            "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getUploadFile()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniNetworkKt;->uploadFile:Lkotlin/jvm/functions/Function1;

    .line 54
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/IndexKt;->getDownloadFile()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniNetworkKt;->downloadFile:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getDownloadFile()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
            "Luts/sdk/modules/DCloudUniNetwork/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Lio/dcloud/uniapp/extapi/UniNetworkKt;->downloadFile:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getUploadFile()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
            "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lio/dcloud/uniapp/extapi/UniNetworkKt;->uploadFile:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic request(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Luts/sdk/modules/DCloudUniNetwork/RequestTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;)",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTask;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    .line 56
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericType$1;

    invoke-direct {v0}, Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericType$1;-><init>()V

    invoke-virtual {v0}, Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericType$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    .line 57
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericClassName$1;

    invoke-direct {v1}, Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericClassName$1;-><init>()V

    invoke-virtual {v1}, Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericClassName$1;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v2, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

    invoke-virtual {v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;->getInstance()Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    move-result-object v2

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;

    invoke-direct {v3, p0, v0, v1}, Luts/sdk/modules/DCloudUniNetwork/RequestNetworkListener;-><init>(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    invoke-virtual {v2, p0, v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->request(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    move-result-object p0

    return-object p0
.end method

###### Class io.dcloud.uniapp.extapi.UniNetworkKt$request$$inlined$getGenericClassName$1 (io.dcloud.uniapp.extapi.UniNetworkKt$request$$inlined$getGenericClassName$1)
.class public final Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericClassName$1;
.super Lio/dcloud/uts/gson/reflect/TypeToken;
.source "UTSAndroid.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uniapp/extapi/UniNetworkKt;->request(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Luts/sdk/modules/DCloudUniNetwork/RequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/reflect/TypeToken<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSAndroid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSAndroid.kt\nio/dcloud/uts/UTSAndroid$getGenericClassName$1\n*L\n1#1,1114:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a8\u0006\u0002\u00b8\u0006\u0000"
    }
    d2 = {
        "io/dcloud/uts/UTSAndroid$getGenericClassName$1",
        "Lio/dcloud/uts/gson/reflect/TypeToken;",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 477
    invoke-direct {p0}, Lio/dcloud/uts/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class io.dcloud.uniapp.extapi.UniNetworkKt$request$$inlined$getGenericType$1 (io.dcloud.uniapp.extapi.UniNetworkKt$request$$inlined$getGenericType$1)
.class public final Lio/dcloud/uniapp/extapi/UniNetworkKt$request$$inlined$getGenericType$1;
.super Lio/dcloud/uts/gson/reflect/TypeToken;
.source "UTSAndroid.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uniapp/extapi/UniNetworkKt;->request(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Luts/sdk/modules/DCloudUniNetwork/RequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/reflect/TypeToken<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSAndroid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSAndroid.kt\nio/dcloud/uts/UTSAndroid$getGenericType$1\n*L\n1#1,1114:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a8\u0006\u0002\u00b8\u0006\u0000"
    }
    d2 = {
        "io/dcloud/uts/UTSAndroid$getGenericType$1",
        "Lio/dcloud/uts/gson/reflect/TypeToken;",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Lio/dcloud/uts/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
