###### Class uts.sdk.modules.DCloudUniGetAppBaseInfo.GetAppBaseInfoResult (uts.sdk.modules.DCloudUniGetAppBaseInfo.GetAppBaseInfoResult)
.class public Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;
.super Lio/dcloud/uts/UTSObject;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008I\u0008\u0016\u0018\u00002\u00020\u0001B\u00d7\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008!\u0010\"R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010$\"\u0004\u0008(\u0010&R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010$\"\u0004\u0008,\u0010&R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010$\"\u0004\u0008.\u0010&R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010$\"\u0004\u00080\u0010&R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010$\"\u0004\u00082\u0010&R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010$\"\u0004\u00084\u0010&R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010$\"\u0004\u00086\u0010&R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010$\"\u0004\u00088\u0010&R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010$\"\u0004\u0008:\u0010&R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010$\"\u0004\u0008<\u0010&R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010$\"\u0004\u0008>\u0010&R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010$\"\u0004\u0008@\u0010&R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008\u0011\u0010A\"\u0004\u0008B\u0010CR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010$\"\u0004\u0008F\u0010&R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010$\"\u0004\u0008H\u0010&R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010$\"\u0004\u0008J\u0010&R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010$\"\u0004\u0008L\u0010&R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010N\"\u0004\u0008R\u0010PR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010N\"\u0004\u0008T\u0010PR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010$\"\u0004\u0008V\u0010&R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010$\"\u0004\u0008X\u0010&R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010$\"\u0004\u0008Z\u0010&R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010$\"\u0004\u0008\\\u0010&R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010$\"\u0004\u0008^\u0010&R\u001c\u0010 \u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010$\"\u0004\u0008`\u0010&\u00a8\u0006a"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;",
        "Lio/dcloud/uts/UTSObject;",
        "appId",
        "",
        "appName",
        "appVersion",
        "appVersionCode",
        "appLanguage",
        "language",
        "version",
        "appWgtVersion",
        "hostLanguage",
        "hostVersion",
        "hostName",
        "hostPackageName",
        "hostSDKVersion",
        "hostTheme",
        "isUniAppX",
        "",
        "uniCompileVersion",
        "uniCompilerVersion",
        "uniPlatform",
        "uniRuntimeVersion",
        "uniCompileVersionCode",
        "",
        "uniCompilerVersionCode",
        "uniRuntimeVersionCode",
        "packageName",
        "bundleName",
        "bundleId",
        "signature",
        "appTheme",
        "channel",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getAppName",
        "setAppName",
        "getAppVersion",
        "setAppVersion",
        "getAppVersionCode",
        "setAppVersionCode",
        "getAppLanguage",
        "setAppLanguage",
        "getLanguage",
        "setLanguage",
        "getVersion",
        "setVersion",
        "getAppWgtVersion",
        "setAppWgtVersion",
        "getHostLanguage",
        "setHostLanguage",
        "getHostVersion",
        "setHostVersion",
        "getHostName",
        "setHostName",
        "getHostPackageName",
        "setHostPackageName",
        "getHostSDKVersion",
        "setHostSDKVersion",
        "getHostTheme",
        "setHostTheme",
        "()Ljava/lang/Boolean;",
        "setUniAppX",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getUniCompileVersion",
        "setUniCompileVersion",
        "getUniCompilerVersion",
        "setUniCompilerVersion",
        "getUniPlatform",
        "setUniPlatform",
        "getUniRuntimeVersion",
        "setUniRuntimeVersion",
        "getUniCompileVersionCode",
        "()Ljava/lang/Number;",
        "setUniCompileVersionCode",
        "(Ljava/lang/Number;)V",
        "getUniCompilerVersionCode",
        "setUniCompilerVersionCode",
        "getUniRuntimeVersionCode",
        "setUniRuntimeVersionCode",
        "getPackageName",
        "setPackageName",
        "getBundleName",
        "setBundleName",
        "getBundleId",
        "setBundleId",
        "getSignature",
        "setSignature",
        "getAppTheme",
        "setAppTheme",
        "getChannel",
        "setChannel",
        "uni-getAppBaseInfo_release"
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
.field private appId:Ljava/lang/String;

.field private appLanguage:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appTheme:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private appVersionCode:Ljava/lang/String;

.field private appWgtVersion:Ljava/lang/String;

.field private bundleId:Ljava/lang/String;

.field private bundleName:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private hostLanguage:Ljava/lang/String;

.field private hostName:Ljava/lang/String;

.field private hostPackageName:Ljava/lang/String;

.field private hostSDKVersion:Ljava/lang/String;

