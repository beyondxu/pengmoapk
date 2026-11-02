###### Class uts.sdk.modules.DCloudUniNetwork.SimpleCallback (uts.sdk.modules.DCloudUniNetwork.SimpleCallback)
.class public Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B-\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010$\u001a\u00020%H\u0016J\u001e\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u001e\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J&\u0010,\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J&\u0010.\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0018\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\'2\u0006\u00101\u001a\u00020\'H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\'H\u0002J\u0010\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\'H\u0002J\u0010\u00106\u001a\u00020\u00072\u0006\u00104\u001a\u00020\'H\u0002J\u0010\u00107\u001a\u00020\u00072\u0006\u00104\u001a\u00020\'H\u0002J\u0018\u00108\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00109\u001a\u00020\'H\u0002J \u0010:\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\'2\u0006\u0010<\u001a\u00020\'H\u0002J\u001e\u0010=\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\'0?H\u0002J\u001e\u0010@\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\'0?H\u0002R+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R+\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R+\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00078B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;",
        "Lokhttp3/Callback;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "requestTask",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
        "enableChunked",
        "",
        "looper",
        "Landroid/os/Looper;",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V",
        "<set-?>",
        "getListener",
        "()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "setListener",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)V",
        "listener$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "getRequestTask",
        "()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
        "setRequestTask",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;)V",
        "requestTask$delegate",
        "getEnableChunked",
        "()Z",
        "setEnableChunked",
        "(Z)V",
        "enableChunked$delegate",
        "onResponse",
        "",
        "call",
        "Lokhttp3/Call;",
        "response",
        "Lokhttp3/Response;",
        "onFailure",
        "e",
        "Ljava/io/IOException;",
        "readInputStreamAsBytes",
        "",
        "inputSteam",
        "Ljava/io/InputStream;",
        "readInputStream",
        "",
        "processStreamWithOkio",
        "inputStream",
        "processChunkedResponse",
        "isValidChunk",
        "sizeLine",
        "dataLine",
        "parseHexSize",
        "",
        "lineData",
        "isHexadecimalLine",
        "isZeroChunk",
        "isEmptyLine",
        "sendData",
        "data",
        "sendCombinedData",
        "data1",
        "data2",
        "processPendingLines",
        "pendingLines",
        "Lio/dcloud/uts/UTSArray;",
        "processLinePair",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final listener$delegate:Lkotlin/properties/ReadWriteProperty;

.field private looper:Landroid/os/Looper;

