###### Class io.dcloud.js.file.FileFeatureImpl (io.dcloud.js.file.FileFeatureImpl)
.class public Lio/dcloud/js/file/FileFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$K17Xw3biRP98C5KXwaG97KBlGmY(Lio/dcloud/js/file/FileFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 235
    const-string v3, "{code:%d,message:\'%s\'}"

    packed-switch p2, :pswitch_data_140

    .line 280
    :pswitch_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_unknown_error:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 281
    :pswitch_1d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    aput-object p1, p2, v0

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 282
    :pswitch_2e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_path_not_exist:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :pswitch_43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_path_exists:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 284
    :pswitch_58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_type_mismatch:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 285
    :pswitch_6d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_perform_error:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 286
    :pswitch_82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_invalid_modification:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 287
    :pswitch_97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_grammar_mistakes:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 288
    :pswitch_ac
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_invalid_state:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 289
    :pswitch_c1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_no_modification_allowed:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :pswitch_d6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_coding_error:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 291
    :pswitch_eb
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_file_not_read:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :pswitch_100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 293
    :pswitch_115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_without_authorization:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 294
    :pswitch_12a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_file_not_found:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_12a
        :pswitch_115
        :pswitch_100
        :pswitch_eb
        :pswitch_d6
        :pswitch_c1
        :pswitch_ac
        :pswitch_97
        :pswitch_82
        :pswitch_6d
        :pswitch_58
        :pswitch_43
        :pswitch_8
        :pswitch_2e
        :pswitch_1d
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PRIVATE_WWW"

    const-string v3, "fsRoot"

    const-string v4, "fsName"

    const-string v5, "type"

    const/4 v6, 0x1

    if-eqz v1, :cond_2a

    .line 211
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 214
    :cond_2a
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x2

    .line 215
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    const-string v1, "PRIVATE_DOCUMENTS"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 218
    :cond_49
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x3

    .line 219
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v1, "PUBLIC_DOCUMENTS"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 222
    :cond_68
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const/4 v1, 0x4

    .line 223
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v1, "PUBLIC_DOWNLOADS"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    sget-object v2, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 226
    :cond_87
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 227
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 230
    :cond_a3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const/4 v1, 0x5

    .line 231
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v1, "PUBLIC_DEVICE_ROOT"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bf
    return-object v0
.end method

.method private a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 11

    .line 234
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    .line 31
    aget-object v3, p3, v0

    .line 32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 p2, 0xf

    .line 34
    invoke-direct {p0, p2, p1, p4}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_17
    invoke-interface {p2, v3}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    .line 38
    aget-object v2, p3, v2

    invoke-static {v2, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v0, 0x2

    .line 39
    aget-object p3, p3, v0

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_38

    .line 40
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result p2

    if-eqz p2, :cond_38

    const/16 p2, 0xa

    .line 41
    invoke-direct {p0, p2, p1, p4}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_38
    new-instance v1, Lio/dcloud/js/file/FileFeatureImpl$g;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$g;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v1}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    return-void
.end method

.method private synthetic a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 4
    invoke-static {v1, p3}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_3c
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3e

    .line 7
    :try_start_1a
    const-string v0, "size"

    invoke-virtual {p3, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_2c

    .line 9
    const-string p4, "digest"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_2c} :catch_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_2c} :catch_3c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_3e

    .line 12
    :catch_2c
    :cond_2c
    :try_start_2c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_32} :catch_3c
    .catchall {:try_start_2c .. :try_end_32} :catchall_3e

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p5

    :try_start_36
    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_39} :catch_41
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e

    if-eqz v1, :cond_51

    goto :goto_48

    :catch_3c
    move-object v2, p1

    goto :goto_41

    :catchall_3e
    move-exception v0

    move-object p1, v0

    goto :goto_52

    :catch_41
    :goto_41
    const/16 p1, 0xf

    .line 21
    :try_start_43
    invoke-direct {p0, p1, v2, p6}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3e

    if-eqz v1, :cond_51

    .line 18
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_51

    :catch_4c
    move-exception v0

    move-object p1, v0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_51
    :goto_51
    return-void

    :goto_52
    if-eqz v1, :cond_5d

    .line 25
    :try_start_54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5d

    :catch_58
    move-exception v0

    move-object p2, v0

    .line 27
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_5d
    :goto_5d
    throw p1
.end method

