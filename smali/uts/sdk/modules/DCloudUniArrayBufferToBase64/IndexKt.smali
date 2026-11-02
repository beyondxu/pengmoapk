###### Class uts.sdk.modules.DCloudUniArrayBufferToBase64.IndexKt (uts.sdk.modules.DCloudUniArrayBufferToBase64.IndexKt)
.class public final Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002\"0\u0010\u0007\u001a!\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n*@\u0010\u0000\"\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "ArrayBufferToBase64",
        "Lkotlin/Function1;",
        "Lio/dcloud/uts/ArrayBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "arrayBuffer",
        "",
        "arrayBufferToBase64",
        "Luts/sdk/modules/DCloudUniArrayBufferToBase64/ArrayBufferToBase64;",
        "getArrayBufferToBase64",
        "()Lkotlin/jvm/functions/Function1;",
        "arrayBufferToBase64ByJs",
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
.method public static synthetic $r8$lambda$aAannnYh8RfCgbArI9VjsfSxDAg(Lio/dcloud/uts/ArrayBuffer;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;->arrayBufferToBase64$lambda$0(Lio/dcloud/uts/ArrayBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;->arrayBufferToBase64:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final arrayBufferToBase64$lambda$0(Lio/dcloud/uts/ArrayBuffer;)Ljava/lang/String;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lio/dcloud/uts/ArrayBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 20
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x2

    .line 21
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encodeToString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final arrayBufferToBase64ByJs(Lio/dcloud/uts/ArrayBuffer;)Ljava/lang/String;
    .registers 2

    const-string v0, "arrayBuffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;->arrayBufferToBase64:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
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

    .line 16
    sget-object v0, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;->arrayBufferToBase64:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniArrayBufferToBase64.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniArrayBufferToBase64.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/dcloud/uts/ArrayBuffer;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniArrayBufferToBase64/IndexKt;->$r8$lambda$aAannnYh8RfCgbArI9VjsfSxDAg(Lio/dcloud/uts/ArrayBuffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