.field private final requestTask$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method public static synthetic $r8$lambda$3ERxP-8ZrkHejc2uS6K2IAgM_H4(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CW6JUZELM2KeqXW_zPn49UMhHjA(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->onResponse$lambda$0(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S_8NCAwpDYthdO2DWNdA614fIsQ(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio$lambda$3(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$opjbO3tI0cIhoYVlnuHy327-0Ag(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio$lambda$3$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qBx3L25qGvoju629JdADs1dJW8c(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio$lambda$1(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "listener"

    const-string v3, "getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;"

    const-class v4, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "requestTask"

    const-string v3, "getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "enableChunked"

    const-string v3, "getEnableChunked()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V
    .registers 6

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->listener$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1359
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->requestTask$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1360
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1363
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->setListener(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)V

    .line 1364
    invoke-direct {p0, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->setRequestTask(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;)V

    .line 1365
    invoke-direct {p0, p3}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->setEnableChunked(Z)V

    .line 1366
    iput-object p4, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->looper:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 1362
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V

    return-void
.end method

.method private final getEnableChunked()Z
    .registers 4

    .line 1360
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;
    .registers 4

    .line 1358
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->listener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    return-object v0
.end method

.method private final getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;
    .registers 4

    .line 1359
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->requestTask$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    return-object v0
.end method

.method private final isEmptyLine([B)Z
    .registers 5

    .line 1774
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    aget-byte v0, p1, v2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    aget-byte p1, p1, v0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method private final isHexadecimalLine([B)Z
    .registers 8

    .line 1721
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_6

    return v1

    .line 1724
    :cond_6
    array-length v0, p1

    sub-int/2addr v0, v2

    if-gtz v0, :cond_b

    return v1

    .line 1729
    :cond_b
    move-object v2, p0

    check-cast v2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v2, v0, :cond_39

    .line 1732
    aget-byte v4, p1, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_39

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_39

    const/16 v3, 0x30

    if-lt v4, v3, :cond_24

    const/16 v3, 0x39

    if-le v4, v3, :cond_34

    :cond_24
    const/16 v3, 0x41

    if-lt v4, v3, :cond_2c

    const/16 v3, 0x46

    if-le v4, v3, :cond_34

    :cond_2c
    const/16 v3, 0x61

    if-lt v4, v3, :cond_38

    const/16 v3, 0x66

    if-gt v4, v3, :cond_38

    :cond_34
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_10

    :cond_38
    return v1

    :cond_39
    return v3
.end method

.method private final isValidChunk([B[B)Z
    .registers 5

    .line 1684
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isHexadecimalLine([B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1687
    :cond_8
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->parseHexSize([B)I

    move-result p1

    if-gez p1, :cond_f

    return v1

    .line 1691
    :cond_f
    array-length p2, p2

    const/4 v0, 0x2

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    .line 1692
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lio/dcloud/uts/Math;->abs(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, p2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1

    if-gtz p1, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    return v1
.end method

.method private final isZeroChunk([B)Z
    .registers 11

    .line 1747
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    return v1

    .line 1750
    :cond_6
    aget-byte v0, p1, v1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x1

    .line 1753
    aget-byte v3, p1, v0

    const/16 v4, 0x3b

    const/16 v5, 0xd

    if-eq v3, v4, :cond_19

    if-eq v3, v5, :cond_19

    return v1

    :cond_19
    const/16 v6, 0xa

    const/4 v7, 0x2

    if-ne v3, v5, :cond_27

    .line 1757
    array-length v8, p1

    if-lt v8, v2, :cond_27

    .line 1758
    aget-byte p1, p1, v7

    if-ne p1, v6, :cond_26

    return v0

    :cond_26
    return v1

    :cond_27
    if-ne v3, v4, :cond_3e

    .line 1761
    move-object v2, p0

    check-cast v2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    .line 1763
    :goto_2c
    array-length v2, p1

    sub-int/2addr v2, v0

    if-ge v7, v2, :cond_3e

    .line 1764
    aget-byte v2, p1, v7

    if-ne v2, v5, :cond_3b

    add-int/lit8 v2, v7, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v6, :cond_3b

    return v0

    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_3e
    return v1
.end method

.method private static final onResponse$lambda$0(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1382
    new-instance p3, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;

    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    invoke-virtual {v0, p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;->parseCookie(Lio/dcloud/uts/UTSJSONObject;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {p3, v0, p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;-><init>(Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;)V

    .line 1383
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final parseHexSize([B)I
    .registers 10

    .line 1695
    array-length v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_6

    return v1

    .line 1698
    :cond_6
    array-length v0, p1

    sub-int/2addr v0, v2

    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1700
    move-object v3, p0

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v0, :cond_32

    .line 1703
    aget-byte v5, p1, v4

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_1b

    goto :goto_32

    .line 1706
    :cond_1b
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Number;

    aget-byte v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lio/dcloud/uts/StringKt;->fromCharCode(Lkotlin/jvm/internal/StringCompanionObject;[Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1710
    :cond_32
    :goto_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_39

    return v1

    .line 1714
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_53

    return p1

    :catch_53
    return v1
.end method

.method private final processChunkedResponse(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v2, :cond_c

    return-object v4

    .line 1593
    :cond_c
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1594
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0xa

    .line 1595
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 1596
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    .line 1598
    new-instance v11, Lio/dcloud/uts/UTSArray;

    invoke-direct {v11}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1601
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object v14, v4

    const/4 v13, 0x0

    const/4 v15, -0x1

    .line 1604
    :goto_2c
    :try_start_2c
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v16
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_18b
    .catchall {:try_start_2c .. :try_end_30} :catchall_180

    move-object/from16 v17, v4

    :try_start_32
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, -0x1

    .line 1605
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_44

    goto/16 :goto_141

    .line 1608
    :cond_44
    move-object v12, v4

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v5, v8, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1609
    move-object v12, v4

    check-cast v12, Ljava/lang/Number;

    invoke-static {v10, v12}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v10

    if-eqz v3, :cond_5a

    .line 1611
    invoke-virtual {v3, v10}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    .line 1613
    :cond_5a
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v12

    invoke-virtual {v12}, Lio/dcloud/uts/Map;->size()I

    move-result v12

    if-lez v12, :cond_136

    .line 1614
    move-object v12, v1

    check-cast v12, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    .line 1615
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    .line 1616
    :goto_6d
    move-object v9, v4

    check-cast v9, Ljava/lang/Number;

    invoke-static {v12, v9}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v9

    if-gez v9, :cond_136

    .line 1617
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v9

    aget-byte v9, v8, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    const/16 v18, 0xff

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/Number;

    invoke-static {v9, v7}, Lio/dcloud/uts/NumberKt;->and(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 1618
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v9, 0xd

    if-ne v15, v9, :cond_128

    const/16 v9, 0xa

    if-ne v7, v9, :cond_128

    .line 1620
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 1621
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isZeroChunk([B)Z

    move-result v18

    if-eqz v18, :cond_bb

    if-nez v13, :cond_bb

    .line 1623
    array-length v13, v15

    new-array v14, v13, [B

    .line 1624
    array-length v13, v15

    const/4 v9, 0x0

    const/16 v18, 0x1

    invoke-static {v15, v9, v14, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto :goto_124

    :cond_bb
    const/16 v18, 0x1

    if-eqz v13, :cond_fa

    .line 1626
    invoke-direct {v1, v0, v11}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    .line 1627
    new-instance v11, Lio/dcloud/uts/UTSArray;

    invoke-direct {v11}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1628
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isEmptyLine([B)Z

    move-result v13

    if-eqz v13, :cond_da

    .line 1629
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0, v14, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendCombinedData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B[B)V

    goto :goto_f5

    .line 1631
    :cond_da
    array-length v13, v15

    new-array v13, v13, [B

    .line 1632
    array-length v9, v15

    const/4 v2, 0x0

    invoke-static {v15, v2, v13, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1634
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x2

    .line 1635
    new-array v9, v9, [[B

    aput-object v14, v9, v2

    aput-object v13, v9, v18

    .line 1634
    check-cast v9, [Ljava/lang/Object;

    .line 1633
    invoke-static {v9}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processLinePair(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    :goto_f5
    move-object/from16 v14, v17

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_124

    .line 1641
    :cond_fa
    array-length v2, v15

    new-array v2, v2, [B

    .line 1642
    array-length v9, v15

    const/4 v3, 0x0

    invoke-static {v15, v3, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    .line 1643
    new-array v9, v9, [[B

    aput-object v2, v9, v3

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v11, v9}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    .line 1644
    invoke-virtual {v11}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v2

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 1645
    invoke-direct {v1, v0, v11}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processLinePair(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    .line 1646
    new-instance v11, Lio/dcloud/uts/UTSArray;

    invoke-direct {v11}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1649
    :cond_124
    :goto_124
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_129

    :cond_128
    const/4 v3, 0x0

    .line 1652
    :goto_129
    invoke-static {v12}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v15, v7

    const/16 v7, 0xa

    goto/16 :goto_6d

    :cond_136
    const/4 v3, 0x0

    .line 1657
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 1658
    :goto_141
    invoke-direct {v1, v0, v11}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    if-eqz v13, :cond_14b

    if-eqz v14, :cond_14b

    .line 1660
    invoke-direct {v1, v0, v14}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V

    .line 1662
    :cond_14b
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/uts/Map;->size()I

    move-result v2

    if-lez v2, :cond_167

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_167

    .line 1663
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "toByteArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V

    .line 1665
    :cond_167
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1666
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_16e} :catch_18d
    .catchall {:try_start_32 .. :try_end_16e} :catchall_180

    .line 1674
    :try_start_16e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1677
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_174} :catch_174

    :catch_174
    return-object v0

    :cond_175
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    const/16 v7, 0xa

    const/4 v9, 0x0

    goto/16 :goto_2c

    :catchall_180
    move-exception v0

    .line 1674
    :try_start_181
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1677
    move-object v2, v6

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18a} :catch_18a

    .line 1680
    :catch_18a
    throw v0

    :catch_18b
    move-object/from16 v17, v4

    .line 1674
    :catch_18d
    :try_start_18d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1677
    move-object v0, v6

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_196} :catch_196

    :catch_196
    return-object v17
.end method

.method private final processLinePair(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
            "Lio/dcloud/uts/UTSArray<",
            "[B>;)V"
        }
    .end annotation

    .line 1814
    invoke-virtual {p2}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 1817
    invoke-virtual {p2, v0}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [B

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [B

    invoke-direct {p0, v1, v4}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isValidChunk([B[B)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1818
    invoke-virtual {p2, v0}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [B

    invoke-virtual {p2, v3}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [B

    invoke-direct {p0, p1, v0, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendCombinedData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B[B)V

    return-void

    .line 1820
    :cond_42
    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    return-void
.end method

.method private final processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
            "Lio/dcloud/uts/UTSArray<",
            "[B>;)V"
        }
    .end annotation

    .line 1802
    invoke-virtual {p2}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2d

    .line 1805
    :cond_10
    move-object v0, p0

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    .line 1806
    check-cast v1, Ljava/lang/Number;

    .line 1807
    :goto_15
    invoke-virtual {p2}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_2d

    .line 1808
    invoke-virtual {p2, v1}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V

    .line 1809
    invoke-static {v1}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    goto :goto_15

    :cond_2d
    :goto_2d
    return-void
.end method

.method private final processStreamWithOkio(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B
    .registers 16

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1469
    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1470
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-direct {v3}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;-><init>()V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1471
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    .line 1474
    :try_start_23
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;

    invoke-direct {v7, p2, v3, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;-><init>(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_131
    .catchall {:try_start_23 .. :try_end_2d} :catchall_10b

    .line 1523
    :try_start_2d
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_30
    const-wide/16 v7, 0x64

    .line 1525
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    const/4 p2, 0x0

    .line 1528
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    .line 1529
    iget-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_43} :catch_109
    .catchall {:try_start_2d .. :try_end_43} :catchall_106

    .line 1531
    :try_start_43
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v8}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getHasNewData()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 1532
    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v7}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1533
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v8}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getTotalBytesRead()Ljava/lang/Number;

    move-result-object v8

    .line 1534
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1535
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9, p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setHasNewData(Z)V

    goto :goto_76

    :cond_74
    move-object v8, v7

    move-object v7, v0

    .line 1537
    :goto_76
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->isStreamEnded()Z

    move-result v9

    if-eqz v9, :cond_8c

    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getHasNewData()Z

    move-result v9
    :try_end_88
    .catchall {:try_start_43 .. :try_end_88} :catchall_fd

    if-nez v9, :cond_8c

    const/4 v9, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v9, 0x0

    .line 1542
    :goto_8d
    :try_start_8d
    iget-object v10, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v7, :cond_d1

    .line 1544
    array-length v10, v7

    if-lez v10, :cond_d1

    .line 1545
    array-length v10, v7

    invoke-virtual {v1, v7, p2, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1546
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/uts/Map;->size()I

    move-result p2

    if-lez p2, :cond_cc

    .line 1547
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v10, Lio/dcloud/uts/ArrayBuffer;->Companion:Lio/dcloud/uts/ArrayBuffer$Companion;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v11, "wrap(...)"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lio/dcloud/uts/ArrayBuffer$Companion;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lio/dcloud/uts/ArrayBuffer;

    move-result-object v7

    iput-object v7, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1548
    new-instance v7, Luts/sdk/modules/DCloudUniNetwork/RunnableTask;

    iget-object v10, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->looper:Landroid/os/Looper;

    .line 1554
    new-instance v11, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;

    invoke-direct {v11, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 1548
    invoke-direct {v7, v10, v11}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 1554
    invoke-virtual {v7}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask;->execute()V

    :cond_cc
    if-eqz p3, :cond_d1

    .line 1557
    invoke-virtual {p3, v8}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    :cond_d1
    if-eqz v9, :cond_30

    .line 1564
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1565
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_da} :catch_109
    .catchall {:try_start_8d .. :try_end_da} :catchall_106

    .line 1572
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1574
    :try_start_dd
    invoke-virtual {v6, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_e0} :catch_e0

    .line 1579
    :catch_e0
    :try_start_e0
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p2, :cond_f9

    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    if-eqz p2, :cond_f9

    .line 1580
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1583
    :cond_f9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_fc} :catch_fc

    :catch_fc
    return-object p1

    :catchall_fd
    move-exception p1

    .line 1542
    :try_start_fe
    iget-object p2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_106} :catch_109
    .catchall {:try_start_fe .. :try_end_106} :catchall_106

    :catchall_106
    move-exception p1

    move-object v0, v6

    goto :goto_10c

    :catch_109
    nop

    goto :goto_133

    :catchall_10b
    move-exception p1

    :goto_10c
    if-eqz v0, :cond_114

    .line 1572
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1574
    :try_start_111
    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_114
    .catch Ljava/lang/InterruptedException; {:try_start_111 .. :try_end_114} :catch_114

    .line 1579
    :catch_114
    :cond_114
    :try_start_114
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p2, :cond_12d

    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    if-eqz p2, :cond_12d

    .line 1580
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1583
    :cond_12d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_130} :catch_130

    .line 1586
    :catch_130
    throw p1

    :catch_131
    nop

    move-object v6, v0

    :goto_133
    if-eqz v6, :cond_13b

    .line 1572
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1574
    :try_start_138
    invoke-virtual {v6, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_13b
    .catch Ljava/lang/InterruptedException; {:try_start_138 .. :try_end_13b} :catch_13b

    .line 1579
    :catch_13b
    :cond_13b
    :try_start_13b
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_154

    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    if-eqz p1, :cond_154

    .line 1580
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1583
    :cond_154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_157} :catch_157

    :catch_157
    return-object v0
.end method

.method private static final processStreamWithOkio$lambda$1(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1476
    :try_start_1
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    .line 1477
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    .line 1478
    :goto_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 1479
    invoke-interface {p0}, Lokio/BufferedSource;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1480
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_9f

    .line 1482
    :try_start_1c
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setStreamEnded(Z)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_2b

    .line 1485
    :try_start_23
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_2b
    move-exception p0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_34
    const/16 v1, 0x2000

    .line 1489
    new-array v1, v1, [B

    .line 1490
    invoke-interface {p0, v1}, Lokio/BufferedSource;->read([B)I

    move-result v2

    if-gtz v2, :cond_5d

    .line 1492
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_45} :catch_9f

    .line 1494
    :try_start_45
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setStreamEnded(Z)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_54

    .line 1497
    :try_start_4c
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_54
    move-exception p0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    .line 1501
    :cond_5d
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_64} :catch_9f

    .line 1503
    :try_start_64
    iget-object v3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1504
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getTotalBytesRead()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v3, v2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setTotalBytesRead(Ljava/lang/Number;)V

    .line 1505
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setHasNewData(Z)V
    :try_end_8c
    .catchall {:try_start_64 .. :try_end_8c} :catchall_95

    .line 1508
    :try_start_8c
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_9

    :catchall_95
    move-exception p0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9e} :catch_9f

    :cond_9e
    return-void

    .line 1513
    :catch_9f
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1515
    :try_start_a6
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setStreamEnded(Z)V
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_b5

    .line 1518
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_b5
    move-exception p0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private static final processStreamWithOkio$lambda$3(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/ArrayBuffer;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1549
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p0

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1553
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final processStreamWithOkio$lambda$3$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/ArrayBuffer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1550
    new-instance p2, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/uts/ArrayBuffer;

    invoke-direct {p2, p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;-><init>(Lio/dcloud/uts/ArrayBuffer;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final readInputStream(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1447
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x800

    .line 1449
    new-array p1, p1, [C

    .line 1451
    :cond_19
    :goto_19
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    .line 1461
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_28
    const/4 v3, 0x0

    .line 1455
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_19

    .line 1457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {p2, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    goto :goto_19
.end method

.method private final readInputStreamAsBytes(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B
    .registers 10

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1425
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 1426
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/16 v3, 0x800

    .line 1427
    new-array v4, v3, [B

    .line 1429
    :cond_14
    :goto_14
    invoke-virtual {p1, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_23

    .line 1440
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1441
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 1433
    :cond_23
    invoke-virtual {v0, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1434
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v2, v5}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    if-eqz p2, :cond_14

    .line 1436
    invoke-virtual {p2, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    goto :goto_14
.end method

.method private final sendCombinedData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B[B)V
    .registers 7

    .line 1785
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1787
    :try_start_5
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1788
    array-length p2, p3

    invoke-virtual {v0, p3, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1789
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 1790
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 1795
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void

    :catchall_1c
    move-exception p1

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_20

    .line 1798
    :catch_20
    throw p1
.end method

.method private final sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V
    .registers 6

    .line 1777
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lio/dcloud/uts/ArrayBuffer;->Companion:Lio/dcloud/uts/ArrayBuffer$Companion;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string v2, "wrap(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lio/dcloud/uts/ArrayBuffer$Companion;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lio/dcloud/uts/ArrayBuffer;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1778
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p1

    new-instance p2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final sendData$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/ArrayBuffer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1779
    new-instance p2, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/uts/ArrayBuffer;

    invoke-direct {p2, p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;-><init>(Lio/dcloud/uts/ArrayBuffer;)V

    .line 1780
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setEnableChunked(Z)V
    .registers 5

    .line 1360
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setListener(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)V
    .registers 5

    .line 1358
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->listener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setRequestTask(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;)V
    .registers 5

    .line 1359
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->requestTask$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1411
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 1412
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 1413
    const-string v1, "statusCode"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1414
    const-string v1, "errorCode"

    const-string v2, "602001"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1415
    const-string v1, "errorMsg"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1416
    const-string v1, "cause"

    invoke-virtual {v0, v1, p2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_36

    .line 1418
    invoke-virtual {p1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_36
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 9

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "headers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    .line 1371
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    .line 1372
    invoke-static {v2}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v2

    .line 1373
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const-string v4, ""

    invoke-static {v3, v4}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "statusCode"

    invoke-virtual {v2, v4, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1374
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1376
    iget v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onHeadersReceived(Ljava/lang/Number;Ljava/util/Map;)V

    .line 1378
    :cond_50
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    move-result-object v4

    invoke-virtual {v4}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getHeadersReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v4

    .line 1379
    invoke-virtual {v4}, Lio/dcloud/uts/Map;->size()I

    move-result v5

    if-lez v5, :cond_6f

    .line 1380
    sget-object v5, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;->convertHeaders(Ljava/util/Map;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 1381
    new-instance v5, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v4, v5}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1387
    :cond_6f
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1388
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getEnableChunked()Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "chunked"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    const/4 v1, 0x1

    .line 1390
    :cond_92
    :try_start_92
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_ce

    if-eqz p2, :cond_b8

    .line 1391
    const-string p2, "originalData"

    if-eqz v1, :cond_ac

    .line 1392
    :try_start_9c
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    move-result-object v0

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c5

    .line 1394
    :cond_ac
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->readInputStreamAsBytes(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c5

    .line 1397
    :cond_b8
    const-string p2, "errorMsg"

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->readInputStream(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c5
    if-eqz v3, :cond_ca

    .line 1400
    invoke-virtual {v3, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V
    :try_end_ca
    .catchall {:try_start_9c .. :try_end_ca} :catchall_ce

    .line 1405
    :cond_ca
    :try_start_ca
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_cd

    :catch_cd
    return-void

    :catchall_ce
    move-exception p2

    :try_start_cf
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d2

    .line 1407
    :catch_d2
    throw p2
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/UTSJSONObject;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSJSONObject;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSJSONObject;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, v1, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$r8$lambda$CW6JUZELM2KeqXW_zPn49UMhHjA(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$r8$lambda$3ERxP-8ZrkHejc2uS6K2IAgM_H4(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$r8$lambda$opjbO3tI0cIhoYVlnuHy327-0Ag(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$r8$lambda$qBx3L25qGvoju629JdADs1dJW8c(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda4 (uts.sdk.modules.DCloudUniNetwork.SimpleCallback$$ExternalSyntheticLambda4)
.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;->f$0:Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;->f$0:Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$r8$lambda$S_8NCAwpDYthdO2DWNdA614fIsQ(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
