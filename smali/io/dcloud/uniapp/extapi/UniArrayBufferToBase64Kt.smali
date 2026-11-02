###### Class io.dcloud.uniapp.extapi.UniArrayBufferToBase64Kt (io.dcloud.uniapp.extapi.UniArrayBufferToBase64Kt)
.class public final Lio/dcloud/uniapp/extapi/UniArrayBufferToBase64Kt;
.super Ljava/lang/Object;
.source "uniArrayBufferToBase64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"0\u0010\u0000\u001a!\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "arrayBufferToBase64",
        "Lkotlin/Function1;",
        "Lio/dcloud/uts/ArrayBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "arrayBuffer",
        "",
        "Luts/sdk/modules/DCloudUniArrayBufferToBase64/ArrayBufferToBase64;",
        "getArrayBufferToBase64",
        "()Lkotlin/jvm/functions/Function1;",
        "uni-arrayBufferToBase64_release"
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
.field private static final arrayBufferToBase64:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/ArrayBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    invoke-static {}, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;->getArrayBufferToBase64()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniArrayBufferToBase64Kt;->arrayBufferToBase64:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getArrayBufferToBase64()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/ArrayBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lio/dcloud/uniapp/extapi/UniArrayBufferToBase64Kt;->arrayBufferToBase64:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
