###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.IndexKt (uts.sdk.modules.DCloudUniGetAppBaseInfo.IndexKt)
.class public final Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,334:1\n33#2:335\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt\n*L\n161#1:335\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u001a\u0010\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0013\"2\u0010\u0007\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\n*D\u0010\u0000\"\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "GetAppBaseInfo",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;",
        "Lkotlin/ParameterName;",
        "name",
        "options",
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;",
        "getAppBaseInfo",
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfo;",
        "getGetAppBaseInfo",
        "()Lkotlin/jvm/functions/Function1;",
        "getBaseInfo",
        "filterArray",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "convertVersionCode",
        "",
        "getConvertVersionCode",
        "getAppBaseInfoByJs",
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;",
        "uni-getAppBaseInfo_release"
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
.field private static final convertVersionCode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final getAppBaseInfo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;",
            "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Q2V5tjE3PvRwC6Abw0kj8Xsl5Ks(Ljava/lang/String;)Ljava/lang/Number;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->convertVersionCode$lambda$2(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nw9H_1HISyj1SYk9fMNe5mn9XvQ(Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->getAppBaseInfo$lambda$0(Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->getAppBaseInfo:Lkotlin/jvm/functions/Function1;

    .line 291
    new-instance v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->convertVersionCode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final convertVersionCode$lambda$2(Ljava/lang/String;)Ljava/lang/Number;
    .registers 8

    const/4 v0, 0x2

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    const-string v4, ""

    .line 298
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v3, v5}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v5

    if-gez v5, :cond_78

    .line 299
    invoke-static {p0, v3}, Lio/dcloud/uts/StringKt;->get(Ljava/lang/String;Ljava/lang/Number;)C

    move-result v5

    if-eqz v1, :cond_47

    .line 301
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    :cond_3a
    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lio/dcloud/uts/NumberKt;->dec(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    .line 305
    invoke-static {v0, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    goto :goto_78

    .line 309
    :cond_47
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_73

    :cond_5d
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_73

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    move-object v4, v1

    const/4 v1, 0x1

    .line 318
    :cond_73
    :goto_73
    invoke-static {v3}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    goto :goto_f

    .line 321
    :cond_78
    :goto_78
    invoke-static {v4}, Lio/dcloud/uts/NumberKt;->parseFloat(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private static final getAppBaseInfo$lambda$0(Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;
    .registers 29

    .line 335
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    if-eqz p0, :cond_11

    .line 162
    invoke-virtual/range {p0 .. p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;->getFilter()Lio/dcloud/uts/UTSArray;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 163
    invoke-virtual/range {p0 .. p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;->getFilter()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    :cond_11
    if-eqz p0, :cond_22

    .line 165
    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 191
    :cond_22
    const-string v26, "appTheme"

    .line 192
    const-string v27, "channel"

    const-string v2, "appId"

    const-string v3, "appName"

    const-string v4, "appVersion"

    const-string v5, "appVersionCode"

    const-string v6, "appLanguage"

    const-string v7, "language"

    const-string v8, "version"

    const-string v9, "appWgtVersion"

    const-string v10, "hostLanguage"

    const-string v11, "hostVersion"

    const-string v12, "hostName"

    const-string v13, "hostPackageName"

    const-string v14, "hostSDKVersion"

    const-string v15, "hostTheme"

    const-string v16, "isUniAppX"

    const-string v17, "uniCompileVersion"

    const-string v18, "uniCompilerVersion"

    const-string v19, "uniPlatform"

    const-string v20, "uniRuntimeVersion"

    const-string v21, "uniCompileVersionCode"

    const-string v22, "uniCompilerVersionCode"

    const-string v23, "uniRuntimeVersionCode"

    const-string v24, "packageName"

    const-string v25, "signature"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    .line 196
    :cond_5e
    invoke-static {v0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->getBaseInfo(Lio/dcloud/uts/UTSArray;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public static final getAppBaseInfoByJs(Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;
    .registers 3

    .line 327
    sget-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->getAppBaseInfo:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_e

    .line 328
    new-instance v1, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptionsJSONObject;->getFilter()Lio/dcloud/uts/UTSArray;

    move-result-object p0

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;-><init>(Lio/dcloud/uts/UTSArray;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 327
    :goto_f
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;

    return-object p0
.end method

.method public static final getBaseInfo(Lio/dcloud/uts/UTSArray;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "filterArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    new-instance v2, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;

    const v31, 0xfffffff

    const/16 v32, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v2 .. v32}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    const-string v3, "appId"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_57

    .line 202
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppId(Ljava/lang/String;)V

    .line 204
    :cond_57
    const-string v3, "appName"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_68

    .line 205
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppName(Ljava/lang/String;)V

    .line 207
    :cond_68
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->isUniMp()Z

    move-result v3

    const-string v5, "appVersionCode"

    const-string v6, "appVersion"

    if-eqz v3, :cond_fb

    .line 208
    const-string v3, "hostPackageName"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_88

    .line 209
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v7, v1

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v3, v7}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setHostPackageName(Ljava/lang/String;)V

    .line 211
    :cond_88
    const-string v3, "hostVersion"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_9c

    .line 212
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v7, v1

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v3, v7}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getHostVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setHostVersion(Ljava/lang/String;)V

    .line 214
    :cond_9c
    const-string v3, "hostName"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_b0

    .line 215
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v7, v1

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v3, v7}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setHostName(Ljava/lang/String;)V

    .line 217
    :cond_b0
    const-string v3, "hostTheme"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_c8

    .line 218
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-virtual {v3, v1}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->isSystemNightMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 219
    const-string v3, "dark"

    goto :goto_c5

    .line 221
    :cond_c3
    const-string v3, "light"

    .line 218
    :goto_c5
    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setHostTheme(Ljava/lang/String;)V

    .line 224
    :cond_c8
    const-string v3, "hostLanguage"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_dc

    .line 225
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v7, v1

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v3, v7}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getOsLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setHostLanguage(Ljava/lang/String;)V

    .line 227
    :cond_dc
    invoke-virtual {v0, v6}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_eb

    .line 228
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppVersion(Ljava/lang/String;)V

    .line 230
    :cond_eb
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_12f

    .line 231
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppVersionCode(Ljava/lang/String;)V

    goto :goto_12f

    .line 234
    :cond_fb
    invoke-virtual {v0, v6}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_116

    .line 235
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getAppVersion()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v3

    const-string v8, "name"

    invoke-virtual {v3, v8}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7, v6, v7}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppVersion(Ljava/lang/String;)V

    .line 237
    :cond_116
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_12f

    .line 238
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getAppVersion()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v3

    const-string v5, "code"

    invoke-virtual {v3, v5}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7, v6, v7}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppVersionCode(Ljava/lang/String;)V

    .line 241
    :cond_12f
    :goto_12f
    const-string v3, "appLanguage"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_143

    .line 242
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v3, v5}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getOsLanguageNormal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppLanguage(Ljava/lang/String;)V

    .line 244
    :cond_143
    const-string v3, "language"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_157

    .line 245
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v3, v5}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getOsLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setLanguage(Ljava/lang/String;)V

    .line 247
    :cond_157
    const-string v3, "version"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_168

    .line 248
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppInnerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setVersion(Ljava/lang/String;)V

    .line 250
    :cond_168
    const-string v3, "appWgtVersion"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_179

    .line 251
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppWgtVersion(Ljava/lang/String;)V

    .line 253
    :cond_179
    const-string v3, "isUniAppX"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_18e

    .line 254
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->isUniAppX()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniAppX(Ljava/lang/Boolean;)V

    .line 256
    :cond_18e
    const-string v3, "uniCompileVersion"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_19f

    .line 257
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getUniCompileVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniCompileVersion(Ljava/lang/String;)V

    .line 259
    :cond_19f
    const-string v3, "uniCompilerVersion"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1b0

    .line 260
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getUniCompileVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniCompilerVersion(Ljava/lang/String;)V

    .line 262
    :cond_1b0
    const-string v3, "uniPlatform"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1bd

    .line 263
    const-string v3, "app"

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniPlatform(Ljava/lang/String;)V

    .line 265
    :cond_1bd
    const-string v3, "uniRuntimeVersion"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1ce

    .line 266
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getUniRuntimeVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniRuntimeVersion(Ljava/lang/String;)V

    .line 268
    :cond_1ce
    const-string v3, "uniCompileVersionCode"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1e7

    .line 269
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->convertVersionCode:Lkotlin/jvm/functions/Function1;

    sget-object v5, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v5}, Lio/dcloud/uts/UTSAndroid;->getUniCompileVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniCompileVersionCode(Ljava/lang/Number;)V

    .line 271
    :cond_1e7
    const-string v3, "uniCompilerVersionCode"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_200

    .line 272
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->convertVersionCode:Lkotlin/jvm/functions/Function1;

    sget-object v5, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v5}, Lio/dcloud/uts/UTSAndroid;->getUniCompileVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniCompilerVersionCode(Ljava/lang/Number;)V

    .line 274
    :cond_200
    const-string v3, "uniRuntimeVersionCode"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_219

    .line 275
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->convertVersionCode:Lkotlin/jvm/functions/Function1;

    sget-object v5, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v5}, Lio/dcloud/uts/UTSAndroid;->getUniRuntimeVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setUniRuntimeVersionCode(Ljava/lang/Number;)V

    .line 277
    :cond_219
    const-string v3, "packageName"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_22d

    .line 278
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v3, v5}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setPackageName(Ljava/lang/String;)V

    .line 280
    :cond_22d
    const-string v3, "signature"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_241

    .line 281
    sget-object v3, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v3, v5}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setSignature(Ljava/lang/String;)V

    .line 283
    :cond_241
    const-string v3, "appTheme"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_252

    .line 284
    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getAppTheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setAppTheme(Ljava/lang/String;)V

    .line 286
    :cond_252
    const-string v3, "channel"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_265

    .line 287
    sget-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/AppBaseInfoDeviceUtil$Companion;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->setChannel(Ljava/lang/String;)V

    :cond_265
    return-object v2
.end method

.method public static final getConvertVersionCode()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 291
    sget-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->convertVersionCode:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getGetAppBaseInfo()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;",
            "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->getAppBaseInfo:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniGetAppBaseInfo.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt$$ExternalSyntheticLambda0;
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
    check-cast p1, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->$r8$lambda$nw9H_1HISyj1SYk9fMNe5mn9XvQ(Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoOptions;)Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.IndexKt$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniGetAppBaseInfo.IndexKt$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/IndexKt;->$r8$lambda$Q2V5tjE3PvRwC6Abw0kj8Xsl5Ks(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