.field private hostTheme:Ljava/lang/String;

.field private hostVersion:Ljava/lang/String;

.field private isUniAppX:Ljava/lang/Boolean;

.field private language:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private uniCompileVersion:Ljava/lang/String;

.field private uniCompileVersionCode:Ljava/lang/Number;

.field private uniCompilerVersion:Ljava/lang/String;

.field private uniCompilerVersionCode:Ljava/lang/Number;

.field private uniPlatform:Ljava/lang/String;

.field private uniRuntimeVersion:Ljava/lang/String;

.field private uniRuntimeVersionCode:Ljava/lang/Number;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 32

    const v29, 0xfffffff

    const/16 v30, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v30}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 29

    .line 158
    invoke-direct {p0}, Lio/dcloud/uts/UTSObject;-><init>()V

    .line 130
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appId:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appName:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appVersion:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appVersionCode:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appLanguage:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->language:Ljava/lang/String;

    .line 136
    iput-object p7, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->version:Ljava/lang/String;

    .line 137
    iput-object p8, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appWgtVersion:Ljava/lang/String;

    .line 138
    iput-object p9, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostLanguage:Ljava/lang/String;

    .line 139
    iput-object p10, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostVersion:Ljava/lang/String;

    .line 140
    iput-object p11, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostName:Ljava/lang/String;

    .line 141
    iput-object p12, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostPackageName:Ljava/lang/String;

    .line 142
    iput-object p13, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostSDKVersion:Ljava/lang/String;

    .line 143
    iput-object p14, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostTheme:Ljava/lang/String;

    .line 144
    iput-object p15, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->isUniAppX:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    .line 145
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompileVersion:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 146
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompilerVersion:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 147
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniPlatform:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 148
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniRuntimeVersion:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 149
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompileVersionCode:Ljava/lang/Number;

    move-object/from16 p1, p21

    .line 150
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompilerVersionCode:Ljava/lang/Number;

    move-object/from16 p1, p22

    .line 151
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniRuntimeVersionCode:Ljava/lang/Number;

    move-object/from16 p1, p23

    .line 152
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->packageName:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 153
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->bundleName:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 154
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->bundleId:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 155
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->signature:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 156
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appTheme:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 157
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->channel:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 60

    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    move-object/from16 v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_12

    :cond_10
    move-object/from16 v3, p2

    :goto_12
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    goto :goto_1a

    :cond_18
    move-object/from16 v4, p3

    :goto_1a
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_22

    :cond_20
    move-object/from16 v5, p4

    :goto_22
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    goto :goto_2a

    :cond_28
    move-object/from16 v6, p5

    :goto_2a
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_30

    const/4 v7, 0x0

    goto :goto_32

    :cond_30
    move-object/from16 v7, p6

    :goto_32
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_38

    const/4 v8, 0x0

    goto :goto_3a

    :cond_38
    move-object/from16 v8, p7

    :goto_3a
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_40

    const/4 v9, 0x0

    goto :goto_42

    :cond_40
    move-object/from16 v9, p8

    :goto_42
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_48

    const/4 v10, 0x0

    goto :goto_4a

    :cond_48
    move-object/from16 v10, p9

    :goto_4a
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_50

    const/4 v11, 0x0

    goto :goto_52

    :cond_50
    move-object/from16 v11, p10

    :goto_52
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_58

    const/4 v12, 0x0

    goto :goto_5a

    :cond_58
    move-object/from16 v12, p11

    :goto_5a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_60

    const/4 v13, 0x0

    goto :goto_62

    :cond_60
    move-object/from16 v13, p12

    :goto_62
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_68

    const/4 v14, 0x0

    goto :goto_6a

    :cond_68
    move-object/from16 v14, p13

    :goto_6a
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_70

    const/4 v15, 0x0

    goto :goto_72

    :cond_70
    move-object/from16 v15, p14

    :goto_72
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_78

    const/4 v2, 0x0

    goto :goto_7a

    :cond_78
    move-object/from16 v2, p15

    :goto_7a
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_84

    const/16 v16, 0x0

    goto :goto_86

    :cond_84
    move-object/from16 v16, p16

    :goto_86
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_8f

    const/16 v17, 0x0

    goto :goto_91

    :cond_8f
    move-object/from16 v17, p17

    :goto_91
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_9a

    const/16 v18, 0x0

    goto :goto_9c

    :cond_9a
    move-object/from16 v18, p18

    :goto_9c
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_a5

    const/16 v19, 0x0

    goto :goto_a7

    :cond_a5
    move-object/from16 v19, p19

    :goto_a7
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_b0

    const/16 v20, 0x0

    goto :goto_b2

    :cond_b0
    move-object/from16 v20, p20

    :goto_b2
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_bb

    const/16 v21, 0x0

    goto :goto_bd

    :cond_bb
    move-object/from16 v21, p21

    :goto_bd
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_c6

    const/16 v22, 0x0

    goto :goto_c8

    :cond_c6
    move-object/from16 v22, p22

    :goto_c8
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_d1

    const/16 v23, 0x0

    goto :goto_d3

    :cond_d1
    move-object/from16 v23, p23

    :goto_d3
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_dc

    const/16 v24, 0x0

    goto :goto_de

    :cond_dc
    move-object/from16 v24, p24

    :goto_de
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_e7

    const/16 v25, 0x0

    goto :goto_e9

    :cond_e7
    move-object/from16 v25, p25

    :goto_e9
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_f2

    const/16 v26, 0x0

    goto :goto_f4

    :cond_f2
    move-object/from16 v26, p26

    :goto_f4
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_fd

    const/16 v27, 0x0

    goto :goto_ff

    :cond_fd
    move-object/from16 v27, p27

    :goto_ff
    const/high16 v28, 0x8000000

    and-int v0, v0, v28

    if-eqz v0, :cond_108

    const/16 p29, 0x0

    goto :goto_10a

    :cond_108
    move-object/from16 p29, p28

    :goto_10a
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    .line 129
    invoke-direct/range {p1 .. p29}, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTheme()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppWgtVersion()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appWgtVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleName()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->bundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getHostLanguage()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostSDKVersion()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHostTheme()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getHostVersion()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUniCompileVersion()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompileVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUniCompileVersionCode()Ljava/lang/Number;
    .registers 2

    .line 149
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompileVersionCode:Ljava/lang/Number;

    return-object v0
