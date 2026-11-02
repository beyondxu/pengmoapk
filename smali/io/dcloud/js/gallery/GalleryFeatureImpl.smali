###### Class io.dcloud.js.gallery.GalleryFeatureImpl (io.dcloud.js.gallery.GalleryFeatureImpl)
.class public Lio/dcloud/js/gallery/GalleryFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# static fields
.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Lio/dcloud/common/DHInterface/IWebview;


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field private b:Ljava/util/ArrayList;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 4
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e:I

    const/16 v0, 0x3ea

    .line 5
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I

    const/16 v0, 0x3eb

    .line 6
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:I

    const/16 v0, 0x3ec

    .line 7
    sput v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->h:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 4
    sget-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    .line 120
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v0, :cond_3f

    move-object v0, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->isMultiProcessMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "io.dcloud.streamapp.Gallery.onMax."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;

    invoke-direct {p2, p0, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Landroid/app/Activity;)V

    .line 137
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_33

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/util/ArrayList;

    .line 140
    :cond_33
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_3f
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 13

    .line 143
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    :try_start_5
    const-string v0, "multiple"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    move-object p5, v0

    .line 147
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :goto_10
    new-instance p5, Lorg/json/JSONArray;

    invoke-direct {p5}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    if-eqz p4, :cond_6a

    .line 151
    array-length v0, p4

    if-lez v0, :cond_6a

    .line 154
    array-length v0, p4

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v0, :cond_5b

    aget-object v4, p4, v3

    .line 157
    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 158
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    :cond_50
    const/4 v5, 0x0

    .line 163
    invoke-interface {p1, v5, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_55
    :goto_55
    invoke-virtual {p5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 169
    :cond_5b
    :try_start_5b
    const-string p1, "files"

    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    move-exception v0

    move-object p1, v0

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_66
    const/4 p1, 0x1

    const-string p4, "pickImage path wrong"

    goto :goto_6d

    :cond_6a
    const-string p4, "User cancelled"

    const/4 p1, 0x0

    :goto_6d
    if-eqz p1, :cond_75

    .line 177
    sget p1, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p2, p3, v1, p1, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_84

    :cond_75
    const/16 p1, 0xc

    .line 179
    invoke-static {p1, p4}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_84
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/4 v2, 0x0

    .line 6
    :try_start_5
    aget-object v13, v0, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_da

    .line 8
    :try_start_7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    .line 9
    new-instance v5, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_d5

    move-object/from16 v14, p1

    :try_start_13
    invoke-direct {v5, v1, v4, v14, v13}, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    sget-object v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v4, v5, v6}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 65
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v4, "image/*"

    const/4 v5, 0x1

    .line 72
    aget-object v6, v0, v5

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_7f

    .line 73
    aget-object v6, v0, v5

    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 74
    const-string v8, "filter"

    invoke-static {v6, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    const-string v9, "video"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 76
    const-string v4, "video/*"

    goto :goto_4d

    .line 77
    :cond_43
    const-string v9, "none"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 78
    const-string v4, "image/*|video/*"

    .line 80
    :cond_4d
    :goto_4d
    const-string v8, "maximum"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 81
    const-string v8, "selected"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 82
    const-string v9, "confirmText"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    const-string v10, "editable"

    invoke-virtual {v6, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 84
    const-string v11, "crop"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 85
    const-string v12, "sizeType"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 86
    const-string v3, "videoCompress"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object v3, v4

    move v4, v7

    move-object v6, v9

    move v7, v10

    move-object v9, v11

    move-object v10, v12

    move v12, v2

    goto :goto_87

    :cond_7f
    move-object v3, v4

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 88
    :goto_87
    invoke-virtual {v15, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v15, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    sget v16, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_9b} :catch_d3

    .line 96
    :try_start_9b
    array-length v2, v0

    const/4 v5, 0x2

    if-le v2, v5, :cond_a9

    .line 97
    aget-object v0, v0, v5

    .line 98
    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_aa

    :cond_a9
    const/4 v0, 0x0

    .line 100
    :goto_aa
    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    const-string v11, "_doc"

    const/4 v1, 0x0

    invoke-interface {v5, v1, v11}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, p0

    move-object v5, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v12}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    .line 101
    sget v16, Lio/dcloud/js/gallery/GalleryFeatureImpl;->h:I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c3} :catch_c6

    :goto_c3
    move/from16 v0, v16

    goto :goto_cb

    :catch_c6
    move-exception v0

    .line 103
    :try_start_c7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c3

    .line 116
    :goto_cb
    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v15, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d2} :catch_d3

    goto :goto_f4

    :catch_d3
    move-exception v0

    goto :goto_d8

    :catch_d5
    move-exception v0

    move-object/from16 v14, p1

    :goto_d8
    move-object v7, v13

    goto :goto_df

    :catch_da
    move-exception v0

    move-object/from16 v14, p1

    const/4 v1, 0x0

    move-object v7, v1

    .line 118
    :goto_df
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v14

    invoke-static/range {v6 .. v11}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_f4
    return-void
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 6

    .line 5
    invoke-direct/range {p0 .. p5}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c:Z

    return p1
