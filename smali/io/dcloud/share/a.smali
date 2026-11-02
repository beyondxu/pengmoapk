###### Class io.dcloud.share.a (io.dcloud.share.a)
.class public Lio/dcloud/share/a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private a:Lio/dcloud/common/DHInterface/AbsMgr;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field public d:Ljava/util/ArrayList;

.field private e:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/share/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    .line 4
    iget-object p1, p0, Lio/dcloud/share/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1, p2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/share/a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 7

    .line 298
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 299
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :cond_b
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 302
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :cond_16
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "android.intent.action.SEND"

    if-nez p2, :cond_49

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_49

    .line 305
    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "android.intent.extra.STREAM"

    if-le p2, v0, :cond_3b

    .line 307
    const-string p2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p1

    .line 310
    :cond_3b
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 311
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1

    .line 314
    :cond_49
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;
    .registers 11

    const-string v0, "ShareApiManager getServices "

    .line 223
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 226
    iget-object v2, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 230
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 232
    :try_start_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 233
    iget-object v6, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/share/IFShareApi;

    if-nez v6, :cond_5a

    .line 235
    iget-object v6, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_3d} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_6f

    .line 236
    :try_start_3d
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lio/dcloud/share/IFShareApi;

    .line 237
    invoke-interface {v6}, Lio/dcloud/share/IFShareApi;->initConfig()V

    .line 238
    iget-object v3, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-interface {v6}, Lio/dcloud/share/IFShareApi;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_54} :catch_58
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_54} :catch_56

    move-object v3, v5

    goto :goto_5a

    :catch_56
    move-exception v3

    goto :goto_73

    :catch_58
    move-object v3, v5

    goto :goto_8c

    .line 241
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-interface {v6, p1}, Lio/dcloud/share/IFShareApi;->getJsonObject(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-object v5, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v4, v5, :cond_a0

    .line 243
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5a .. :try_end_6e} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6e} :catch_6f

    goto :goto_a0

    :catch_6f
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    .line 248
    :goto_73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Exception ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_a0

    .line 249
    :catch_8c
    :goto_8c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is Not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1f

    .line 255
    :cond_a4
    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)Landroid/net/Uri;
    .registers 11

    .line 316
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "_data=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 323
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 324
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 325
    const-string v3, "content://media/external/images/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 329
    :cond_44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    if-nez v2, :cond_62

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :cond_62
    if-nez v2, :cond_77

    .line 337
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 338
    const-string v0, "_data"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_77
    return-object v2
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Share-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v2, :sswitch_data_1ec

    goto/16 :goto_a1

    :sswitch_2e
    const-string v2, "authorize"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_a1

    :cond_38
    const/16 v11, 0x9

    goto/16 :goto_a1

    :sswitch_3c
    const-string v2, "openCustomerServiceChat"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_a1

    :cond_46
    const/16 v11, 0x8

    goto/16 :goto_a1

    :sswitch_4a
    const-string v2, "sendWithSystem"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_a1

    :cond_53
    const/4 v11, 0x7

    goto :goto_a1

    :sswitch_55
    const-string v2, "send"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_a1

    :cond_5e
    const/4 v11, 0x6

    goto :goto_a1

    :sswitch_60
    const-string v2, "load"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_a1

    :cond_69
    const/4 v11, 0x5

    goto :goto_a1

    :sswitch_6b
    const-string v2, "getServices"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    goto :goto_a1

    :cond_74
    const/4 v11, 0x4

    goto :goto_a1

    :sswitch_76
    const-string v2, "setVisible"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_a1

    :cond_7f
    const/4 v11, 0x3

    goto :goto_a1

    :sswitch_81
    const-string v2, "forbid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_a1

    :cond_8a
    const/4 v11, 0x2

    goto :goto_a1

    :sswitch_8c
    const-string v2, "create"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    goto :goto_a1

    :cond_95
    const/4 v11, 0x1

    goto :goto_a1

    :sswitch_97
    const-string v2, "launchMiniProgram"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    goto :goto_a1

    :cond_a0
    const/4 v11, 0x0

    :goto_a1
    const-string v1, "{code:%d,message:\'%s\'}"

    const/4 v2, -0x3

    packed-switch v11, :pswitch_data_216

    goto/16 :goto_1ea

    .line 9
    :pswitch_a9
    iget-object v1, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    aget-object v2, p3, v9

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/IFShareApi;

    .line 10
    aget-object v2, p3, v10

    aget-object v3, p3, v8

    invoke-interface {v1, p1, v2, v3}, Lio/dcloud/share/IFShareApi;->authorize(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 73
    :pswitch_bc
    aget-object v3, p3, v10

    .line 74
    aget-object v4, p3, v9

    .line 75
    iget-object v5, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/share/IFShareApi;

    .line 76
    instance-of v5, v4, Lio/dcloud/share/IWeiXinFShareApi;

    if-eqz v5, :cond_d5

    .line 77
    check-cast v4, Lio/dcloud/share/IWeiXinFShareApi;

    aget-object v1, p3, v8

    invoke-interface {v4, p1, v1, v3}, Lio/dcloud/share/IWeiXinFShareApi;->openCustomerServiceChat(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 79
    :cond_d5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v10

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    aput-object v2, v4, v9

    invoke-static {v1, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v3

    .line 80
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_1ea

    .line 81
    :pswitch_f0
    aget-object v1, p3, v10

    aget-object v2, p3, v9

    invoke-virtual {p0, p1, v1, v2}, Lio/dcloud/share/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 82
    :pswitch_f9
    iget-object v1, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    aget-object v2, p3, v9

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/IFShareApi;

    .line 83
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 84
    instance-of v3, v2, Lio/dcloud/application/DCloudApplication;

    if-eqz v3, :cond_114

    .line 85
    check-cast v2, Lio/dcloud/application/DCloudApplication;

    invoke-virtual {v2}, Lio/dcloud/application/DCloudApplication;->stopB2FOnce()V

    .line 87
    :cond_114
    aget-object v2, p3, v10

    aget-object v3, p3, v8

    invoke-interface {v1, p1, v2, v3}, Lio/dcloud/share/IFShareApi;->send(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 109
    :pswitch_11d
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    aget-object v1, p3, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/share/ShareAuthorizeView;

    .line 110
    aget-object v1, p3, v9

    invoke-virtual {v0, p0, v1}, Lio/dcloud/share/ShareAuthorizeView;->load(Lio/dcloud/share/a;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 111
    :pswitch_12e
    aget-object v1, p3, v10

    invoke-direct/range {p0 .. p1}, Lio/dcloud/share/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_1ea

    .line 158
    :pswitch_13d
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    aget-object v1, p3, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/share/ShareAuthorizeView;

    .line 159
    aget-object v1, p3, v9

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 161
    invoke-virtual {v0, v10}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    goto/16 :goto_1ea

    .line 163
    :cond_154
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    goto/16 :goto_1ea

    .line 164
    :pswitch_159
    iget-object v1, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    aget-object v2, p3, v10

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/IFShareApi;

    .line 165
    invoke-interface {v1, p1}, Lio/dcloud/share/IFShareApi;->forbid(Lio/dcloud/common/DHInterface/IWebview;)V

    goto/16 :goto_1ea

    .line 182
    :pswitch_168
    new-instance v1, Lio/dcloud/share/ShareAuthorizeView;

    aget-object v2, p3, v9

    invoke-direct {v1, p1, v2}, Lio/dcloud/share/ShareAuthorizeView;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 183
    aget-object v2, p3, v8

    if-eqz v2, :cond_17e

    aget-object v2, p3, v9

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e

    goto :goto_1b1

    .line 185
    :cond_17e
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v2

    .line 186
    aget-object v3, p3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 187
    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v6, v6

    .line 188
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v5, v5

    .line 189
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 190
    invoke-static {v3, v6, v5, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :goto_1b1
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    aget-object v2, p3, v10

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ea

    .line 211
    :pswitch_1b9
    aget-object v3, p3, v10

    .line 212
    aget-object v4, p3, v9

    .line 213
    iget-object v5, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/share/IFShareApi;

    .line 214
    instance-of v5, v4, Lio/dcloud/share/IWeiXinFShareApi;

    if-eqz v5, :cond_1d1

    .line 215
    check-cast v4, Lio/dcloud/share/IWeiXinFShareApi;

    aget-object v1, p3, v8

    invoke-interface {v4, p1, v1, v3}, Lio/dcloud/share/IWeiXinFShareApi;->launchMiniProgram(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ea

    .line 217
    :cond_1d1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v10

    sget-object v2, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    aput-object v2, v4, v9

    invoke-static {v1, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v3

    .line 218
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_1ea
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_1ec
    .sparse-switch
        -0x68326786 -> :sswitch_97
        -0x509a5f04 -> :sswitch_8c
        -0x4ba0306c -> :sswitch_81
        -0x32ef8650 -> :sswitch_76
        -0x31f0b22c -> :sswitch_6b
        0x32c4e6 -> :sswitch_60
        0x35cf88 -> :sswitch_55
        0x116c43d -> :sswitch_4a
        0x3b617645 -> :sswitch_3c
        0x57f407e9 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_168
        :pswitch_159
        :pswitch_13d
        :pswitch_12e
        :pswitch_11d
        :pswitch_f9
        :pswitch_f0
        :pswitch_bc
        :pswitch_a9
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 219
    const-string v0, "sinaweibo"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 220
    iget-object p1, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    const-string v0, "sina"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 221
    :cond_13
    const-string v0, "tencentweibo"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 222
    iget-object p1, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    const-string v0, "tencent"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 340
    iget-object v0, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_22

    .line 341
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/IFShareApi;

    invoke-interface {v1}, Lio/dcloud/share/IFShareApi;->dispose()V

    goto :goto_c

    .line 345
    :cond_22
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_44

    .line 346
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/share/ShareAuthorizeView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_2e

    .line 350
    :cond_44
    iget-object v0, p0, Lio/dcloud/share/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_4b

    .line 351
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 353
    :cond_4b
    iget-object v0, p0, Lio/dcloud/share/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_52

    .line 354
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 356
    :cond_52
    iget-object v0, p0, Lio/dcloud/share/a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_59

    .line 357
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_59
    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 257
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    const-string v6, "href"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    :cond_37
    const-string v6, "pictures"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 265
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 266
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b5

    .line 267
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 268
    :goto_4e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_b1

    .line 269
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 270
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 271
    sget-object v10, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateExternalDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lio/dcloud/common/adapter/util/DeviceInfo;->sPrivateDir:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 273
    invoke-static {v9, v10, v2, v1}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v11

    if-ne v11, v2, :cond_8e

    move-object v9, v10

    .line 278
    :cond_8e
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_a2

    .line 279
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11, v6}, Lio/dcloud/share/a;->a(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_ab

    .line 281
    :cond_a2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 283
    :goto_ab
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 285
    :cond_b1
    invoke-direct {v0, v6, v4, v5, v7}, Lio/dcloud/share/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_b9

    :cond_b5
    const/4 v3, 0x0

    .line 288
    invoke-direct {v0, v6, v4, v5, v3}, Lio/dcloud/share/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 291
    :goto_b9
    const-string v3, ""

    invoke-static {v6, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 294
    const-string v7, ""

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d6} :catch_d7

    return-void

    :catch_d7
    const/16 v3, -0x63

    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    sget-object v1, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 297
    sget v14, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v11 .. v16}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