.end method

.method public getUniCompilerVersion()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompilerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUniCompilerVersionCode()Ljava/lang/Number;
    .registers 2

    .line 150
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompilerVersionCode:Ljava/lang/Number;

    return-object v0
.end method

.method public getUniPlatform()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getUniRuntimeVersion()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniRuntimeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUniRuntimeVersionCode()Ljava/lang/Number;
    .registers 2

    .line 151
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniRuntimeVersionCode:Ljava/lang/Number;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isUniAppX()Ljava/lang/Boolean;
    .registers 2

    .line 144
    iget-object v0, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->isUniAppX:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppLanguage(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appLanguage:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppTheme(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appTheme:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionCode(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setAppWgtVersion(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->appWgtVersion:Ljava/lang/String;

    return-void
.end method

.method public setBundleId(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->bundleId:Ljava/lang/String;

    return-void
.end method

.method public setBundleName(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->bundleName:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->channel:Ljava/lang/String;

    return-void
.end method

.method public setHostLanguage(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostLanguage:Ljava/lang/String;

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setHostPackageName(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostPackageName:Ljava/lang/String;

    return-void
.end method

.method public setHostSDKVersion(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostSDKVersion:Ljava/lang/String;

    return-void
.end method

.method public setHostTheme(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostTheme:Ljava/lang/String;

    return-void
.end method

.method public setHostVersion(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->hostVersion:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->language:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUniAppX(Ljava/lang/Boolean;)V
    .registers 2

    .line 144
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->isUniAppX:Ljava/lang/Boolean;

    return-void
.end method

.method public setUniCompileVersion(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompileVersion:Ljava/lang/String;

    return-void
.end method

.method public setUniCompileVersionCode(Ljava/lang/Number;)V
    .registers 2

    .line 149
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompileVersionCode:Ljava/lang/Number;

    return-void
.end method

.method public setUniCompilerVersion(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompilerVersion:Ljava/lang/String;

    return-void
.end method

.method public setUniCompilerVersionCode(Ljava/lang/Number;)V
    .registers 2

    .line 150
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniCompilerVersionCode:Ljava/lang/Number;

    return-void
.end method

.method public setUniPlatform(Ljava/lang/String;)V
    .registers 2

    .line 147
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniPlatform:Ljava/lang/String;

    return-void
.end method

.method public setUniRuntimeVersion(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniRuntimeVersion:Ljava/lang/String;

    return-void
.end method

.method public setUniRuntimeVersionCode(Ljava/lang/Number;)V
    .registers 2

    .line 151
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->uniRuntimeVersionCode:Ljava/lang/Number;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Luts/sdk/modules/DCloudUniGetAppBaseInfo/GetAppBaseInfoResult;->version:Ljava/lang/String;

    return-void
.end method
