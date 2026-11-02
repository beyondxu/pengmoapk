###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt (uts.sdk.modules.DCloudUniPrivacy.IndexKt)
.class public final Luts/sdk/modules/DCloudUniPrivacy/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniPrivacy/IndexKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniPrivacy/IndexKt\n*L\n48#1:108,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000e\u00105\u001a\u00020\t2\u0006\u0010\u000f\u001a\u000206\u001a\u0006\u00107\u001a\u00020\t\u001a\u000e\u00108\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u000209\u001a\u000e\u0010:\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006\u001a\u0006\u0010;\u001a\u00020\t\"0\u0010\u0019\u001a!\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\t0\u0001j\u0002`\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u001b\u0010\u001d\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0017j\u0002`\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \"<\u0010!\u001a-\u0012\u0004\u0012\u00020\u0006\u0012#\u0012!\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0001j\u0002`\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\"\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\"\u001d\u0010)\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\t0\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001c\"^\u0010,\u001aO\u0012A\u0012?\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0001j\u0011`\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001c\"0\u0010/\u001a!\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\t0\u0001j\u0002`0\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u001c\"\u001b\u00102\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0017j\u0002`3\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010 *n\u0010\u0000\"\u001d\u0012\u0013\u0012\u0011`\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012K\u0012A\u0012?\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0001j\u0011`\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\n\"\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u000c\"\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\r\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u0010\"\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u0013\"\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\t0\u0001*@\u0010\u0015\"\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\t0\u00012\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\t0\u0001*\u0016\u0010\u0016\"\u0008\u0012\u0004\u0012\u00020\t0\u00172\u0008\u0012\u0004\u0012\u00020\t0\u0017*\u0016\u0010\u0018\"\u0008\u0012\u0004\u0012\u00020\t0\u00172\u0008\u0012\u0004\u0012\u00020\t0\u0017\u00a8\u0006<"
    }
    d2 = {
        "OnPrivacyAuthorizationChange",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChangeCallback;",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "",
        "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
        "res",
        "",
        "OffPrivacyAuthorizationChange",
        "id",
        "OnPrivacyAuthorizationChangeCallback",
        "GetPrivacySetting",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;",
        "options",
        "GetPrivacySettingSuccessCallback",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;",
        "result",
        "GetPrivacySettingFailCallback",
        "",
        "GetPrivacySettingCompleteCallback",
        "ResetPrivacyAuthorization",
        "Lkotlin/Function0;",
        "AgreePrivacyAuthorization",
        "getPrivacySetting",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySetting;",
        "getGetPrivacySetting",
        "()Lkotlin/jvm/functions/Function1;",
        "resetPrivacyAuthorization",
        "Luts/sdk/modules/DCloudUniPrivacy/ResetPrivacyAuthorization;",
        "getResetPrivacyAuthorization",
        "()Lkotlin/jvm/functions/Function0;",
        "privacyCallbacks",
        "Ljava/util/HashMap;",
        "getPrivacyCallbacks",
        "()Ljava/util/HashMap;",
        "getId",
        "()Ljava/lang/Number;",
        "setId",
        "(Ljava/lang/Number;)V",
        "privacyAuthorizationChangeFunction",
        "Lio/dcloud/uts/PrivacyOption;",
        "getPrivacyAuthorizationChangeFunction",
        "onPrivacyAuthorizationChange",
        "Luts/sdk/modules/DCloudUniPrivacy/OnPrivacyAuthorizationChange;",
        "getOnPrivacyAuthorizationChange",
        "offPrivacyAuthorizationChange",
        "Luts/sdk/modules/DCloudUniPrivacy/OffPrivacyAuthorizationChange;",
        "getOffPrivacyAuthorizationChange",
        "agreePrivacyAuthorization",
        "Luts/sdk/modules/DCloudUniPrivacy/AgreePrivacyAuthorization;",
        "getAgreePrivacyAuthorization",
        "getPrivacySettingByJs",
        "Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;",
        "resetPrivacyAuthorizationByJs",
        "onPrivacyAuthorizationChangeByJs",
        "Lio/dcloud/uts/UTSCallback;",
        "offPrivacyAuthorizationChangeByJs",
        "agreePrivacyAuthorizationByJs",
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

.field private static id:Ljava/lang/Number;

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

.field private static final privacyAuthorizationChangeFunction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/PrivacyOption;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final privacyCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
            "Lkotlin/Unit;",
            ">;>;"
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
.method public static synthetic $r8$lambda$0Es_WJAxJaeHqbdqVrbqbxYz0bQ(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->onPrivacyAuthorizationChange$lambda$4(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JNXFerk-V_8X7E0rTgxnI456EF0(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySettingByJs$lambda$9(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RSwIUMRDaqOzTdsXcRzOMRC5PoA(Lio/dcloud/uts/PrivacyOption;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyAuthorizationChangeFunction$lambda$3(Lio/dcloud/uts/PrivacyOption;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WczzBnAyQlydtSYCgDwycF78Zo4(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySettingByJs$lambda$8(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dKyt4_jImonWH2_zZGGWliwCv34(Ljava/lang/Number;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->offPrivacyAuthorizationChange$lambda$5(Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gGho5KsGnncv_cDVGD997dFgLmI(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySettingByJs$lambda$7(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jitSnElRw325xJiJHl-XBTgOrGU()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->agreePrivacyAuthorization$lambda$6()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$lsR7uhhZ3uKkM_Ap5PP3ey-Vn9w()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->resetPrivacyAuthorization$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$p_BAq7lUZOGf5pz2J5R5neXGQ_0(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->onPrivacyAuthorizationChangeByJs$lambda$10(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sOts69fwOxPKcSo6aDkIU9RzMO4(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySetting$lambda$0(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySetting:Lkotlin/jvm/functions/Function1;

    .line 42
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->resetPrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyCallbacks:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->id:Ljava/lang/Number;

    .line 47
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyAuthorizationChangeFunction:Lkotlin/jvm/functions/Function1;

    .line 53
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->onPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    .line 61
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->offPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    .line 67
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->agreePrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final agreePrivacyAuthorization$lambda$6()Lkotlin/Unit;
    .registers 2

    .line 68
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSAndroid;->setPrivacyAgree(Z)V

    .line 69
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final agreePrivacyAuthorizationByJs()V
    .registers 1

    .line 105
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->agreePrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

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

    .line 67
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->agreePrivacyAuthorization:Lkotlin/jvm/functions/Function0;

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

    .line 37
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySetting:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getId()Ljava/lang/Number;
    .registers 1

    .line 46
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->id:Ljava/lang/Number;

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

    .line 61
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->offPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

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

    .line 53
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->onPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getPrivacyAuthorizationChangeFunction()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/dcloud/uts/PrivacyOption;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyAuthorizationChangeFunction:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getPrivacyCallbacks()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static final getPrivacySetting$lambda$0(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;)Lkotlin/Unit;
    .registers 3

    .line 38
    new-instance v0, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->isPrivacyAgree()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;-><init>(Z)V

    .line 39
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_16
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getPrivacySettingByJs(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V
    .registers 6

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->getPrivacySetting:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;

    new-instance v2, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda0;-><init>(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V

    new-instance v3, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda1;-><init>(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V

    new-instance v4, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda2;-><init>(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V

    invoke-direct {v1, v2, v3, v4}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getPrivacySettingByJs$lambda$7(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;)Lkotlin/Unit;
    .registers 4

    .line 77
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getPrivacySettingByJs$lambda$8(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 80
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getPrivacySettingByJs$lambda$9(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 83
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    .line 42
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->resetPrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private static final offPrivacyAuthorizationChange$lambda$5(Ljava/lang/Number;)Lkotlin/Unit;
    .registers 2

    .line 62
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 64
    sget-object p0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyAuthorizationChangeFunction:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSAndroid;->offPrivacyAgreeChange(Lkotlin/jvm/functions/Function1;)V

    .line 66
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final offPrivacyAuthorizationChangeByJs(Ljava/lang/Number;)V
    .registers 2

    const-string v0, "id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->offPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onPrivacyAuthorizationChange$lambda$4(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 54
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 55
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v2, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyAuthorizationChangeFunction:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Lio/dcloud/uts/UTSAndroid;->onPrivacyAgreeChange(Lkotlin/jvm/functions/Function1;)V

    .line 57
    :cond_f
    sget-object v1, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->id:Ljava/lang/Number;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    sput-object v1, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->id:Ljava/lang/Number;

    .line 58
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->id:Ljava/lang/Number;

    return-object p0
.end method

.method public static final onPrivacyAuthorizationChangeByJs(Lio/dcloud/uts/UTSCallback;)Ljava/lang/Number;
    .registers 3

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->onPrivacyAuthorizationChange:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 92
    invoke-virtual {p0}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    .line 94
    :cond_12
    new-instance v1, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda9;-><init>(Lio/dcloud/uts/UTSCallback;)V

    invoke-virtual {p0, v1}, Lio/dcloud/uts/UTSCallback;->setFnJS(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p0

    .line 91
    :goto_1e
    const-string v1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"res\")] uts.sdk.modules.DCloudUniPrivacy.PrivacyChangeResult, kotlin.Unit>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method private static final onPrivacyAuthorizationChangeByJs$lambda$10(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;)Lkotlin/Unit;
    .registers 4

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final privacyAuthorizationChangeFunction$lambda$3(Lio/dcloud/uts/PrivacyOption;)Lkotlin/Unit;
    .registers 5

    .line 48
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->privacyCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 49
    new-instance v2, Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;

    invoke-virtual {p0}, Lio/dcloud/uts/PrivacyOption;->isAgree()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;-><init>(Z)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 52
    :cond_2c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final resetPrivacyAuthorization$lambda$1()Lkotlin/Unit;
    .registers 1

    .line 43
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->resetPrivacyAgree()V

    .line 44
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final resetPrivacyAuthorizationByJs()V
    .registers 1

    .line 88
    sget-object v0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->resetPrivacyAuthorization:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final setId(Ljava/lang/Number;)V
    .registers 2

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sput-object p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->id:Ljava/lang/Number;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda0;->f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda0;->f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$gGho5KsGnncv_cDVGD997dFgLmI(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingSuccessResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda1;->f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$WczzBnAyQlydtSYCgDwycF78Zo4(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda2;->f$0:Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$JNXFerk-V_8X7E0rTgxnI456EF0(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda3;
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
    check-cast p1, Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$sOts69fwOxPKcSo6aDkIU9RzMO4(Luts/sdk/modules/DCloudUniPrivacy/GetPrivacySettingOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda4 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda4)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$lsR7uhhZ3uKkM_Ap5PP3ey-Vn9w()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda5 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda5)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda5;
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
    check-cast p1, Lio/dcloud/uts/PrivacyOption;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$RSwIUMRDaqOzTdsXcRzOMRC5PoA(Lio/dcloud/uts/PrivacyOption;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda6 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda6)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda6;
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
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$0Es_WJAxJaeHqbdqVrbqbxYz0bQ(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda7 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda7)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda7;
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
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$dKyt4_jImonWH2_zZGGWliwCv34(Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda8 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda8)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$jitSnElRw325xJiJHl-XBTgOrGU()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda9 (uts.sdk.modules.DCloudUniPrivacy.IndexKt$$ExternalSyntheticLambda9)
.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/UTSCallback;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/UTSCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda9;->f$0:Lio/dcloud/uts/UTSCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda9;->f$0:Lio/dcloud/uts/UTSCallback;

    check-cast p1, Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$p_BAq7lUZOGf5pz2J5R5neXGQ_0(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
