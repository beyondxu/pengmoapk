###### Class uts.sdk.modules.DCloudUniGetAccessibilityInfo.IndexKt (uts.sdk.modules.DCloudUniGetAccessibilityInfo.IndexKt)
.class public final Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u001a\u0006\u0010\r\u001a\u00020\u0002\"\u001b\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006*\u0016\u0010\u0000\"\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "GetAccessibilityInfo",
        "Lkotlin/Function0;",
        "Lio/dcloud/uts/UTSJSONObject;",
        "getAccessibilityInfo",
        "Luts/sdk/modules/DCloudUniGetAccessibilityInfo/GetAccessibilityInfo;",
        "getGetAccessibilityInfo",
        "()Lkotlin/jvm/functions/Function0;",
        "isAccessibilitySettingsOn",
        "",
        "context",
        "Landroid/content/Context;",
        "service",
        "",
        "getAccessibilityInfoByJs",
        "uni-getAccessibilityInfo_release"
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
.field private static final getAccessibilityInfo:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/dcloud/uts/UTSJSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qpuaPbxFY5JI9nlS4TS8lQVMbPY()Lio/dcloud/uts/UTSJSONObject;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;->getAccessibilityInfo$lambda$1()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;->getAccessibilityInfo:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final getAccessibilityInfo$lambda$1()Lio/dcloud/uts/UTSJSONObject;
    .registers 11

    .line 21
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 23
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 24
    new-instance v3, Lio/dcloud/uts/UTSArray;

    invoke-direct {v3}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 27
    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v5, v6, :cond_71

    .line 28
    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getId(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9}, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;->isAccessibilitySettingsOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 29
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v9, "null cannot be cast to non-null type android.accessibilityservice.AccessibilityServiceInfo"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 30
    new-array v7, v7, [Lkotlin/Pair;

    const-string v9, "id"

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v7, v4

    const-string v9, "packageNames"

    iget-object v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-static {v7}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v6

    .line 31
    invoke-virtual {v3, v6}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 36
    :cond_71
    new-array v0, v7, [Lkotlin/Pair;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "services"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static final getAccessibilityInfoByJs()Lio/dcloud/uts/UTSJSONObject;
    .registers 1

    .line 55
    sget-object v0, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;->getAccessibilityInfo:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    return-object v0
.end method

.method public static final getGetAccessibilityInfo()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/dcloud/uts/UTSJSONObject;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;->getAccessibilityInfo:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final isAccessibilitySettingsOn(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_accessibility_services"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 44
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 45
    :cond_24
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 46
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

###### Class uts.sdk.modules.DCloudUniGetAccessibilityInfo.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniGetAccessibilityInfo.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt$$ExternalSyntheticLambda0;
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
    invoke-static {}, Luts/sdk/modules/DCloudUniGetAccessibilityInfo/IndexKt;->$r8$lambda$qpuaPbxFY5JI9nlS4TS8lQVMbPY()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    return-object v0
.end method
