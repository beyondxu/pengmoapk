###### Class io.dcloud.uniapp.extapi.UniStorageKt (io.dcloud.uniapp.extapi.UniStorageKt)
.class public final Lio/dcloud/uniapp/extapi/UniStorageKt;
.super Ljava/lang/Object;
.source "uniStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"0\u0010\u0014\u001a!\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"E\u0010\u001d\u001a6\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u00020\u00190\u001ej\u0002`#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\"0\u0010&\u001a!\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001c\"2\u0010)\u001a#\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008( \u0012\u0006\u0012\u0004\u0018\u00010!0\u0015j\u0002`*\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001c\"0\u0010,\u001a!\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001c\"\u001b\u0010/\u001a\u000c\u0012\u0004\u0012\u00020\t00j\u0002`1\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103\"0\u00104\u001a!\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`5\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u001c\"0\u00107\u001a!\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00190\u0015j\u0002`8\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u001c\"2\u0010:\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(;\u0012\u0004\u0012\u00020\u00190\u0015j\u0002`<\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u001c\"\u001b\u0010>\u001a\u000c\u0012\u0004\u0012\u00020\u001900j\u0002`?\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u00103*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*\n\u0010\u0006\"\u00020\u00072\u00020\u0007*\n\u0010\u0008\"\u00020\t2\u00020\t*\n\u0010\n\"\u00020\u000b2\u00020\u000b*\n\u0010\u000c\"\u00020\r2\u00020\r*\n\u0010\u000e\"\u00020\u000f2\u00020\u000f*\n\u0010\u0010\"\u00020\u00112\u00020\u0011*\n\u0010\u0012\"\u00020\u00132\u00020\u0013\u00a8\u0006A"
    }
    d2 = {
        "SetStorageSuccess",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
        "SetStorageOptions",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
        "GetStorageSuccess",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;",
        "GetStorageOptions",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
        "GetStorageInfoSuccess",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
        "GetStorageInfoOptions",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;",
        "RemoveStorageSuccess",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
        "RemoveStorageOptions",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
        "ClearStorageSuccess",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;",
        "ClearStorageOptions",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;",
        "setStorage",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "options",
        "",
        "Luts/sdk/modules/DCloudUniStorage/SetStorage;",
        "getSetStorage",
        "()Lkotlin/jvm/functions/Function1;",
        "setStorageSync",
        "Lkotlin/Function2;",
        "",
        "key",
        "",
        "data",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageSync;",
        "getSetStorageSync",
        "()Lkotlin/jvm/functions/Function2;",
        "getStorage",
        "Luts/sdk/modules/DCloudUniStorage/GetStorage;",
        "getGetStorage",
        "getStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageSync;",
        "getGetStorageSync",
        "getStorageInfo",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfo;",
        "getGetStorageInfo",
        "getStorageInfoSync",
        "Lkotlin/Function0;",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSync;",
        "getGetStorageInfoSync",
        "()Lkotlin/jvm/functions/Function0;",
        "removeStorage",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorage;",
        "getRemoveStorage",
        "removeStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSync;",
        "getRemoveStorageSync",
        "clearStorage",
        "option",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorage;",
        "getClearStorage",
        "clearStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageSync;",
        "getClearStorageSync",
        "uni-storage_release"
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
.field private static final clearStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final clearStorageSync:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorageInfo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorageInfoSync:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorageSync:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final removeStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final removeStorageSync:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final setStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final setStorageSync:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getSetStorage()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->setStorage:Lkotlin/jvm/functions/Function1;

    .line 35
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getSetStorageSync()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->setStorageSync:Lkotlin/jvm/functions/Function2;

    .line 36
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getGetStorage()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorage:Lkotlin/jvm/functions/Function1;

    .line 37
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getGetStorageSync()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorageSync:Lkotlin/jvm/functions/Function1;

    .line 38
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getGetStorageInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorageInfo:Lkotlin/jvm/functions/Function1;

    .line 39
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getGetStorageInfoSync()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorageInfoSync:Lkotlin/jvm/functions/Function0;

    .line 40
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getRemoveStorage()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->removeStorage:Lkotlin/jvm/functions/Function1;

    .line 41
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getRemoveStorageSync()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->removeStorageSync:Lkotlin/jvm/functions/Function1;

    .line 42
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getClearStorage()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->clearStorage:Lkotlin/jvm/functions/Function1;

    .line 43
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getClearStorageSync()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->clearStorageSync:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final getClearStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->clearStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getClearStorageSync()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->clearStorageSync:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getGetStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getGetStorageInfo()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorageInfo:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getGetStorageInfoSync()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorageInfoSync:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getGetStorageSync()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->getStorageSync:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getRemoveStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->removeStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getRemoveStorageSync()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->removeStorageSync:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getSetStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->setStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getSetStorageSync()Lkotlin/jvm/functions/Function2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lio/dcloud/uniapp/extapi/UniStorageKt;->setStorageSync:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
