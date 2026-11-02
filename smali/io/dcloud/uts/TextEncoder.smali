###### Class io.dcloud.uts.TextEncoder (io.dcloud.uts.TextEncoder)
.class public final Lio/dcloud/uts/TextEncoder;
.super Ljava/lang/Object;
.source "TextEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/dcloud/uts/TextEncoder;",
        "",
        "<init>",
        "()V",
        "encoding",
        "",
        "getEncoding",
        "()Ljava/lang/String;",
        "encode",
        "Lio/dcloud/uts/Uint8Array;",
        "input",
        "utsplugin_release"
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
.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "utf-8"

    iput-object v0, p0, Lio/dcloud/uts/TextEncoder;->encoding:Ljava/lang/String;

    return-void
.end method

.method public static synthetic encode$default(Lio/dcloud/uts/TextEncoder;Ljava/lang/String;ILjava/lang/Object;)Lio/dcloud/uts/Uint8Array;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 5
    :cond_5
    invoke-virtual {p0, p1}, Lio/dcloud/uts/TextEncoder;->encode(Ljava/lang/String;)Lio/dcloud/uts/Uint8Array;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Ljava/lang/String;)Lio/dcloud/uts/Uint8Array;
    .registers 7

    if-eqz p1, :cond_e

    .line 6
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 7
    :goto_f
    new-instance v0, Lio/dcloud/uts/Uint8Array;

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    array-length v2, p1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-direct {v0, v2}, Lio/dcloud/uts/Uint8Array;-><init>(Ljava/lang/Number;)V

    if-eqz p1, :cond_39

    .line 9
    array-length v2, p1

    :goto_23
    if-ge v1, v2, :cond_39

    aget-byte v3, p1, v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v0, v4, v3}, Lio/dcloud/uts/Uint8Array;->set(Ljava/lang/Number;Ljava/lang/Number;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_39
    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lio/dcloud/uts/TextEncoder;->encoding:Ljava/lang/String;

    return-object v0
.end method