.end method

.method static synthetic b()I
    .registers 1

    .line 2
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->f:I

    return v0
.end method

.method static synthetic b(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 3
    iget-object p0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p3

    const-string v2, "__Single__"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :try_start_6
    aget-object v13, v0, v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8} :catch_b0

    .line 6
    :try_start_8
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    .line 7
    new-instance v6, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_ab

    move-object/from16 v14, p1

    :try_start_14
    invoke-direct {v6, p0, v5, v14, v13}, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    sget-object v7, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v5, v6, v7}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 49
    const-string v5, "image/*"

    const/4 v6, 0x1

    .line 53
    aget-object v7, v0, v6

    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 54
    aget-object v7, v0, v6

    invoke-static {v7}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 55
    const-string v8, "filter"

    invoke-static {v7, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    const-string v9, "video"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 57
    const-string v5, "video/*"

    goto :goto_48

    .line 58
    :cond_3e
    const-string v9, "none"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 59
    const-string v5, "image/*|video/*"

    .line 61
    :cond_48
    :goto_48
    const-string v8, "confirmText"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    const-string v9, "editable"

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 63
    const-string v9, "crop"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 64
    const-string v10, "sizeType"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    const-string v11, "videoCompress"

    invoke-virtual {v7, v11, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v12, v3

    move v7, v6

    move-object v6, v8

    goto :goto_6f

    :cond_6a
    move-object v6, v4

    move-object v9, v6

    move-object v10, v9

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 67
    :goto_6f
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.PICK"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    array-length v2, v0

    const/4 v5, 0x2

    if-le v2, v5, :cond_89

    .line 71
    aget-object v0, v0, v5

    .line 72
    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_8a

    :cond_89
    move-object v8, v4

    .line 74
    :goto_8a
    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v5, "_doc"

    invoke-interface {v0, v4, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v12}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 75
    sget v1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->h:I

    .line 76
    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_a8} :catch_a9

    return-void

    :catch_a9
    move-exception v0

    goto :goto_ae

    :catch_ab
    move-exception v0

    move-object/from16 v14, p1

    :goto_ae
    move-object v8, v13

    goto :goto_b4

    :catch_b0
    move-exception v0

    move-object/from16 v14, p1

    move-object v8, v4

    .line 78
    :goto_b4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->g:I

    return v0
.end method

.method static synthetic d()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->h:I

    return v0
.end method

.method static synthetic e()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e:I

    return v0
.end method

.method public static onMaxed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->i:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_d

    .line 2
    sget p0, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, p0, v2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 4
    :cond_d
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "io.dcloud.streamapp.Gallery.onMax."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v1, "_onMaxedId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public JSONArrayToMedias(ILorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/dmcbig/mediapicker/entity/Media;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    .line 1
    :goto_4
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_51

    if-nez v1, :cond_12

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :cond_12
    move-object/from16 v2, p2

    .line 5
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4c

    const/16 v3, 0x66

    move/from16 v5, p1

    if-ne v5, v3, :cond_30

    const/4 v3, 0x3

    const/4 v11, 0x3

    goto :goto_32

    :cond_30
    const/4 v3, 0x1

    const/4 v11, 0x1

    .line 12
    :goto_32
    new-instance v6, Lcom/dmcbig/mediapicker/entity/Media;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-string v15, ""

    const-wide/16 v9, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 13
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_52

    goto :goto_4e

    :cond_4c
    move/from16 v5, p1

    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_51
    return-object v1

    :catch_52
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_2a

    sget-object v0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->i:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_2a

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_25

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 3
    sget-object v3, Lio/dcloud/js/gallery/GalleryFeatureImpl;->i:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_d

    .line 5
    :cond_25
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2a
    const/4 p1, 0x0

    .line 7
    sput-object p1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->i:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 1
    sput-object p1, Lio/dcloud/js/gallery/GalleryFeatureImpl;->i:Lio/dcloud/common/DHInterface/IWebview;

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gallery-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    const-string v0, "pick"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "gallery"

    if-eqz v0, :cond_5d

    .line 6
    iput-boolean v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c:Z

    .line 8
    new-instance v0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 54
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x22

    const-string v1, "STORAGE_IMAGE"

    if-lt p2, p3, :cond_51

    .line 55
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {p2, p3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4b

    .line 59
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v3, v1, v2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_84

    .line 60
    :cond_4b
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;->onGranted(Ljava/lang/String;)V

    goto :goto_84

    .line 65
    :cond_51
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v3, v1, v2, v0}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_84

    .line 67
    :cond_5d
    const-string v0, "save"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 68
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    .line 69
    aget-object v7, p3, v1

    const/4 p2, 0x1

    .line 70
    aget-object v10, p3, p2

    .line 71
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v4, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    move-object v8, v6

    move-object v5, p0

    move-object v9, p1

    move-object v11, p3

    invoke-direct/range {v4 .. v11}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "STORAGE"

    invoke-static {p2, v3, p1, v2, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_84
    :goto_84
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaPickerIntent(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 16

    const-string v0, ""

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    const-string v2, "video"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "image"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v2, 0x65

    goto :goto_25

    .line 5
    :cond_1a
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x66

    goto :goto_25

    :cond_23
    const/16 v2, 0x64

    .line 8
    :goto_25
    const-string v3, "__Single__"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 9
    const-string v3, "com.dmcbig.mediapicker.PickerActivity"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    const-string p1, "select_mode"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    const-string p1, "single_select"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    const-string p1, "COMPRESSED"

    invoke-virtual {v1, p1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "max_select_count"

    if-lez p3, :cond_46

    .line 14
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_46
    if-eqz p4, :cond_51

    .line 17
    invoke-virtual {p0, v2, p4}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->JSONArrayToMedias(ILorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "default_list"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    :cond_51
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5c

    .line 20
    const-string p2, "select_max_cb_id"

    invoke-virtual {v1, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_5c
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_67

    .line 23
    const-string p2, "done_button_text"

    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    :cond_67
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 26
    const-string p2, "size_type"

    invoke-virtual {v1, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    :cond_72
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7d

    .line 29
    const-string p2, "doc_path"

    invoke-virtual {v1, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7d
    if-eqz p8, :cond_cc

    .line 31
    const-string p2, "width"

    invoke-virtual {p8, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_cc

    const-string p3, "height"

    invoke-virtual {p8, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_cc

    .line 32
    const-string p4, "[^0-9]"

    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p4

    .line 35
    :try_start_95
    invoke-virtual {p8, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 36
    invoke-virtual {p8, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    if-lez p5, :cond_cc

    if-lez p4, :cond_cc

    .line 38
    invoke-virtual {p8, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p8, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string p2, "image_crop"

    invoke-virtual {p8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 41
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_cc} :catch_cc

    .line 45
    :catch_cc
    :cond_cc
    const-string p1, "image_editable"

    invoke-virtual {v1, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method public mediasToJSONArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dmcbig/mediapicker/entity/Media;

    if-nez v0, :cond_16

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    :cond_16
    iget-object v2, v2, Lcom/dmcbig/mediapicker/entity/Media;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-object v0
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.a (io.dcloud.js.gallery.GalleryFeatureImpl$a)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$a;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;[Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    .line 1
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    const/16 p1, 0xc

    .line 10
    const-string v0, "No Permission"

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 12
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 13
    :cond_2f
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->onGranted(Ljava/lang/String;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_20

    .line 2
    aget-object p1, p1, v2

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 5
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p1, "multiple"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_20
    :goto_20
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Z

    move-result p1

    if-eqz p1, :cond_29

    return-void

    :cond_29
    if-eqz v3, :cond_37

    .line 18
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_42

    .line 20
    :cond_37
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    :goto_42
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$a;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1, v2}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Z)Z

    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.b (io.dcloud.js.gallery.GalleryFeatureImpl$b)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$b;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->f:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->e:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 9

    const/16 p1, 0xc

    .line 1
    const-string v0, "No Permission"

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 10

    const-string p1, "file://"

    const/16 v1, 0xc

    .line 1
    :try_start_4
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_113

    .line 4
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const-class v0, [B

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;

    invoke-direct {v0, p0}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;-><init>(Lio/dcloud/js/gallery/GalleryFeatureImpl$b;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 63
    :cond_2d
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->e:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v0, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 66
    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    invoke-static {v1, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 70
    :cond_68
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_b7

    .line 75
    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 76
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_be

    goto :goto_bf

    .line 79
    :cond_a0
    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lio/dcloud/common/util/FileUtil;->copyMediaFileToDCIM(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 81
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_bf

    .line 86
    :cond_b7
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v3, 0x0

    :goto_bf
    if-eqz v3, :cond_101

    .line 90
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 92
    const-string v5, "file"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v5, "path"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, v5, v3, v6, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 98
    :cond_101
    const-string p1, "UNKOWN ERROR3"

    invoke-static {v1, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 100
    :cond_113
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_119} :catch_119

    :catch_119
    move-exception v0

    move-object p1, v0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    const-string p1, "UNKOWN ERROR4"

    invoke-static {v1, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.b.a (io.dcloud.js.gallery.GalleryFeatureImpl$b$a)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLcom/bumptech/glide/request/transition/Transition;)V
    .registers 14

    const-string p2, "file://"

    .line 1
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v0, v0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    const-string v1, "image/*"

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_26

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/FileUtil;->getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_74

    .line 5
    :cond_26
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    array-length v6, p1

    invoke-static {p1, v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    .line 10
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 11
    array-length v6, v3

    if-le v6, v5, :cond_74

    aget-object v6, v3, v5

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    aget-object v6, v3, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_74

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a3

    .line 21
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lio/dcloud/common/util/FileUtil;->writeStream2File(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_d3

    .line 24
    :cond_a3
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v0}, Lio/dcloud/common/util/FileUtil;->copyMediaFileToDCIM(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 26
    iget-object v0, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v0, v0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d3

    :cond_be
    const/16 p1, 0xc

    .line 28
    const-string v0, "SAVE ERROR"

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v5, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 32
    :goto_d3
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, v2, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    :try_start_db
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string v2, "file"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v2, "path"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v2, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v2, p1, v0, v3, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_117
    .catch Lorg/json/JSONException; {:try_start_db .. :try_end_117} :catch_117

    :catch_117
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 9

    const/16 p1, 0xc

    .line 1
    const-string v0, "UNKOWN ERROR"

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a([BLcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.c (io.dcloud.js.gallery.GalleryFeatureImpl$c)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 13

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    .line 4
    aget-object p2, p2, v2

    check-cast p2, Landroid/content/Intent;

    .line 5
    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v2, :cond_bb

    .line 6
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v2}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 p1, 0x0

    .line 10
    :try_start_22
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b()I

    move-result v2

    if-ne v1, v2, :cond_30

    .line 11
    const-string v1, "all_path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a4

    .line 12
    :cond_30
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->c()I

    move-result v2

    if-ne v1, v2, :cond_92

    if-eqz p2, :cond_a6

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 17
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 18
    new-array v3, v2, [Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_a8

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v2, :cond_aa

    .line 20
    :try_start_47
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 22
    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lio/dcloud/common/adapter/util/ContentUriUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 23
    aput-object v5, v3, v4
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5b} :catch_5e

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :catch_5e
    nop

    goto :goto_aa

    .line 25
    :cond_60
    :try_start_60
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_8b

    .line 30
    :cond_7d
    iget-object v1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/ContentUriUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_8b
    if-eqz v1, :cond_a6

    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_aa

    .line 38
    :cond_92
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d()I

    move-result v2

    if-ne v1, v2, :cond_a6

    .line 39
    const-string v1, "select_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-virtual {v2, v1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->mediasToJSONArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a4} :catch_a8

    :goto_a4
    move-object v3, v1

    goto :goto_aa

    :cond_a6
    :goto_a6
    move-object v3, p1

    goto :goto_aa

    :catch_a8
    nop

    goto :goto_a6

    .line 45
    :cond_aa
    :goto_aa
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$c;->c:Ljava/lang/String;

    if-eqz p2, :cond_b6

    move-object v8, v3

    goto :goto_b7

    :cond_b6
    move-object v8, p1

    :goto_b7
    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_bb
    return v0
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.d (io.dcloud.js.gallery.GalleryFeatureImpl$d)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$d;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->b:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    const-string p1, "_onMaxedId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 3
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->b:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 4
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->b:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-static {p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/js/gallery/GalleryFeatureImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1d
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 8
    :cond_27
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$d;->a:Landroid/app/Activity;

    invoke-static {p2, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->onMaxed(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.js.gallery.GalleryFeatureImpl.e (io.dcloud.js.gallery.GalleryFeatureImpl$e)
.class Lio/dcloud/js/gallery/GalleryFeatureImpl$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/js/gallery/GalleryFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 13

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    .line 4
    aget-object p2, p2, v3

    check-cast p2, Landroid/content/Intent;

    .line 6
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_89

    .line 7
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p0, v3}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 8
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->e()I

    move-result p1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_59

    if-eqz p2, :cond_44

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    .line 18
    :cond_3f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_44
    move-object p1, v3

    .line 23
    :goto_45
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->c:Ljava/lang/String;

    if-eqz p1, :cond_53

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    :cond_53
    move-object v8, v3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_89

    .line 24
    :cond_59
    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->d()I

    move-result p1

    if-ne v1, p1, :cond_89

    if-eqz p2, :cond_75

    .line 26
    const-string p1, "select_result"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    invoke-virtual {p2, p1}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->mediasToJSONArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 28
    array-length p2, p1

    if-lez p2, :cond_75

    .line 29
    aget-object p1, p1, v0

    goto :goto_76

    :cond_75
    move-object p1, v3

    .line 32
    :goto_76
    iget-object v4, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->d:Lio/dcloud/js/gallery/GalleryFeatureImpl;

    iget-object v5, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v6, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->b:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v7, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$e;->c:Ljava/lang/String;

    if-eqz p1, :cond_84

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    :cond_84
    move-object v8, v3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a(Lio/dcloud/js/gallery/GalleryFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_89
    :goto_89
    return v0
.end method
