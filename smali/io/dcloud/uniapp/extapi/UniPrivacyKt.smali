###### Class io.dcloud.uniapp.extapi.UniPrivacyKt (io.dcloud.uniapp.extapi.UniPrivacyKt)
.class public final Lio/dcloud/uniapp/extapi/UniPrivacyKt;
.super Ljava/lang/Object;
.source "uniPrivacy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"^\u0010\r\u001aO\u0012A\u0012?\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008j\u0011`\u0007\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000e\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0008j\u0002`\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"0\u0010\u0013\u001a!\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u000c0\u0008j\u0002`\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"0\u0010\u0017\u001a!\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u000c0\u0008j\u0002`\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012\"\u001b\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00020\u000c0\u001cj\u0002`\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u001b\u0010 \u001a\u000c\u0012\u0004\u0012\u00020\u000c0\u001cj\u0002`!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001f*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005*)\u0010\u0006\"\u0002`\u00072!\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008j\u0002`\u0007\u00a8\u0006#"
    }
    d2 = {
        "PrivacyChangeResult",
        "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
        "GetPrivacySettingSuccessResult",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;",
        "GetPrivacySettingOptions",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;",
        "OnPrivacyAuthorizationChangeCallback",
        "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChangeCallback;",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "onPrivacyAuthorizationChange",
        "callback",
        "",
        "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChange;",
        "getOnPrivacyAuthorizationChange",
        "()Lkotlin/jvm/functions/Function1;",
        "offPrivacyAuthorizationChange",
        "id",
        "Luts/sdk/modules/DCloudUniPrivacy/OffPrivacyAuthorizationChange;",
        "getOffPrivacyAuthorizationChange",
        "getPrivacySetting",
        "options",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySetting;",
        "getGetPrivacySetting",
        "resetPrivacyAuthorization",
        "Lkotlin/Function0;",
        "Luts/sdk/modules/DCloudUniPrivacy/ResetPrivacyAuthorization;",
        "getResetPrivacyAuthorization",
        "()Lkotlin/jvm/functions/Function0;",
        "agreePrivacyAuthorization",
        "Luts/sdk/modules/DCloudUniPrivacy/AgreePrivacyAuthorization;",
        "getAgreePrivacyAuthorization",
        "uni-privacy_release"
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
.field private static final agreePrivacyAuthorization:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getPrivacySetting:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final offPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final resetPrivacyAuthorization:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getOnPrivacyAuthorizationChange()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->onPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    .line 18
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getOffPrivacyAuthorizationChange()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->offPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    .line 19
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getGetPrivacySetting()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->getPrivacySetting:Lkotlin/jvm/functions/Function1;

    .line 20
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getResetPrivacyAuthorization()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->resetPrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    .line 21
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getAgreePrivacyAuthorization()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->agreePrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final getAgreePrivacyAuthorization()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->agreePrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getGetPrivacySetting()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->getPrivacySetting:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getOffPrivacyAuthorizationChange()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Number;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->offPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getOnPrivacyAuthorizationChange()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->onPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getResetPrivacyAuthorization()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lio/dcloud/uniapp/extapi/UniPrivacyKt;->resetPrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