.method static synthetic a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 17

    const-string v0, "/"

    const-string v1, "{code:%d,message:\'%s\'}"

    const-string v2, "file://"

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 295
    :try_start_b
    new-instance v7, Landroid/graphics/BitmapFactory$Options;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d} :catch_139
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_d} :catch_11a

    :try_start_d
    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 296
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 297
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_116
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1a} :catch_11a

    const-string v9, "Orientation"

    const/4 v10, 0x0

    if-nez v8, :cond_49

    :try_start_1f
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v8, v11, :cond_49

    .line 299
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_41

    .line 301
    invoke-static {v8, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 302
    invoke-static {}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m$4()V

    invoke-static {v8}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/InputStream;)Landroid/media/ExifInterface;

    move-result-object v11

    .line 303
    invoke-virtual {v11, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_139
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_40} :catch_43

    goto :goto_55

    :cond_41
    move-object v9, v10

    goto :goto_55

    :catch_43
    move-exception v0

    move-object p1, v0

    move-object/from16 v8, p3

    goto/16 :goto_11e

    .line 307
    :cond_49
    :try_start_49
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v8, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 309
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 312
    :goto_55
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 313
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 314
    iget-object v7, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 315
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5f} :catch_116
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_5f} :catch_11a

    if-nez v12, :cond_6f

    :try_start_61
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 316
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    array-length v7, v0

    sub-int/2addr v7, v6

    aget-object v7, v0, v7
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6f} :catch_139
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6f} :catch_43

    .line 320
    :cond_6f
    :try_start_6f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_116
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_73} :catch_11a

    if-nez v0, :cond_d5

    .line 321
    :try_start_75
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_158

    goto :goto_d2

    :pswitch_7d
    const-string v0, "8"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 346
    const-string v0, "left"

    goto :goto_d4

    .line 347
    :pswitch_88
    const-string v0, "7"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 369
    const-string v0, "right-mirrored"

    goto :goto_d4

    .line 370
    :pswitch_93
    const-string v0, "6"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 389
    const-string v0, "right"

    goto :goto_d4

    .line 390
    :pswitch_9e
    const-string v0, "5"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 406
    const-string v0, "left-mirrored"

    goto :goto_d4

    .line 407
    :pswitch_a9
    const-string v0, "4"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 420
    const-string v0, "down-mirrored"

    goto :goto_d4

    .line 421
    :pswitch_b4
    const-string v0, "3"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 431
    const-string v0, "down"

    goto :goto_d4

    .line 432
    :pswitch_bf
    const-string v0, "2"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 439
    const-string v0, "up-mirrored"

    goto :goto_d4

    .line 440
    :pswitch_ca
    const-string v0, "1"

    goto :goto_cf

    .line 441
    :pswitch_cd
    const-string v0, "0"

    :goto_cf
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    :cond_d2
    :goto_d2
    const-string v0, "up"
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_d4} :catch_139
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_d4} :catch_43

    :goto_d4
    move-object v10, v0

    .line 471
    :cond_d5
    :try_start_d5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 472
    const-string v9, "path"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string p1, "width"

    invoke-virtual {v0, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 474
    const-string p1, "height"

    invoke-virtual {v0, p1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 475
    const-string p1, "orientation"

    invoke-virtual {v0, p1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string p1, "type"

    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    goto :goto_109

    :cond_103
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    :goto_109
    invoke-virtual {v0, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    sget p1, Lio/dcloud/common/util/JSUtil;->OK:I
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_10e} :catch_116
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_10e} :catch_11a

    move-object/from16 v8, p3

    :try_start_110
    invoke-static {p2, v8, v0, p1, v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_139
    .catch Lorg/json/JSONException; {:try_start_110 .. :try_end_113} :catch_114

    return-void

    :catch_114
    move-exception v0

    goto :goto_11d

    :catch_116
    move-exception v0

    move-object/from16 v8, p3

    goto :goto_13a

    :catch_11a
    move-exception v0

    move-object/from16 v8, p3

    :goto_11d
    move-object p1, v0

    .line 481
    :goto_11e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, p2

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_157

    :catch_139
    move-exception v0

    :goto_13a
    move-object p1, v0

    .line 482
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_157
    return-void

    :pswitch_data_158
    .packed-switch 0x30
        :pswitch_cd
        :pswitch_ca
        :pswitch_bf
        :pswitch_b4
        :pswitch_a9
        :pswitch_9e
        :pswitch_93
        :pswitch_88
        :pswitch_7d
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 22

    const-string v0, "90"

    .line 44
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ca

    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2ca

    .line 45
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "apps/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_32
    const-string v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_43

    .line 49
    const-string v2, "/android_asset"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    .line 50
    :cond_43
    const-string v2, "android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 51
    const-string v2, "android_asset"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_51
    :goto_51
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_b9

    .line 56
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    goto :goto_88

    :cond_7c
    const/16 v0, 0xf

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 58
    invoke-direct {v3, v0, v7, v6}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    :cond_88
    :goto_88
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 61
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_bb

    const/4 v0, -0x4

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "{code:%d,message:\'%s\'}"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_b9
    move-object/from16 v3, p0

    .line 69
    :cond_bb
    :try_start_bb
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 70
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 71
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_f1

    .line 73
    :cond_ce
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 75
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 76
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_f1

    .line 78
    :cond_e0
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lio/dcloud/common/util/FileUtil;->getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_f1

    .line 80
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_f1
    :goto_f1
    const/16 v7, 0x9

    .line 85
    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    .line 86
    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x13

    .line 87
    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x18

    .line 88
    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 89
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string v12, "getVideoInfo"

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27c

    .line 92
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_11c} :catch_2a4

    const-string v14, "270"

    if-nez v12, :cond_126

    :try_start_120
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12b

    :cond_126
    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    :cond_12b
    if-eqz v8, :cond_14b

    if-eqz v9, :cond_14b

    .line 102
    const-string v12, "resolution"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, 0x447a0000    # 1000.0f

    const-string v13, "*"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_14a} :catch_2a4

    goto :goto_14d

    :cond_14b
    const/high16 p1, 0x447a0000    # 1000.0f

    :goto_14d
    if-eqz v8, :cond_159

    .line 106
    :try_start_14f
    const-string v12, "width"

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    float-to-double v4, v8

    invoke-virtual {v11, v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_159
    if-eqz v9, :cond_165

    .line 109
    const-string v4, "height"

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v8, v5

    invoke-virtual {v11, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_165} :catch_165

    .line 112
    :catch_165
    :cond_165
    :try_start_165
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_169} :catch_2a4

    const-string v4, "size"

    if-eqz v2, :cond_19b

    .line 113
    :try_start_16d
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_17d} :catch_2a4

    if-eqz v2, :cond_196

    .line 116
    :try_start_17f
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_186} :catch_189
    .catchall {:try_start_17f .. :try_end_186} :catchall_187

    goto :goto_18d

    :catchall_187
    move-exception v0

    goto :goto_192

    :catch_189
    const/4 v15, 0x0

    .line 122
    :try_start_18a
    invoke-virtual {v11, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18d
    .catchall {:try_start_18a .. :try_end_18d} :catchall_187

    .line 121
    :goto_18d
    :try_start_18d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_190
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_190} :catch_2a4

    :catch_190
    const/4 v15, 0x0

    goto :goto_1a8

    .line 125
    :goto_192
    :try_start_192
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_195
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_195} :catch_2a4

    .line 128
    :catch_195
    :try_start_195
    throw v0

    :cond_196
    const/4 v15, 0x0

    .line 130
    invoke-virtual {v11, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1a8

    :cond_19b
    const/4 v15, 0x0

    .line 133
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v11, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1a8
    const/16 v2, 0x20

    .line 135
    invoke-virtual {v6, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1b2} :catch_2a4

    const-string v5, "fps"

    if-eqz v4, :cond_205

    .line 137
    :try_start_1b6
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 138
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 139
    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_1db

    .line 141
    :cond_1c9
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lio/dcloud/common/util/FileUtil;->getVideoFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1db

    .line 143
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v1, v8}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 146
    :cond_1db
    :goto_1db
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    :goto_1df
    if-ge v15, v1, :cond_218

    .line 148
    invoke-virtual {v2, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1e5} :catch_2a4

    .line 150
    :try_start_1e5
    const-string v8, "mime"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_202

    const-string v9, "video/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_202

    .line 152
    const-string v8, "frame-rate"

    invoke-virtual {v4, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 153
    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_202} :catch_202

    :catch_202
    :cond_202
    add-int/lit8 v15, v15, 0x1

    goto :goto_1df

    .line 159
    :cond_205
    :try_start_205
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-virtual {v11, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_218} :catch_218

    .line 161
    :catch_218
    :cond_218
    :try_start_218
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x717

    if-eq v1, v2, :cond_23f

    const v0, 0xbee9

    if-eq v1, v0, :cond_234

    const v0, 0xc28b

    if-eq v1, v0, :cond_22b

    goto :goto_248

    :cond_22b
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 166
    const-string v0, "left"

    goto :goto_24a

    .line 167
    :cond_234
    const-string v0, "180"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 175
    const-string v0, "down"

    goto :goto_24a

    .line 176
    :cond_23f
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 178
    const-string v0, "right"

    goto :goto_24a

    .line 187
    :cond_248
    :goto_248
    const-string v0, "up"

    .line 189
    :goto_24a
    const-string v1, "orientation"

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0xc

    .line 190
    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_260

    .line 192
    const-string v1, "type"

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_260
    const/16 v0, 0x14

    .line 194
    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_26a} :catch_2a4

    if-nez v1, :cond_27e

    .line 196
    :try_start_26c
    const-string v1, "bitrate"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_27b} :catch_27e

    goto :goto_27e

    :cond_27c
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 199
    :catch_27e
    :cond_27e
    :goto_27e
    :try_start_27e
    const-string v0, "duration"

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_294} :catch_294

    .line 200
    :catch_294
    :try_start_294
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2a3} :catch_2a4

    goto :goto_2cc

    :catch_2a4
    move-exception v0

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 204
    :try_start_2aa
    const-string v2, "code"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2ba
    .catch Lorg/json/JSONException; {:try_start_2aa .. :try_end_2ba} :catch_2ba

    .line 208
    :catch_2ba
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_2cc

    :cond_2ca
    move-object/from16 v3, p0

    :goto_2cc
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 483
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_22

    aget-object v0, p2, v2

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 485
    :try_start_d
    new-instance v0, Lorg/json/JSONArray;

    aget-object p2, p2, v2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->jsonArrayToStringArr(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p2

    .line 487
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p2, 0x8

    .line 488
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_22
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 51
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 53
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    .line 1
    :try_start_1
    aget-object v7, p2, v0

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 p2, 0xf

    .line 4
    invoke-direct {p0, p2, p1, p3}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_17
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 8
    invoke-interface {v0, v7}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    .line 9
    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x1

    .line 10
    aget-object v1, p2, v1

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_32

    goto :goto_3f

    .line 14
    :cond_32
    new-instance v1, Lio/dcloud/js/file/FileFeatureImpl$f;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_47

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    :try_start_38
    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$f;-><init>(Lio/dcloud/js/file/FileFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    return-void

    :cond_3f
    :goto_3f
    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    const/4 p1, 0x4

    .line 15
    invoke-direct {p0, p1, v4, v5}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_4a

    return-void

    :catch_47
    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    :catch_4a
    const/16 p1, 0xa

    .line 50
    invoke-direct {p0, p1, v4, v5}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_www/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_25
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_doc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4a
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_documents/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_6f
    sget-object v0, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_downloads/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_94
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p1}, Lio/dcloud/js/file/FileFeatureImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    const/4 v0, -0x1

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_4c

    .line 8
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_22
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 p1, 0x2

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_30
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 p1, 0x3

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3e
    sget-object v1, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 p1, 0x4

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4c
    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "_www"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 2
    const-string v0, "_downloads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 3
    const-string v0, "_www/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_documents/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 4
    const-string v0, "_downloads/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "_doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_43

    :cond_41
    const/4 p1, 0x0

    return p1

    :cond_43
    :goto_43
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 27

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "MD5"

    const/4 v6, 0x0

    .line 1
    aget-object v7, v1, v6

    .line 3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    .line 4
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Io-"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result v4

    .line 6
    invoke-interface {v3, v6}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    const/4 v5, -0x1

    .line 7
    invoke-interface {v3, v5}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lio/dcloud/js/file/FileFeatureImpl;->b:Ljava/lang/String;

    const/4 v8, 0x1

    .line 8
    invoke-interface {v3, v8}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    const/4 v9, 0x2

    .line 9
    invoke-interface {v3, v9}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    const/4 v10, 0x3

    .line 10
    invoke-interface {v3, v10}, Lio/dcloud/common/DHInterface/IApp;->getPathByType(B)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v17, 0x3

    sparse-switch v11, :sswitch_data_d1e

    :goto_5b
    const/4 v11, -0x1

    goto/16 :goto_1a2

    :sswitch_5e
    const-string v11, "chooseFile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_67

    goto :goto_5b

    :cond_67
    const/16 v11, 0x18

    goto/16 :goto_1a2

    :sswitch_6b
    const-string v11, "readEntries"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_74

    goto :goto_5b

    :cond_74
    const/16 v11, 0x17

    goto/16 :goto_1a2

    :sswitch_78
    const-string v11, "truncate"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_81

    goto :goto_5b

    :cond_81
    const/16 v11, 0x16

    goto/16 :goto_1a2

    :sswitch_85
    const-string v11, "getMetadata"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8e

    goto :goto_5b

    :cond_8e
    const/16 v11, 0x15

    goto/16 :goto_1a2

    :sswitch_92
    const-string v11, "resolveLocalFileSystemURL"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9b

    goto :goto_5b

    :cond_9b
    const/16 v11, 0x14

    goto/16 :goto_1a2

    :sswitch_9f
    const-string v11, "removeRecursively"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a8

    goto :goto_5b

    :cond_a8
    const/16 v11, 0x13

    goto/16 :goto_1a2

    :sswitch_ac
    const-string v11, "getFileInfo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b5

    goto :goto_5b

    :cond_b5
    const/16 v11, 0x12

    goto/16 :goto_1a2

    :sswitch_b9
    const-string v11, "getVideoInfo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c2

    goto :goto_5b

    :cond_c2
    const/16 v11, 0x11

    goto/16 :goto_1a2

    :sswitch_c6
    const-string v11, "readAsBase64"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cf

    goto :goto_5b

    :cond_cf
    const/16 v11, 0x10

    goto/16 :goto_1a2

    :sswitch_d3
    const-string v11, "getParent"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_dd

    goto/16 :goto_5b

    :cond_dd
    const/16 v11, 0xf

    goto/16 :goto_1a2

    :sswitch_e1
    const-string v11, "writeAsBinary"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_eb

    goto/16 :goto_5b

    :cond_eb
    const/16 v11, 0xe

    goto/16 :goto_1a2

    :sswitch_ef
    const-string v11, "readAsDataURL"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f9

    goto/16 :goto_5b

    :cond_f9
    const/16 v11, 0xd

    goto/16 :goto_1a2

    :sswitch_fd
    const-string v11, "convertAbsoluteFileSystem"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_107

    goto/16 :goto_5b

    :cond_107
    const/16 v11, 0xc

    goto/16 :goto_1a2

    :sswitch_10b
    const-string v11, "getAudioInfo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_115

    goto/16 :goto_5b

    :cond_115
    const/16 v11, 0xb

    goto/16 :goto_1a2

    :sswitch_119
    const-string v11, "write"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_123

    goto/16 :goto_5b

    :cond_123
    const/16 v11, 0xa

    goto/16 :goto_1a2

    :sswitch_127
    const-string v11, "getFile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_131

    goto/16 :goto_5b

    :cond_131
    const/16 v11, 0x9

    goto/16 :goto_1a2

    :sswitch_135
    const-string v11, "getFileMetadata"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13f

    goto/16 :goto_5b

    :cond_13f
    const/16 v11, 0x8

    goto/16 :goto_1a2

    :sswitch_143
    const-string v11, "getImageInfo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14d

    goto/16 :goto_5b

    :cond_14d
    const/4 v11, 0x7

    goto :goto_1a2

    :sswitch_14f
    const-string v11, "remove"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_159

    goto/16 :goto_5b

    :cond_159
    const/4 v11, 0x6

    goto :goto_1a2

    :sswitch_15b
    const-string v11, "convertLocalFileSystemURL"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_165

    goto/16 :goto_5b

    :cond_165
    const/4 v11, 0x5

    goto :goto_1a2

    :sswitch_167
    const-string v11, "getDirectory"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_171

    goto/16 :goto_5b

    :cond_171
    const/4 v11, 0x4

    goto :goto_1a2

    :sswitch_173
    const-string v11, "readAsText"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17d

    goto/16 :goto_5b

    :cond_17d
    const/4 v11, 0x3

    goto :goto_1a2

    :sswitch_17f
    const-string v11, "moveTo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_189

    goto/16 :goto_5b

    :cond_189
    const/4 v11, 0x2

    goto :goto_1a2

    :sswitch_18b
    const-string v11, "requestFileSystem"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_195

    goto/16 :goto_5b

    :cond_195
    const/4 v11, 0x1

    goto :goto_1a2

    :sswitch_197
    const-string v11, "copyTo"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a1

    goto/16 :goto_5b

    :cond_1a1
    const/4 v11, 0x0

    :goto_1a2
    const-string v14, "/android_asset"

    const-string v13, "android_asset/"

    const-string v15, "/android_asset/"

    const/16 v19, 0x2

    const-string v9, "filePath"

    const-string v5, "apps/"

    const-string v12, ""

    const-string v10, "/"

    const/16 v20, 0x0

    packed-switch v11, :pswitch_data_d84

    move-object/from16 v11, p0

    goto/16 :goto_d1c

    .line 927
    :pswitch_1bb
    aget-object v5, v1, v6

    .line 929
    array-length v0, v1

    if-le v0, v8, :cond_1db

    aget-object v0, v1, v8

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 931
    :try_start_1c8
    new-instance v0, Lorg/json/JSONObject;

    aget-object v1, v1, v8

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 932
    const-string v1, "multiple"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d5} :catch_1d7

    move v7, v0

    goto :goto_1dc

    :catch_1d7
    move-exception v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1db
    const/4 v7, 0x0

    .line 937
    :goto_1dc
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v2

    .line 938
    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$e;

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/js/file/FileFeatureImpl$e;-><init>(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v11, v1

    move-object v1, v0

    move v0, v2

    move-object v2, v4

    sget-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v1, v4}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 984
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    if-nez v7, :cond_201

    .line 986
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_204

    .line 988
    :cond_201
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 994
    :goto_204
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d1c

    :pswitch_217
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 997
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_223

    goto/16 :goto_d1c

    .line 1001
    :cond_223
    aget-object v0, v0, v6

    .line 1002
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_241

    invoke-static {v0}, Lio/dcloud/common/util/FileUtil;->getPathForPublicType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23a

    goto :goto_241

    :cond_23a
    const/16 v1, 0xf

    .line 1004
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 1007
    :cond_241
    :goto_241
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24d

    if-eqz v4, :cond_24d

    :goto_249
    move-object/from16 v0, v20

    const/4 v8, 0x0

    goto :goto_25b

    .line 1014
    :cond_24d
    :try_start_24d
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/js/file/a;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_255} :catch_256

    goto :goto_25b

    :catch_256
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_249

    :goto_25b
    if-eqz v8, :cond_264

    .line 1021
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;IZ)V

    goto/16 :goto_d1c

    :cond_264
    const/16 v1, 0xa

    .line 1023
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_26b
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 1444
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_277

    goto/16 :goto_d1c

    .line 1451
    :cond_277
    :try_start_277
    aget-object v1, v0, v6

    .line 1452
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_294

    const/16 v3, 0xf

    .line 1454
    invoke-direct {v11, v3, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_28c} :catch_337
    .catchall {:try_start_277 .. :try_end_28c} :catchall_333

    .line 1488
    invoke-static/range {v20 .. v20}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1489
    invoke-static/range {v20 .. v20}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_d1c

    .line 1490
    :cond_294
    :try_start_294
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1491
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_29e} :catch_337
    .catchall {:try_start_294 .. :try_end_29e} :catchall_333

    .line 1492
    :try_start_29e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1493
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1494
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2d5} :catch_32d
    .catchall {:try_start_29e .. :try_end_2d5} :catchall_32b

    .line 1495
    :try_start_2d5
    aget-object v1, v0, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1496
    aget-object v5, v0, v19

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v12, v5, v1

    const/16 v13, 0x2800

    .line 1497
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1498
    new-array v12, v12, [B

    const/4 v13, 0x0

    .line 1501
    :goto_2ec
    invoke-virtual {v9, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_30d

    sub-int v15, v1, v13

    const/16 v21, 0x1

    sub-int v8, v14, v5

    .line 1502
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-lez v8, :cond_303

    .line 1504
    invoke-virtual {v10, v12, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v13, v8

    :cond_303
    if-lt v13, v1, :cond_306

    goto :goto_30f

    :cond_306
    if-lez v5, :cond_30a

    sub-int/2addr v5, v14

    goto :goto_30b

    :cond_30a
    const/4 v5, 0x0

    :goto_30b
    const/4 v8, 0x1

    goto :goto_2ec

    :cond_30d
    const/16 v21, 0x1

    .line 1514
    :goto_30f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1515
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1516
    aget-object v3, v0, v21

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I
    :try_end_319
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_319} :catch_327
    .catchall {:try_start_2d5 .. :try_end_319} :catchall_325

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v7

    :try_start_31d
    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_320} :catch_321
    .catchall {:try_start_31d .. :try_end_320} :catchall_325

    goto :goto_345

    :catch_321
    move-exception v0

    move-object v7, v1

    move-object v8, v2

    goto :goto_33d

    :catchall_325
    move-exception v0

    goto :goto_352

    :catch_327
    move-exception v0

    move-object v8, v7

    move-object v7, v2

    goto :goto_33d

    :catchall_32b
    move-exception v0

    goto :goto_354

    :catch_32d
    move-exception v0

    move-object v8, v7

    move-object v7, v2

    move-object/from16 v10, v20

    goto :goto_33d

    :catchall_333
    move-exception v0

    move-object/from16 v10, v20

    goto :goto_350

    :catch_337
    move-exception v0

    move-object v8, v7

    move-object v7, v2

    move-object/from16 v9, v20

    move-object v10, v9

    .line 1523
    :goto_33d
    :try_start_33d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0xa

    .line 1524
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_345
    .catchall {:try_start_33d .. :try_end_345} :catchall_34d

    .line 1521
    :goto_345
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1522
    invoke-static {v10}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_d1c

    :catchall_34d
    move-exception v0

    move-object/from16 v20, v9

    :goto_350
    move-object/from16 v9, v20

    :goto_352
    move-object/from16 v20, v10

    .line 1526
    :goto_354
    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1527
    invoke-static/range {v20 .. v20}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 1528
    throw v0

    :pswitch_35b
    move-object/from16 v11, p0

    move-object v8, v7

    const/16 v21, 0x1

    move-object/from16 v7, p1

    .line 1529
    invoke-direct {v11, v7, v1, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36a

    goto/16 :goto_d1c

    .line 1533
    :cond_36a
    aget-object v1, v0, v6

    .line 1534
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38c

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_385

    goto :goto_38c

    :cond_385
    const/16 v2, 0xf

    .line 1536
    invoke-direct {v11, v2, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 1539
    :cond_38c
    :goto_38c
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_399

    if-eqz v4, :cond_399

    :goto_394
    move-object/from16 v0, v20

    const/16 v21, 0x0

    goto :goto_3bb

    .line 1547
    :cond_399
    :try_start_399
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b0

    aget-object v2, v0, v21

    if-eqz v2, :cond_3b0

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b0

    .line 1548
    aget-object v0, v0, v21

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3b1

    :cond_3b0
    const/4 v0, 0x0

    .line 1550
    :goto_3b1
    invoke-static {v1, v0}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_3b5} :catch_3b6

    goto :goto_3bb

    :catch_3b6
    move-exception v0

    .line 1552
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_394

    :goto_3bb
    if-eqz v21, :cond_3c4

    .line 1557
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v8, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_d1c

    :cond_3c4
    const/16 v1, 0xa

    .line 1559
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_3cb
    move-object/from16 v11, p0

    move-object v8, v7

    const/16 v21, 0x1

    move-object/from16 v7, p1

    .line 2101
    :try_start_3d2
    invoke-direct {v11, v7, v1, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3da

    goto/16 :goto_d1c

    .line 2109
    :cond_3da
    aget-object v0, v1, v6

    invoke-direct {v11, v0}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f2

    .line 2112
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->isOnAppRunningMode()Z

    move-result v2

    if-eqz v2, :cond_3f2

    aget-object v2, v1, v6

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f2

    const/4 v2, 0x1

    goto :goto_3f3

    :cond_3f2
    const/4 v2, 0x0

    .line 2114
    :goto_3f3
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-interface {v3, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_425

    .line 2116
    invoke-direct {v11, v13}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2117
    const-string v12, "_www"

    const-string v15, "_www"

    const-string v1, "fsName"

    .line 2118
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "fsRoot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const/4 v14, 0x1

    .line 2119
    invoke-static/range {v12 .. v18}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2121
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v8, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_d1c

    .line 2123
    :cond_425
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_42e
    .catch Lorg/json/JSONException; {:try_start_3d2 .. :try_end_42e} :catch_486

    if-nez v3, :cond_452

    if-eqz v0, :cond_452

    .line 2127
    :try_start_432
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_43f

    .line 2129
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2131
    :cond_43f
    invoke-static {v13}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v0
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_447} :catch_44e

    const/4 v3, 0x1

    if-ne v3, v0, :cond_44c

    const/4 v3, 0x1

    goto :goto_452

    :cond_44c
    const/4 v3, 0x0

    goto :goto_452

    :catch_44e
    move-exception v0

    .line 2133
    :try_start_44f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_452
    :goto_452
    if-eqz v3, :cond_47f

    .line 2137
    invoke-direct {v11, v13}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2138
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v14

    aget-object v15, v1, v6

    const-string v1, "fsName"

    .line 2139
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v1, "fsRoot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 2140
    invoke-static/range {v12 .. v18}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2142
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v8, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_d1c

    :cond_47f
    const/16 v1, 0xe

    .line 2144
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_484
    .catch Lorg/json/JSONException; {:try_start_44f .. :try_end_484} :catch_486

    goto/16 :goto_d1c

    :catch_486
    const/16 v1, 0xa

    .line 2149
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_48d
    move-object/from16 v11, p0

    move-object v8, v7

    move-object/from16 v7, p1

    .line 2150
    invoke-direct {v11, v7, v1, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49a

    goto/16 :goto_d1c

    .line 2154
    :cond_49a
    aget-object v1, v0, v6

    invoke-static {v7, v8, v1}, Lio/dcloud/common/util/JSUtil;->checkOperateDirErrorAndCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a3

    return-object v20

    .line 2157
    :cond_4a3
    aget-object v0, v0, v6

    .line 2158
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4ba

    const/16 v1, 0xf

    .line 2160
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 2163
    :cond_4ba
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_504

    .line 2166
    :try_start_4c5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4fe
    .catch Ljava/io/IOException; {:try_start_4c5 .. :try_end_4fe} :catch_500

    move-object v1, v2

    goto :goto_504

    :catch_500
    move-exception v0

    .line 2170
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2173
    :cond_504
    :goto_504
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_511

    .line 2174
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v7, v8, v12, v0, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_d1c

    :cond_511
    const/16 v1, 0xa

    .line 2176
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_518
    const/4 v4, 0x0

    move-object/from16 v11, p0

    move-object v8, v7

    move-object/from16 v7, p1

    .line 2453
    aget-object v6, v1, v4

    .line 2457
    :try_start_520
    new-instance v0, Lorg/json/JSONObject;

    const/16 v21, 0x1

    aget-object v1, v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_52d
    .catch Lorg/json/JSONException; {:try_start_520 .. :try_end_52d} :catch_536

    .line 2459
    :try_start_52d
    const-string v9, "digestAlgorithm"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_533
    .catch Lorg/json/JSONException; {:try_start_52d .. :try_end_533} :catch_534

    goto :goto_538

    :catch_534
    nop

    goto :goto_538

    :catch_536
    nop

    move-object v1, v12

    .line 2462
    :goto_538
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1c

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d1c

    .line 2463
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    const-string v9, "content://"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5bf

    .line 2468
    :try_start_558
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_568
    .catch Ljava/io/IOException; {:try_start_558 .. :try_end_568} :catch_5ad
    .catchall {:try_start_558 .. :try_end_568} :catchall_5aa

    if-nez v9, :cond_578

    const/16 v1, 0xe

    .line 2470
    :try_start_56c
    invoke-direct {v11, v1, v7, v8}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_56f
    .catch Ljava/io/IOException; {:try_start_56c .. :try_end_56f} :catch_5a6
    .catchall {:try_start_56c .. :try_end_56f} :catchall_5a1

    if-eqz v9, :cond_d1c

    .line 2510
    :try_start_571
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_574
    .catch Ljava/io/IOException; {:try_start_571 .. :try_end_574} :catch_576

    goto/16 :goto_d1c

    :catch_576
    move-exception v0

    goto :goto_596

    .line 2513
    :cond_578
    :try_start_578
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_57c
    .catch Ljava/io/IOException; {:try_start_578 .. :try_end_57c} :catch_5a6
    .catchall {:try_start_578 .. :try_end_57c} :catchall_5a1

    .line 2515
    :try_start_57c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_57f
    .catch Ljava/lang/Exception; {:try_start_57c .. :try_end_57f} :catch_57f
    .catchall {:try_start_57c .. :try_end_57f} :catchall_5a1

    .line 2519
    :catch_57f
    :try_start_57f
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v10

    move-object v3, v0

    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;
    :try_end_586
    .catch Ljava/io/IOException; {:try_start_57f .. :try_end_586} :catch_5a6
    .catchall {:try_start_57f .. :try_end_586} :catchall_5a1

    move-object v4, v2

    move-object v2, v7

    move-object v7, v8

    move-object v1, v11

    :try_start_58a
    invoke-direct/range {v0 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_58d
    .catch Ljava/io/IOException; {:try_start_58a .. :try_end_58d} :catch_59e
    .catchall {:try_start_58a .. :try_end_58d} :catchall_59b

    move-object v11, v1

    :try_start_58e
    invoke-virtual {v10, v0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V
    :try_end_591
    .catch Ljava/io/IOException; {:try_start_58e .. :try_end_591} :catch_5a6
    .catchall {:try_start_58e .. :try_end_591} :catchall_5a1

    .line 2550
    :try_start_591
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_594
    .catch Ljava/io/IOException; {:try_start_591 .. :try_end_594} :catch_576

    goto/16 :goto_d1c

    .line 2512
    :goto_596
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_d1c

    :catchall_59b
    move-exception v0

    move-object v11, v1

    goto :goto_5a2

    :catch_59e
    move-exception v0

    move-object v11, v1

    goto :goto_5a7

    :catchall_5a1
    move-exception v0

    :goto_5a2
    move-object v1, v0

    move-object/from16 v20, v9

    goto :goto_5b4

    :catch_5a6
    move-exception v0

    :goto_5a7
    move-object/from16 v20, v9

    goto :goto_5ae

    :catchall_5aa
    move-exception v0

    move-object v1, v0

    goto :goto_5b4

    :catch_5ad
    move-exception v0

    .line 2551
    :goto_5ae
    :try_start_5ae
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5b4
    .catchall {:try_start_5ae .. :try_end_5b4} :catchall_5aa

    :goto_5b4
    if-eqz v20, :cond_5be

    .line 2555
    :try_start_5b6
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_5b9
    .catch Ljava/io/IOException; {:try_start_5b6 .. :try_end_5b9} :catch_5ba

    goto :goto_5be

    :catch_5ba
    move-exception v0

    .line 2557
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2560
    :cond_5be
    :goto_5be
    throw v1

    :cond_5bf
    move-object/from16 v22, v8

    move-object v8, v2

    move-object v2, v7

    move-object/from16 v7, v22

    .line 2563
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 p2, 0x0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5e2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e0

    goto :goto_5e2

    :cond_5e0
    const/4 v1, 0x0

    goto :goto_5e3

    :cond_5e2
    :goto_5e2
    const/4 v1, 0x1

    :goto_5e3
    if-nez v1, :cond_5ec

    const/16 v1, 0xf

    .line 2565
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 2568
    :cond_5ec
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5fe

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2570
    :cond_5fe
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_609

    .line 2571
    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_615

    .line 2572
    :cond_609
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_615

    .line 2573
    const-string v1, "android_asset"

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2575
    :cond_615
    :goto_615
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2576
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_646

    const/4 v0, -0x4

    .line 2578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, p2

    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/16 v21, 0x1

    aput-object v0, v1, v21

    const-string v0, "{code:%d,message:\'%s\'}"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2579
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    move-object v2, v6

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_d1c

    .line 2582
    :cond_646
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v7

    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$d;

    move-object/from16 v4, p1

    move-object v5, v6

    move-object v3, v8

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lio/dcloud/js/file/FileFeatureImpl$d;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/io/File;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto/16 :goto_d1c

    :pswitch_659
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 2583
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_665

    goto/16 :goto_d1c

    .line 2587
    :cond_665
    invoke-direct {v11, v2, v3, v0, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_66a
    const/16 p2, 0x0

    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 2699
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_678

    goto/16 :goto_d1c

    .line 2704
    :cond_678
    aget-object v0, v0, p2

    .line 2705
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69a

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_693

    goto :goto_69a

    :cond_693
    const/16 v1, 0xf

    .line 2707
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :cond_69a
    :goto_69a
    if-eqz v0, :cond_6a7

    .line 2710
    invoke-direct {v11, v0}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a7

    const/4 v1, 0x4

    .line 2711
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 2714
    :cond_6a7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6cf

    .line 2716
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 2717
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2719
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    invoke-static {v2, v7, v0, v1, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    const/4 v6, 0x1

    goto :goto_6d1

    :cond_6cf
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6d1
    if-nez v6, :cond_d1c

    const/16 v1, 0xa

    .line 2722
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_6da
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 2723
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6e6

    goto/16 :goto_d1c

    .line 2727
    :cond_6e6
    invoke-direct {v11, v2, v0, v7}, Lio/dcloud/js/file/FileFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_6eb
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 2915
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f7

    goto/16 :goto_d1c

    .line 2919
    :cond_6f7
    aget-object v1, v0, v6

    .line 2920
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_70e

    const/16 v5, 0xf

    .line 2922
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 2925
    :cond_70e
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v3

    const/16 v21, 0x1

    .line 2926
    aget-object v5, v0, v21

    invoke-static {v5, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v19, 0x2

    .line 2927
    aget-object v0, v0, v19

    const/4 v15, -0x1

    invoke-static {v0, v15}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v3, :cond_72e

    if-eqz v4, :cond_72e

    const/16 v3, 0xa

    .line 2929
    invoke-direct {v11, v3, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :cond_72e
    move v3, v0

    .line 2931
    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$b;

    move v4, v5

    move-object v6, v7

    move-object v5, v2

    move-object v2, v1

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lio/dcloud/js/file/FileFeatureImpl$b;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto/16 :goto_d1c

    :pswitch_73e
    move-object/from16 v11, p0

    .line 3063
    aget-object v0, v1, v6

    .line 3064
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_74c
    const/4 v3, 0x1

    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 3291
    aget-object v4, v1, v6

    .line 3294
    :try_start_753
    new-instance v5, Lorg/json/JSONObject;

    aget-object v1, v1, v3

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_75e
    .catch Lorg/json/JSONException; {:try_start_753 .. :try_end_75e} :catch_75e

    .line 3298
    :catch_75e
    invoke-direct {v11, v12, v4, v2, v0}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_763
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 3299
    :try_start_767
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76f

    goto/16 :goto_d1c

    .line 3303
    :cond_76f
    aget-object v1, v0, v6

    .line 3304
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_786

    const/16 v5, 0xf

    .line 3306
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 3309
    :cond_786
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v3

    const/16 v19, 0x2

    .line 3310
    aget-object v4, v0, v19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v21, 0x1

    .line 3311
    aget-object v0, v0, v21

    if-eqz v0, :cond_7b5

    if-eqz v3, :cond_79f

    goto :goto_7b5

    .line 3315
    :cond_79f
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3316
    invoke-static {v0, v4, v1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 3317
    array-length v0, v0

    int-to-double v3, v0

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I
    :try_end_7aa
    .catch Ljava/lang/Exception; {:try_start_767 .. :try_end_7aa} :catch_7ba

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v7

    :try_start_7ad
    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V
    :try_end_7b0
    .catch Ljava/lang/Exception; {:try_start_7ad .. :try_end_7b0} :catch_7b2

    goto/16 :goto_d1c

    :catch_7b2
    move-object v7, v2

    move-object v2, v1

    goto :goto_7ba

    :cond_7b5
    :goto_7b5
    const/4 v1, 0x4

    .line 3318
    :try_start_7b6
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_7b9
    .catch Ljava/lang/Exception; {:try_start_7b6 .. :try_end_7b9} :catch_7ba

    return-object v20

    :catch_7ba
    :goto_7ba
    const/16 v1, 0xa

    .line 3325
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_7c1
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 3370
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7cd

    goto/16 :goto_d1c

    .line 3374
    :cond_7cd
    aget-object v1, v0, v6

    const/16 v21, 0x1

    aget-object v4, v0, v21

    invoke-interface {v3, v1, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3375
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7ec

    const/16 v5, 0xf

    .line 3377
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 3380
    :cond_7ec
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3382
    :try_start_7f1
    new-instance v5, Lorg/json/JSONObject;

    const/16 v19, 0x2

    aget-object v8, v0, v19

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    .line 3383
    aget-object v0, v0, v21

    .line 3384
    const-string v0, "create"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3385
    const-string v8, "exclusive"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3387
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_82f

    if-eqz v0, :cond_829

    .line 3389
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v0

    .line 3390
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v15, -0x1

    if-eq v0, v15, :cond_823

    const/4 v8, -0x2

    if-ne v0, v8, :cond_83d

    if-nez v5, :cond_823

    goto :goto_83d

    .line 3392
    :cond_823
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_829
    const/16 v1, 0xe

    .line 3395
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    :cond_82f
    if-eqz v0, :cond_839

    if-eqz v5, :cond_839

    const/16 v0, 0xc

    .line 3399
    invoke-direct {v11, v0, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 3402
    :cond_839
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3404
    :cond_83d
    :goto_83d
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0, v6}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 3405
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_84a
    .catch Ljava/lang/Exception; {:try_start_7f1 .. :try_end_84a} :catch_84c

    goto/16 :goto_d1c

    :catch_84c
    const/16 v1, 0xa

    .line 3407
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_853
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 3408
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_85f

    goto/16 :goto_d1c

    .line 3412
    :cond_85f
    aget-object v0, v0, v6

    .line 3413
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_881

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87a

    goto :goto_881

    :cond_87a
    const/16 v1, 0xf

    .line 3415
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 3418
    :cond_881
    :goto_881
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88d

    if-eqz v4, :cond_88d

    :goto_889
    move-object/from16 v0, v20

    const/4 v8, 0x0

    goto :goto_89c

    .line 3425
    :cond_88d
    :try_start_88d
    invoke-direct {v11, v0}, Lio/dcloud/js/file/FileFeatureImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_895
    .catch Ljava/lang/Exception; {:try_start_88d .. :try_end_895} :catch_897

    const/4 v8, 0x1

    goto :goto_89c

    :catch_897
    move-exception v0

    .line 3427
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_889

    :goto_89c
    if-eqz v8, :cond_8a5

    .line 3432
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_d1c

    :cond_8a5
    const/16 v1, 0xa

    .line 3434
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_8ac
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 3994
    aget-object v0, v1, v6

    const/16 v21, 0x1

    .line 3995
    aget-object v4, v1, v21

    .line 3996
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d1c

    .line 3998
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95c

    .line 4001
    :try_start_8c2
    array-length v3, v1

    const/4 v5, 0x2

    if-le v3, v5, :cond_92d

    aget-object v3, v1, v5

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92d

    .line 4002
    aget-object v1, v1, v5

    .line 4003
    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8e5

    .line 4004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4005
    :cond_8e5
    const-string v3, "image/*"

    invoke-static {v4, v3, v4}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4006
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_911

    .line 4007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4009
    :cond_911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_92f

    :cond_92d
    move-object/from16 v1, v20

    .line 4012
    :goto_92f
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v4, Lio/dcloud/js/file/FileFeatureImpl$c;

    invoke-direct {v4, v11, v1, v2, v0}, Lio/dcloud/js/file/FileFeatureImpl$c;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_947
    .catch Ljava/lang/Exception; {:try_start_8c2 .. :try_end_947} :catch_949

    goto/16 :goto_d1c

    .line 4037
    :catch_949
    const-string v1, "Failed to load resource"

    const/16 v3, 0xd

    invoke-static {v3, v1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_d1c

    .line 4040
    :cond_95c
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4041
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_984

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97d

    goto :goto_984

    :cond_97d
    const/16 v4, 0xf

    .line 4043
    invoke-direct {v11, v4, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 4046
    :cond_984
    :goto_984
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_996

    .line 4047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4048
    :cond_996
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a1

    .line 4049
    invoke-virtual {v1, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9ad

    .line 4050
    :cond_9a1
    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9ad

    .line 4051
    const-string v4, "android_asset"

    invoke-virtual {v1, v4, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4053
    :cond_9ad
    :goto_9ad
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4054
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9c3

    const/16 v3, 0xe

    .line 4055
    invoke-direct {v11, v3, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 4057
    :cond_9c3
    invoke-direct {v11, v1, v2, v0}, Lio/dcloud/js/file/FileFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_9c8
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 4058
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9d4

    goto/16 :goto_d1c

    .line 4062
    :cond_9d4
    aget-object v0, v0, v6

    .line 4063
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9eb

    const/16 v1, 0xf

    .line 4065
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 4068
    :cond_9eb
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f6

    const/4 v1, 0x4

    .line 4071
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 4074
    :cond_9f6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4075
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_a08

    .line 4076
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v12, v0, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_d1c

    :cond_a08
    const/16 v1, 0xa

    .line 4078
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_a0f
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 4646
    aget-object v0, v1, v6

    .line 4647
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a23
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 4648
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a2f

    goto/16 :goto_d1c

    .line 4652
    :cond_a2f
    aget-object v1, v0, v6

    if-eqz v1, :cond_a4c

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4c

    .line 4653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 4655
    :cond_a4c
    aget-object v1, v0, v6

    const/16 v21, 0x1

    aget-object v4, v0, v21

    invoke-interface {v3, v1, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4656
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a6b

    const/16 v5, 0xf

    .line 4658
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 4662
    :cond_a6b
    aget-object v4, v0, v6

    if-eqz v4, :cond_a89

    aget-object v4, v0, v21

    if-eqz v4, :cond_a89

    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_a89

    aget-object v4, v0, v6

    invoke-direct {v11, v4}, Lio/dcloud/js/file/FileFeatureImpl;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a89

    const/4 v4, 0x4

    .line 4663
    invoke-direct {v11, v4, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    .line 4666
    :cond_a89
    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a9e

    .line 4667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4669
    :cond_a9e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4671
    :try_start_aa3
    new-instance v5, Lorg/json/JSONObject;

    const/16 v19, 0x2

    aget-object v8, v0, v19

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4672
    const-string v8, "create"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 4673
    const-string v9, "exclusive"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 4675
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_ad9

    if-eqz v8, :cond_ad3

    .line 4677
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_acd

    const/4 v8, -0x2

    if-ne v4, v8, :cond_ae2

    if-nez v5, :cond_acd

    goto :goto_ae2

    .line 4679
    :cond_acd
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ad3
    const/16 v3, 0xe

    .line 4682
    invoke-direct {v11, v3, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-object v20

    :cond_ad9
    if-eqz v5, :cond_ae2

    if-eqz v5, :cond_ae2

    const/16 v4, 0xc

    .line 4688
    invoke-direct {v11, v4, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_ae2
    :goto_ae2
    const/4 v4, 0x1

    .line 4690
    aget-object v0, v0, v4

    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4691
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v3, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_af2
    .catch Ljava/lang/Exception; {:try_start_aa3 .. :try_end_af2} :catch_af4

    goto/16 :goto_d1c

    .line 4693
    :catch_af4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Not Found "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 4694
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_b0c
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 4695
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b18

    goto/16 :goto_d1c

    .line 4699
    :cond_b18
    aget-object v1, v0, v6

    .line 4700
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b2f

    const/16 v5, 0xf

    .line 4702
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 4705
    :cond_b2f
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v3

    const/16 v21, 0x1

    .line 4706
    aget-object v5, v0, v21

    const/16 v19, 0x2

    .line 4707
    aget-object v8, v0, v19

    invoke-static {v8, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 4708
    aget-object v0, v0, v17

    const/4 v15, -0x1

    invoke-static {v0, v15}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v3, :cond_b51

    if-eqz v4, :cond_b51

    const/16 v3, 0xa

    .line 4710
    invoke-direct {v11, v3, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :cond_b51
    move v3, v0

    .line 4712
    new-instance v0, Lio/dcloud/js/file/FileFeatureImpl$a;

    move v4, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lio/dcloud/js/file/FileFeatureImpl$a;-><init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    goto/16 :goto_d1c

    :pswitch_b60
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 4713
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b6c

    goto/16 :goto_d1c

    .line 4717
    :cond_b6c
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x1

    aget-object v5, v0, v21

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x2

    aget-object v5, v0, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4718
    aget-object v4, v0, v6

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bfc

    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b9a

    goto :goto_bfc

    .line 4722
    :cond_b9a
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-interface {v3, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4723
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bb9

    const/16 v5, 0xf

    .line 4725
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    .line 4728
    :cond_bb9
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4729
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 4731
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4732
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_bdf

    .line 4734
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 4735
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_bda

    .line 4736
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 4738
    :cond_bda
    invoke-virtual {v5, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    goto :goto_be0

    :cond_bdf
    const/4 v5, 0x0

    :goto_be0
    if-eqz v5, :cond_bf5

    const/16 v19, 0x2

    .line 4741
    aget-object v0, v0, v19

    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 4742
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_d1c

    :cond_bf5
    const/16 v1, 0xa

    .line 4744
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :cond_bfc
    :goto_bfc
    const/16 v1, 0xa

    .line 4720
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_c03
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 5057
    :try_start_c07
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c0f

    goto/16 :goto_d1c

    .line 5061
    :cond_c0f
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c55

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c47

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c39

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c2b

    .line 5077
    const-string v0, "PUBLIC_DEVICE_ROOT"

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v0, v3, v1, v1, v1}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_c62

    .line 5078
    :cond_c2b
    const-string v0, "PUBLIC_DOWNLOADS"

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    sget-object v3, Lio/dcloud/js/file/FileFeatureImpl;->e:Ljava/lang/String;

    const-string v4, "_downloads"

    const/4 v5, 0x4

    invoke-static {v0, v5, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_c62

    .line 5079
    :cond_c39
    const-string v0, "PUBLIC_DOCUMENTS"

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOCUMENTS_DIR:Ljava/lang/String;

    sget-object v3, Lio/dcloud/js/file/FileFeatureImpl;->d:Ljava/lang/String;

    const-string v4, "_documents"

    const/4 v5, 0x3

    invoke-static {v0, v5, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_c62

    .line 5080
    :cond_c47
    const-string v0, "PRIVATE_DOCUMENTS"

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    sget-object v3, Lio/dcloud/js/file/FileFeatureImpl;->c:Ljava/lang/String;

    const-string v4, "_doc"

    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_c62

    .line 5081
    :cond_c55
    const-string v0, "PRIVATE_WWW"

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    sget-object v3, Lio/dcloud/js/file/FileFeatureImpl;->a:Ljava/lang/String;

    const-string v4, "_www"

    const/4 v5, 0x1

    invoke-static {v0, v5, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5096
    :goto_c62
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_c67
    .catch Ljava/lang/Exception; {:try_start_c07 .. :try_end_c67} :catch_c69

    goto/16 :goto_d1c

    :catch_c69
    move-exception v0

    .line 5098
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0xa

    .line 5099
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_d1c

    :pswitch_c74
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    .line 5100
    invoke-direct {v11, v2, v1, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c80

    goto/16 :goto_d1c

    :cond_c80
    const/16 v21, 0x1

    .line 5104
    aget-object v1, v0, v21

    if-eqz v1, :cond_ca3

    .line 5105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v21

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v21

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9b

    goto :goto_c9c

    :cond_c9b
    move-object v12, v5

    :goto_c9c
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5109
    :cond_ca3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x2

    aget-object v1, v0, v19

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5110
    aget-object v4, v0, v6

    .line 5111
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_cd7

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd1

    goto :goto_cd7

    :cond_cd1
    const/16 v5, 0xf

    .line 5113
    invoke-direct {v11, v5, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_d1c

    .line 5116
    :cond_cd7
    :goto_cd7
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d17

    .line 5120
    :try_start_cdd
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d17

    .line 5122
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf3

    .line 5123
    invoke-static {v4, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d17

    :goto_cf0
    const/16 v19, 0x2

    goto :goto_cfa

    .line 5126
    :cond_cf3
    invoke-static {v4, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_cf7
    .catch Ljava/io/IOException; {:try_start_cdd .. :try_end_cf7} :catch_d13

    if-eqz v4, :cond_d17

    goto :goto_cf0

    .line 5135
    :goto_cfa
    aget-object v0, v0, v19

    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lio/dcloud/js/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 5136
    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, v7, v0, v1, v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_d1c

    :catch_d13
    move-exception v0

    .line 5132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d17
    const/16 v1, 0xa

    .line 5138
    invoke-direct {v11, v1, v2, v7}, Lio/dcloud/js/file/FileFeatureImpl;->a(ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_d1c
    :goto_d1c
    return-object v20

    nop

    :sswitch_data_d1e
    .sparse-switch
        -0x50bf4f30 -> :sswitch_197
        -0x48fb9146 -> :sswitch_18b
        -0x3fac69d4 -> :sswitch_17f
        -0x3ca3664b -> :sswitch_173
        -0x39f27049 -> :sswitch_167
        -0x381a8bf4 -> :sswitch_15b
        -0x37b5077c -> :sswitch_14f
        -0x34ef320d -> :sswitch_143
        -0x574d4bf -> :sswitch_135
        -0x480a20e -> :sswitch_127
        0x6c257df -> :sswitch_119
        0xaa00aee -> :sswitch_10b
        0x1350fab5 -> :sswitch_fd
        0x1f8c3fdd -> :sswitch_ef
        0x284c03d2 -> :sswitch_e1
        0x29c22ba0 -> :sswitch_d3
        0x3faaefd7 -> :sswitch_c6
        0x4edba913 -> :sswitch_b9
        0x4ffdedc0 -> :sswitch_ac
        0x50a1221b -> :sswitch_9f
        0x5db49c05 -> :sswitch_92
        0x6107b8a5 -> :sswitch_85
        0x6e724d66 -> :sswitch_78
        0x750fee1a -> :sswitch_6b
        0x7897fc33 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_d84
    .packed-switch 0x0
        :pswitch_c74
        :pswitch_c03
        :pswitch_b60
        :pswitch_b0c
        :pswitch_a23
        :pswitch_a0f
        :pswitch_9c8
        :pswitch_8ac
        :pswitch_853
        :pswitch_7c1
        :pswitch_763
        :pswitch_74c
        :pswitch_73e
        :pswitch_6eb
        :pswitch_6da
        :pswitch_66a
        :pswitch_659
        :pswitch_74c
        :pswitch_518
        :pswitch_48d
        :pswitch_3cb
        :pswitch_35b
        :pswitch_26b
        :pswitch_217
        :pswitch_1bb
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.a (io.dcloud.js.file.FileFeatureImpl$a)
.class Lio/dcloud/js/file/FileFeatureImpl$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->g:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->a:Ljava/lang/String;

    iput p3, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->b:I

    iput p4, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->c:I

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p7, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->f:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 3
    :cond_12
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->g:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->e:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->f:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_85
    .catchall {:try_start_1 .. :try_end_b} :catchall_82

    .line 2
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_80
    .catchall {:try_start_b .. :try_end_f} :catchall_7c

    .line 4
    :try_start_f
    new-instance v3, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1e
    .catchall {:try_start_f .. :try_end_1c} :catchall_7c

    move-object v1, v3

    goto :goto_22

    :catch_1e
    move-exception v3

    .line 6
    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_22
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_80
    .catchall {:try_start_1f .. :try_end_27} :catchall_7c

    .line 9
    :try_start_27
    iget v4, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->b:I

    const/4 v5, 0x0

    if-lez v4, :cond_42

    if-lt v4, v2, :cond_30

    add-int/lit8 v4, v2, -0x1

    .line 14
    :cond_30
    iget v2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->c:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    .line 15
    new-array v6, v4, [B

    int-to-long v7, v2

    .line 16
    invoke-virtual {v1, v7, v8}, Ljava/io/InputStream;->skip(J)J

    .line 17
    invoke-virtual {v1, v6, v5, v4}, Ljava/io/InputStream;->read([BII)I

    .line 18
    invoke-virtual {v3, v6, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4e

    :cond_42
    :goto_42
    const v2, 0x32000

    .line 21
    new-array v2, v2, [B

    .line 22
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_71

    .line 30
    :goto_4e
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    .line 31
    :cond_5b
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_61
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_65} :catch_77
    .catchall {:try_start_27 .. :try_end_65} :catchall_75

    .line 39
    :try_start_65
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6b} :catch_6c

    goto :goto_a0

    :catch_6c
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a0

    .line 46
    :cond_71
    :try_start_71
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_77
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_42

    :catchall_75
    move-exception v0

    goto :goto_a4

    :catch_77
    move-exception v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_8b

    :catchall_7c
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    goto :goto_a2

    :catch_80
    move-exception v2

    goto :goto_88

    :catchall_82
    move-exception v2

    move-object v3, v0

    goto :goto_a2

    :catch_85
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_88
    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 54
    :goto_8b
    :try_start_8b
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a1

    if-eqz v0, :cond_96

    .line 58
    :try_start_90
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_96

    :catch_94
    move-exception v0

    goto :goto_9c

    :cond_96
    :goto_96
    if-eqz v3, :cond_9f

    .line 61
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9b} :catch_94

    goto :goto_9f

    .line 64
    :goto_9c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9f
    :goto_9f
    move-object v0, v1

    :goto_a0
    return-object v0

    :catchall_a1
    move-exception v2

    :goto_a2
    move-object v1, v0

    move-object v0, v2

    :goto_a4
    if-eqz v1, :cond_ac

    .line 65
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_ac

    :catch_aa
    move-exception v1

    goto :goto_b2

    :cond_ac
    :goto_ac
    if-eqz v3, :cond_b5

    .line 68
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b1} :catch_aa

    goto :goto_b5

    .line 71
    :goto_b2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :cond_b5
    :goto_b5
    throw v0
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.b (io.dcloud.js.file.FileFeatureImpl$b)
.class Lio/dcloud/js/file/FileFeatureImpl$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    iput p3, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:I

    iput p4, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:I

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->d:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 3
    :cond_12
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->e:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 13

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->a:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_8b
    .catchall {:try_start_7 .. :try_end_11} :catchall_87

    .line 4
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 6
    iget v4, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v4, :cond_34

    if-lt v4, v3, :cond_20

    add-int/lit8 v4, v3, -0x1

    .line 11
    :cond_20
    iget v3, p0, Lio/dcloud/js/file/FileFeatureImpl$b;->c:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v7

    .line 12
    new-array v8, v4, [B

    int-to-long v9, v3

    .line 13
    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J

    .line 14
    invoke-virtual {v2, v8, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 15
    invoke-static {v8, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v1

    goto :goto_4d

    .line 17
    :cond_34
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_39} :catch_82
    .catchall {:try_start_11 .. :try_end_39} :catchall_7e

    :goto_39
    const v4, 0x32000

    .line 19
    :try_start_3c
    new-array v4, v4, [B

    .line 20
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7a

    .line 28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4d} :catch_71
    .catchall {:try_start_3c .. :try_end_4d} :catchall_a7

    .line 31
    :goto_4d
    :try_start_4d
    const-string v8, "data:%s;base64,%s"
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4f} :catch_75
    .catchall {:try_start_4d .. :try_end_4f} :catchall_73

    :try_start_4f
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v4, v5, v7
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_71
    .catchall {:try_start_4f .. :try_end_55} :catchall_73

    :try_start_55
    invoke-static {v8, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_75
    .catchall {:try_start_55 .. :try_end_59} :catchall_73

    .line 32
    :try_start_59
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_6c
    .catchall {:try_start_59 .. :try_end_5d} :catchall_73

    .line 38
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz v3, :cond_a6

    .line 41
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_67

    goto/16 :goto_a6

    :catch_67
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a6

    :catch_6c
    move-exception v1

    move-object v11, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_78

    :catch_71
    move-exception v0

    goto :goto_91

    :catchall_73
    move-exception v0

    goto :goto_80

    :catch_75
    move-exception v0

    move-object v11, v2

    move-object v2, v1

    :goto_78
    move-object v1, v11

    goto :goto_8e

    .line 45
    :cond_7a
    :try_start_7a
    invoke-virtual {v3, v4, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_71
    .catchall {:try_start_7a .. :try_end_7d} :catchall_a7

    goto :goto_39

    :catchall_7e
    move-exception v0

    move-object v3, v1

    :goto_80
    move-object v1, v2

    goto :goto_89

    :catch_82
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_8e

    :catchall_87
    move-exception v0

    move-object v3, v1

    :goto_89
    move-object v2, v1

    goto :goto_a8

    :catch_8b
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_8e
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 55
    :goto_91
    :try_start_91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_a7

    if-eqz v2, :cond_9c

    .line 59
    :try_start_96
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_9c

    :catch_9a
    move-exception v0

    goto :goto_a2

    :cond_9c
    :goto_9c
    if-eqz v3, :cond_a5

    .line 62
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_9a

    goto :goto_a5

    .line 65
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a5
    :goto_a5
    move-object v0, v1

    :cond_a6
    :goto_a6
    return-object v0

    :catchall_a7
    move-exception v0

    :goto_a8
    if-eqz v2, :cond_b0

    .line 66
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_b0

    :catch_ae
    move-exception v1

    goto :goto_b6

    :cond_b0
    :goto_b0
    if-eqz v3, :cond_b9

    .line 69
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b5} :catch_ae

    goto :goto_b9

    .line 72
    :goto_b6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_b9
    :goto_b9
    throw v0
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.c (io.dcloud.js.file.FileFeatureImpl$c)
.class Lio/dcloud/js/file/FileFeatureImpl$c;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->d:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 9

    .line 1
    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/lang/String;

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2
    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->d:Lio/dcloud/js/file/FileFeatureImpl;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_37

    .line 5
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Ljava/lang/String;

    const/16 p1, 0xd

    const-string p2, "Failed to load resource"

    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 7
    :cond_37
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->d:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$c;->c:Ljava/lang/String;

    const/16 p1, 0xd

    const-string v2, "Failed to load resource"

    invoke-static {p1, v2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/file/FileFeatureImpl$c;->a(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.d (io.dcloud.js.file.FileFeatureImpl$d)
.class Lio/dcloud/js/file/FileFeatureImpl$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/io/File;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->e:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->a:Ljava/io/File;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->a:Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_d
    const-string v2, "size"

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v0, :cond_25

    .line 6
    const-string v2, "digest"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_25} :catch_25

    .line 9
    :catch_25
    :cond_25
    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$d;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.e (io.dcloud.js.file.FileFeatureImpl$e)
.class Lio/dcloud/js/file/FileFeatureImpl$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->e:Lio/dcloud/js/file/FileFeatureImpl;

    iput p2, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->a:I

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    .line 4
    aget-object p2, p2, v2

    check-cast p2, Landroid/content/Intent;

    .line 5
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_af

    .line 6
    iget p1, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->a:I

    if-ne v0, p1, :cond_af

    .line 7
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    if-eqz p2, :cond_90

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 10
    :cond_2b
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 13
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, p2, :cond_70

    .line 15
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 21
    :cond_55
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 22
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 24
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_6d
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    :cond_70
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :try_start_75
    const-string v0, "files"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_80

    :catch_7b
    move-exception v0

    move-object p1, v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_80
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_af

    :cond_90
    const/4 p1, -0x2

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_USER_CANCEL:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "{code:%d,message:\'%s\'}"

    invoke-static {p1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 37
    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$e;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_af
    :goto_af
    return v1
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.f (io.dcloud.js.file.FileFeatureImpl$f)
.class Lio/dcloud/js/file/FileFeatureImpl$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->a:[Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->c:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->d:I

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    const/16 v0, 0x10

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lio/dcloud/base/R$string;->dcloud_io_write_non_base64:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v3, v4, v1

    const-string v0, "{code:%d,message:\'%s\'}"

    invoke-static {v0, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v2

    .line 9
    :cond_3c
    iget v1, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->d:I

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 10
    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/js/file/FileFeatureImpl$f;->c:Ljava/lang/String;

    array-length v0, v0

    int-to-double v6, v0

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V

    return-object v2
.end method

###### Class io.dcloud.js.file.FileFeatureImpl.g (io.dcloud.js.file.FileFeatureImpl$g)
.class Lio/dcloud/js/file/FileFeatureImpl$g;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->a:Ljava/lang/String;

    iput p3, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->b:I

    iput p4, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->c:I

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_12

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 3
    :cond_12
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 16

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1
    :try_start_4
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_69
    .catchall {:try_start_4 .. :try_end_e} :catchall_66

    .line 2
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 4
    iget v6, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->b:I

    if-lez v6, :cond_2d

    if-lt v6, v0, :cond_1a

    add-int/lit8 v6, v0, -0x1

    .line 9
    :cond_1a
    iget v0, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->c:I

    sub-int/2addr v6, v0

    add-int/2addr v6, v1

    .line 10
    new-array v7, v6, [B

    int-to-long v8, v0

    .line 11
    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 12
    invoke-virtual {v5, v7, v2, v6}, Ljava/io/InputStream;->read([BII)I

    .line 13
    invoke-static {v7, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    move-object v6, v4

    goto :goto_46

    .line 15
    :cond_2d
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_63
    .catchall {:try_start_e .. :try_end_32} :catchall_60

    :goto_32
    const v0, 0x32000

    .line 17
    :try_start_35
    new-array v0, v0, [B

    .line 18
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_58

    .line 26
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_46} :catch_5e
    .catchall {:try_start_35 .. :try_end_46} :catchall_5c

    .line 29
    :goto_46
    :try_start_46
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_5e
    .catchall {:try_start_46 .. :try_end_4a} :catchall_9f

    .line 37
    :try_start_4a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    if-eqz v6, :cond_9e

    .line 40
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_53

    goto :goto_9e

    :catch_53
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9e

    .line 44
    :cond_58
    :try_start_58
    invoke-virtual {v6, v0, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5e
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_32

    :catchall_5c
    move-exception v0

    goto :goto_a2

    :catch_5e
    move-exception v0

    goto :goto_6c

    :catchall_60
    move-exception v0

    move-object v6, v4

    goto :goto_a0

    :catch_63
    move-exception v0

    move-object v6, v4

    goto :goto_6c

    :catchall_66
    move-exception v0

    move-object v6, v4

    goto :goto_a1

    :catch_69
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    .line 54
    :goto_6c
    :try_start_6c
    const-string v7, "{code:%d,message:\'%s\'}"

    const/16 v8, 0xd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v2

    aput-object v0, v3, v1

    invoke-static {v7, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 55
    iget-object v9, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v10, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    sget v12, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_9f

    if-eqz v5, :cond_95

    .line 59
    :try_start_8f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_95

    :catch_93
    move-exception v0

    goto :goto_9b

    :cond_95
    :goto_95
    if-eqz v6, :cond_9e

    .line 62
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9a} :catch_93

    goto :goto_9e

    .line 65
    :goto_9b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9e
    :goto_9e
    return-object v4

    :catchall_9f
    move-exception v0

    :goto_a0
    move-object v4, v5

    :goto_a1
    move-object v5, v4

    :goto_a2
    move-object v1, v0

    if-eqz v5, :cond_ab

    .line 66
    :try_start_a5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_ab

    :catch_a9
    move-exception v0

    goto :goto_b1

    :cond_ab
    :goto_ab
    if-eqz v6, :cond_b4

    .line 69
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b0} :catch_a9

    goto :goto_b4

    .line 72
    :goto_b1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_b4
    :goto_b4
    throw v1
.end method

###### Class io.dcloud.js.file.FileFeatureImpl$$ExternalSyntheticLambda2 (io.dcloud.js.file.FileFeatureImpl$$ExternalSyntheticLambda2)
.class public final synthetic Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/js/file/FileFeatureImpl;

.field public final synthetic f$1:Lio/dcloud/common/DHInterface/IWebview;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$0:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$1:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$0:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$1:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/js/file/FileFeatureImpl$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/dcloud/js/file/FileFeatureImpl;->$r8$lambda$K17Xw3biRP98C5KXwaG97KBlGmY(Lio/dcloud/js/file/FileFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
