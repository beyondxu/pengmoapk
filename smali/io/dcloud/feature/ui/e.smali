###### Class io.dcloud.feature.ui.e (io.dcloud.feature.ui.e)
.class public Lio/dcloud/feature/ui/e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/ui/e$e;
    }
.end annotation


# static fields
.field private static e:Ljava/util/HashMap;


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field b:Ljava/util/HashMap;

.field final c:Z

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/ui/e;->c:Z

    .line 10
    iput-object p1, p0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 11
    iput-object p2, p0, Lio/dcloud/feature/ui/e;->d:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lio/dcloud/feature/ui/e;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .registers 3

    if-eqz p1, :cond_1d

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_10

    .line 1179
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    :goto_e
    float-to-int p1, p1

    return p1

    .line 1180
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1d

    .line 1181
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    goto :goto_e

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lio/dcloud/feature/ui/e;Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .registers 3

    .line 1133
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1135
    :try_start_6
    sget-object v0, Lio/dcloud/feature/ui/e;->e:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1136
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1137
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 1139
    instance-of v0, p0, Lio/dcloud/feature/ui/b;

    if-eqz v0, :cond_31

    .line 1140
    check-cast p0, Lio/dcloud/feature/ui/b;
    :try_end_22
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_22} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_22} :catch_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    .line 1147
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_31

    :catch_28
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 1149
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)Lio/dcloud/feature/ui/c;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v6, p7

    move-object/from16 v10, p9

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createNWindow pUrl="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 969
    const-string v1, "directPage"

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 970
    const-string v3, "winType"

    invoke-virtual {v6, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_33

    .line 971
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    invoke-interface {v8, v4, v9}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x5

    if-eqz v1, :cond_3d

    const/4 v14, 0x5

    goto :goto_3e

    :cond_3d
    move v14, v3

    :goto_3e
    if-eqz p10, :cond_43

    move-object v15, v4

    const/4 v3, 0x0

    goto :goto_45

    :cond_43
    move-object v3, v4

    const/4 v15, 0x0

    .line 981
    :goto_45
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->obtainWebviewBaseUrl()Ljava/lang/String;

    .line 983
    invoke-direct {v0, v7, v8, v3}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    .line 985
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-static {v9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v16

    const/4 v4, 0x4

    if-ne v14, v4, :cond_5b

    .line 990
    invoke-virtual {v2, v4}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v5

    goto :goto_63

    :cond_5b
    if-ne v14, v13, :cond_62

    .line 992
    invoke-virtual {v2, v13}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v5

    goto :goto_63

    :cond_62
    const/4 v5, 0x0

    :goto_63
    if-nez v5, :cond_77

    move-object/from16 v17, v1

    .line 995
    new-instance v1, Lio/dcloud/feature/ui/c;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v18, v17

    const/4 v11, 0x4

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v2, v4

    goto :goto_7f

    :cond_77
    move-object/from16 v2, p5

    move-object/from16 v18, v1

    const/4 v11, 0x4

    const/16 v17, 0x0

    move-object v1, v5

    :goto_7f
    move-object/from16 v4, p8

    .line 998
    iput-object v4, v1, Lio/dcloud/feature/ui/c;->x:Lorg/json/JSONObject;

    .line 1000
    iget-object v4, v0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    .line 1002
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/4 v12, 0x3

    const/16 v20, 0x4

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v9, v11, v17

    const/4 v9, 0x1

    aput-object v6, v11, v9

    const/16 v21, 0x2

    aput-object p6, v11, v21

    .line 1003
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v22

    const/16 p4, 0x1

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v19, v9, v17

    aput-object v8, v9, p4

    aput-object v11, v9, v21

    aput-object v22, v9, v12

    aput-object v1, v9, v20

    .line 1004
    invoke-interface {v4, v5, v12, v9}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p10, :cond_bb

    .line 1010
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v15}, Lio/dcloud/common/DHInterface/IWebview;->setOriginalUrl(Ljava/lang/String;)V

    :cond_bb
    if-eqz v10, :cond_c1

    .line 1013
    iput-object v10, v1, Lio/dcloud/feature/ui/c;->v:Lorg/json/JSONArray;

    .line 1014
    iput-object v7, v1, Lio/dcloud/feature/ui/c;->w:Lio/dcloud/common/DHInterface/IWebview;

    .line 1016
    :cond_c1
    invoke-virtual {v1, v9, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 1019
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    .line 1020
    const-string v5, "plusrequire"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 1021
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v5, v10}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_d9
    const-string v10, "replacewebapi"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "geolocation"

    if-eqz v11, :cond_f7

    .line 1024
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_104

    .line 1025
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 1026
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v12, v10}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104

    .line 1029
    :cond_f7
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_104

    .line 1030
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v12, v10}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_104
    :goto_104
    const-string v10, "injection"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_117

    .line 1033
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    .line 1034
    invoke-interface {v4, v10, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_117
    const-string v10, "overrideresource"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_126

    .line 1037
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-interface {v4, v10}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideResourceRequest(Lorg/json/JSONArray;)V

    .line 1039
    :cond_126
    const-string v10, "overrideurl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_135

    .line 1040
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-interface {v4, v10}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideUrlLoadingData(Lorg/json/JSONObject;)V

    .line 1043
    :cond_135
    invoke-static/range {v18 .. v18}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a8

    .line 1044
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_150

    .line 1045
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    if-ne v10, v13, :cond_1a8

    .line 1046
    :cond_150
    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "none"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_170

    .line 1047
    const-string v5, "_www/__wap2app.js"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    .line 1048
    const-string v5, "_www/__wap2appconfig.js"

    invoke-interface {v8, v10, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto :goto_171

    :cond_170
    const/4 v10, 0x0

    .line 1050
    :goto_171
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v5

    const-string v11, "_www/server_index_append.js"

    invoke-interface {v8, v5, v11}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    .line 1051
    invoke-interface {v4, v5, v11}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    .line 1052
    const-string v5, "_www/server_index_append.css"

    invoke-interface {v8, v10, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1053
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_194

    .line 1055
    invoke-interface {v4, v5, v10}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 1057
    :cond_194
    const-string v5, "_www/__wap2app.css"

    invoke-interface {v8, v10, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1058
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1a8

    .line 1060
    invoke-interface {v4, v5, v10}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_1a8
    :goto_1a8
    const-string v5, "appendCss"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b5

    .line 1068
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1c3

    .line 1070
    :cond_1b5
    const-string v5, "preloadcss"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c2

    .line 1071
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1c3

    :cond_1c2
    const/4 v10, 0x0

    .line 1073
    :goto_1c3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ce

    const/4 v5, 0x0

    .line 1074
    invoke-interface {v4, v5, v10}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cf

    :cond_1ce
    const/4 v5, 0x0

    .line 1078
    :goto_1cf
    const-string v10, "appendJs"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e0

    .line 1079
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1f2

    .line 1081
    :cond_1e0
    const-string v10, "preloadjs"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f1

    .line 1082
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1f2

    :cond_1f1
    move-object v12, v5

    .line 1084
    :goto_1f2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fb

    .line 1085
    invoke-interface {v4, v12}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    :cond_1fb
    if-nez v16, :cond_222

    const/4 v4, 0x6

    if-ne v14, v4, :cond_219

    .line 1090
    const-string v4, "additionalHttpHeaders"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_219

    .line 1091
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/JSONUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1093
    :cond_219
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 1095
    :cond_222
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    move-object/from16 v5, p6

    move-object v7, v2

    move-object v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v2, v3

    .line 1101
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v3

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    sget v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_245

    .line 1104
    invoke-virtual {v2, v9}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 1107
    :cond_245
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    const/4 v2, 0x0

    .line 1108
    invoke-virtual {v1, v6, v2}, Lio/dcloud/feature/ui/c;->a(Lorg/json/JSONObject;Z)Z

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " createNWindow webview_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "View_Visible_Path"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;
    .registers 21

    move-object/from16 v0, p3

    .line 930
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 931
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "new -- JSNWindow="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UIWidgetMgr"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 933
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x2

    .line 934
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x4

    .line 936
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v4, 0x5

    .line 937
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v2, :cond_42

    .line 941
    new-instance v2, Lorg/json/JSONObject;

    const-string v0, "{}"

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_54

    .line 943
    :cond_42
    const-string v0, "name"

    invoke-static {v2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 946
    const-string v0, "webviewid"

    invoke-static {v2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_54
    :goto_54
    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move/from16 v12, p6

    move-object v7, v0

    move-object v9, v2

    move-object v2, p0

    .line 949
    invoke-direct/range {v2 .. v12}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v1, :cond_69

    .line 953
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/c;)V

    :cond_69
    if-eqz v13, :cond_74

    .line 956
    iget-object v1, v0, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_74
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 960
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v1

    .line 962
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 963
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    iput-boolean v3, v0, Lio/dcloud/feature/ui/c;->K:Z

    .line 965
    iget-object v3, v2, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransition(Lorg/json/JSONObject;)V

    .line 966
    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->transform:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransform(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 15

    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 1152
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p2

    goto :goto_2a

    .line 1153
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_29

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x2

    .line 1154
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p2

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    const-wide/16 v0, 0xc8

    .line 1156
    invoke-virtual {p2, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 1157
    new-instance p3, Lio/dcloud/feature/ui/e$b;

    invoke-direct {p3, p0, p1}, Lio/dcloud/feature/ui/e$b;-><init>(Lio/dcloud/feature/ui/e;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1177
    new-instance v0, Lio/dcloud/feature/ui/e$c;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v4, p5

    move-object v5, p6

    move-object v3, p7

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/e$c;-><init>(Lio/dcloud/feature/ui/e;Landroid/view/View;Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method private a()V
    .registers 5

    .line 1150
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/feature/ui/e;->d:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lio/dcloud/feature/ui/e;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .registers 6

    .line 1110
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1111
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p1

    .line 1113
    const-string v0, "http://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1114
    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1115
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_65

    .line 1120
    :cond_31
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1121
    invoke-static {p3}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1124
    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1125
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1127
    invoke-interface {p2, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1131
    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 1132
    const-string p1, "{\"open\": {\"opener\":\"%s\",\"opened\":\"%s\"}}"

    invoke-static {p1, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 14

    .line 916
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    .line 917
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 918
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v6

    .line 919
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v7, v0

    goto :goto_1d

    :cond_1c
    move-object v7, v6

    .line 921
    :goto_1d
    new-instance v0, Lio/dcloud/feature/ui/c;

    const/4 v9, 0x0

    move-object v5, p2

    move-object v8, v4

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v2, v5

    move-object v4, v8

    .line 922
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p2, 0x0

    .line 923
    iput-boolean p2, v0, Lio/dcloud/feature/ui/c;->F:Z

    .line 924
    iput-boolean p2, v0, Lio/dcloud/feature/ui/c;->I:Z

    const/4 v1, 0x1

    .line 925
    invoke-virtual {v0, v1}, Lio/dcloud/feature/ui/c;->a(Z)V

    .line 926
    invoke-interface {p3, v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 927
    invoke-virtual {v0, p3, v7}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 928
    invoke-virtual {v2, v0}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 929
    invoke-virtual {v2, p1, v0, p2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    const-string p0, ""

    return-object p0

    .line 5
    :cond_9
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_17
    const-string v0, "../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_25
    const-string v0, ".../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_32
    return-object p0
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p3

    const-string v0, "WebviewGroup"

    const-string v2, "NWindow"

    const-string v4, "js"

    const-string v5, "ui.execute "

    const-string v6, "init AppWidgetMgr pAppid="

    const/4 v8, 0x0

    .line 2
    :try_start_11
    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    .line 3
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    .line 4
    invoke-static {v10, v14}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v15
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_93a

    const/16 v16, 0x0

    .line 5
    :try_start_21
    invoke-static {v15, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v4

    .line 6
    invoke-static {v15, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 7
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v8

    if-nez v8, :cond_32

    return-object v16

    .line 10
    :cond_32
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v14

    .line 12
    iget-object v12, v1, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/dcloud/feature/ui/a;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_932

    const-string v10, "Main_Path"

    if-eqz v12, :cond_a7

    .line 13
    :try_start_42
    iget-object v9, v12, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 14
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v9

    move-object/from16 v23, v13

    const/4 v13, 0x1

    if-ne v9, v13, :cond_4e

    goto :goto_a9

    .line 42
    :cond_4e
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_68

    .line 43
    iget-boolean v6, v12, Lio/dcloud/feature/ui/a;->i:Z

    if-nez v6, :cond_9b

    .line 44
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-virtual {v1, v14, v12, v6}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v13, 0x1

    .line 45
    iput-boolean v13, v12, Lio/dcloud/feature/ui/a;->i:Z

    goto :goto_9b

    .line 47
    :cond_68
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_82

    .line 48
    iget-boolean v6, v12, Lio/dcloud/feature/ui/a;->h:Z

    if-nez v6, :cond_9b

    .line 49
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-virtual {v1, v14, v12, v6}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v13, 0x1

    .line 50
    iput-boolean v13, v12, Lio/dcloud/feature/ui/a;->h:Z

    goto :goto_9b

    .line 52
    :cond_82
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v9, 0x7

    if-ne v6, v9, :cond_9b

    .line 53
    iget-boolean v6, v12, Lio/dcloud/feature/ui/a;->j:Z

    if-nez v6, :cond_9b

    .line 54
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-direct {v1, v14, v12, v6}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v13, 0x1

    .line 55
    iput-boolean v13, v12, Lio/dcloud/feature/ui/a;->j:Z

    :cond_9b
    :goto_9b
    move-object/from16 v21, v8

    goto/16 :goto_12f

    :catch_9f
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v2, v1

    goto/16 :goto_942

    :cond_a7
    move-object/from16 v23, v13

    :goto_a9
    if-eqz v12, :cond_b9

    .line 56
    iget-object v9, v12, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 57
    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_b9

    .line 58
    iget-object v9, v1, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_b9} :catch_9f

    .line 60
    :cond_b9
    :try_start_b9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v12, Lio/dcloud/feature/ui/a;

    iget-object v6, v1, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-direct {v12, v6, v8}, Lio/dcloud/feature/ui/a;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IApp;)V

    .line 62
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_dc

    const/4 v6, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v6, 0x0

    :goto_dd
    iput-boolean v6, v12, Lio/dcloud/feature/ui/a;->i:Z

    .line 63
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_ec

    const/4 v6, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v6, 0x0

    :goto_ed
    iput-boolean v6, v12, Lio/dcloud/feature/ui/a;->h:Z

    .line 64
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v9, 0x7

    if-ne v6, v9, :cond_fc

    const/4 v6, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v6, 0x0

    :goto_fd
    iput-boolean v6, v12, Lio/dcloud/feature/ui/a;->j:Z

    .line 65
    iget-object v6, v1, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    .line 70
    iget-boolean v9, v12, Lio/dcloud/feature/ui/a;->j:Z
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_10a} :catch_929

    if-eqz v9, :cond_114

    .line 71
    :try_start_10c
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-direct {v1, v14, v12, v6}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_113} :catch_9f

    goto :goto_9b

    .line 73
    :cond_114
    :try_start_114
    invoke-virtual {v1, v14, v12, v6}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 75
    iget-object v9, v1, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v13, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v21, v8

    const/16 v8, 0x9

    invoke-interface {v9, v13, v8, v14}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/dcloud/common/DHInterface/IFrameView;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_125} :catch_929

    if-eqz v8, :cond_12f

    if-eq v6, v8, :cond_12f

    const/4 v13, 0x1

    .line 77
    :try_start_12a
    iput-boolean v13, v12, Lio/dcloud/feature/ui/a;->h:Z

    .line 78
    invoke-virtual {v1, v14, v12, v8}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12f} :catch_9f

    .line 102
    :cond_12f
    :goto_12f
    :try_start_12f
    invoke-static/range {v23 .. v23}, Lio/dcloud/feature/ui/e$e;->valueOf(Ljava/lang/String;)Lio/dcloud/feature/ui/e$e;

    move-result-object v6
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_133} :catch_134

    goto :goto_136

    :catch_134
    move-object/from16 v6, v16

    .line 107
    :goto_136
    :try_start_136
    const-string v8, "UI"

    invoke-static {v8, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13c} :catch_929

    const/4 v9, 0x5

    const/4 v13, 0x4

    if-eqz v8, :cond_4ed

    .line 108
    :try_start_140
    invoke-virtual {v12, v3}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 109
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_14b} :catch_4e2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4bd

    const/4 v7, 0x2

    if-eq v0, v7, :cond_498

    packed-switch v0, :pswitch_data_964

    :goto_154
    move-object v6, v1

    goto/16 :goto_4cf

    :pswitch_157
    const/4 v0, 0x0

    .line 328
    :try_start_158
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v2, ""

    .line 331
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_166} :catch_203

    if-eqz v4, :cond_171

    .line 332
    :try_start_168
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_170} :catch_9f

    goto :goto_181

    :cond_171
    move-object/from16 v4, v16

    .line 334
    :try_start_173
    invoke-virtual {v12, v4, v4, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v7

    if-eqz v7, :cond_181

    .line 335
    iget-object v4, v7, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v4, :cond_181

    .line 336
    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 339
    :cond_181
    :goto_181
    sget-object v4, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0xa

    if-eqz v4, :cond_1c4

    .line 340
    iget-object v4, v1, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v3, v9, v18

    const/16 v20, 0x1

    aput-object v2, v9, v20

    const/16 v19, 0x2

    aput-object v0, v9, v19

    const/16 v22, 0x3

    aput-object v14, v9, v22

    aput-object v5, v9, v13

    new-array v0, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v0, v18

    const-string v2, "weex,io.dcloud.feature.weex.WeexFeature"

    const/16 v20, 0x1

    aput-object v2, v0, v20

    const-string v2, "callNativeModuleSync"

    const/16 v19, 0x2

    aput-object v2, v0, v19

    const/16 v22, 0x3

    aput-object v9, v0, v22

    invoke-interface {v4, v7, v6, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1ff

    .line 342
    :cond_1c4
    iget-object v4, v1, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v3, v9, v18

    const/16 v20, 0x1

    aput-object v2, v9, v20

    const/16 v19, 0x2

    aput-object v0, v9, v19

    const/16 v22, 0x3

    aput-object v14, v9, v22

    aput-object v5, v9, v13

    new-array v0, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v0, v18

    const-string v2, "weex,io.dcloud.feature.weex.WeexFeature"

    const/16 v20, 0x1

    aput-object v2, v0, v20

    const-string v2, "postMessageToUniNView"

    const/16 v19, 0x2

    aput-object v2, v0, v19

    const/16 v22, 0x3

    aput-object v9, v0, v22

    invoke-interface {v4, v7, v6, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_154

    .line 343
    :pswitch_1fb
    invoke-virtual {v12}, Lio/dcloud/feature/ui/a;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_1ff} :catch_203

    :goto_1ff
    move-object v11, v0

    move-object v6, v1

    goto/16 :goto_4d0

    :catch_203
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v2, v1

    goto/16 :goto_4e9

    :pswitch_20b
    const/4 v0, 0x0

    .line 344
    :try_start_20c
    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v13, 0x1

    .line 345
    invoke-static {v4, v13}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v9, 0x2

    .line 346
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    .line 347
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    .line 349
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 351
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_235} :catch_4e2

    if-nez v4, :cond_243

    .line 352
    :try_start_237
    invoke-virtual {v12, v5, v5, v5}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v4

    if-eqz v4, :cond_243

    .line 354
    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_241} :catch_203

    move-object v6, v4

    goto :goto_244

    :cond_243
    const/4 v6, 0x0

    :goto_244
    const-string v4, "fromLeft"

    const-string v5, "styles"

    const-string v8, "action"

    const-string v9, "view"

    const v10, 0x7fffffff

    if-eqz v2, :cond_2d8

    .line 363
    :try_start_251
    invoke-static {v2, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 364
    invoke-static {v2, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 365
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 366
    invoke-static {v2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 367
    const-string v15, "toLeft"

    invoke-static {v2, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v14, v3, v10}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v14

    .line 369
    invoke-static {v2, v3, v10}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v2

    const/4 v15, 0x0

    .line 370
    invoke-virtual {v12, v15, v11, v11}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v11

    if-eq v10, v2, :cond_2cf

    if-eqz v11, :cond_2cf

    .line 373
    iget-object v15, v11, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v15

    .line 374
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2cb

    if-eq v10, v14, :cond_288

    move v10, v14

    goto :goto_2a0

    .line 379
    :cond_288
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 380
    instance-of v10, v14, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v10, :cond_295

    .line 381
    check-cast v14, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v10, v14, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_2a0

    .line 382
    :cond_295
    instance-of v10, v14, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v10, :cond_29f

    .line 383
    invoke-static {v15}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v10

    float-to-int v10, v10

    goto :goto_2a0

    :cond_29f
    const/4 v10, 0x0

    .line 386
    :goto_2a0
    iget-object v14, v11, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IFrameView;->pushToViewStack()V

    .line 387
    invoke-virtual {v11}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v14

    iput v2, v14, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 388
    invoke-virtual {v11}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v21

    const-string v22, "left"

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v23, v2

    move/from16 v24, v3

    invoke-virtual/range {v21 .. v26}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_2c4} :catch_203

    move/from16 v2, v24

    move v3, v10

    move/from16 v10, v23

    const/4 v14, 0x1

    goto :goto_2df

    :cond_2cb
    move/from16 v23, v2

    move v2, v3

    goto :goto_2d3

    :cond_2cf
    move/from16 v23, v2

    move v2, v3

    const/4 v15, 0x0

    :goto_2d3
    move/from16 v10, v23

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_2df

    :cond_2d8
    move v2, v3

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2df
    if-eqz v0, :cond_37b

    .line 395
    :try_start_2e1
    invoke-static {v0, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 396
    invoke-static {v0, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 397
    invoke-static {v0, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 398
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 399
    const-string v5, "toLeft"

    invoke-static {v0, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7fffffff

    .line 400
    invoke-static {v4, v2, v5}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v4

    .line 401
    invoke-static {v0, v2, v5}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x0

    .line 402
    invoke-virtual {v12, v5, v9, v9}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v9

    const v5, 0x7fffffff

    if-eq v5, v0, :cond_370

    if-eqz v9, :cond_370

    .line 405
    iget-object v5, v9, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_365

    const v1, 0x7fffffff

    if-eq v1, v4, :cond_321

    move v1, v4

    goto :goto_339

    .line 411
    :cond_321
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 412
    instance-of v4, v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v4, :cond_32e

    .line 413
    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_339

    .line 414
    :cond_32e
    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_338

    .line 415
    invoke-static {v5}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_339

    :cond_338
    const/4 v1, 0x0

    .line 418
    :goto_339
    iget-object v4, v9, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->pushToViewStack()V

    .line 419
    invoke-virtual {v9}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iput v0, v4, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 420
    invoke-virtual {v9}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v21

    const-string v22, "left"

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v23, v0

    move/from16 v24, v2

    invoke-virtual/range {v21 .. v26}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    move v0, v1

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    const/16 v18, 0x1

    goto :goto_36e

    :cond_365
    move/from16 v23, v0

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_36e
    move-object v9, v5

    goto :goto_385

    :cond_370
    move/from16 v23, v0

    move-object/from16 v19, v8

    move-object/from16 v17, v9

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    goto :goto_385

    :cond_37b
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    :goto_385
    if-eqz v14, :cond_394

    move-object/from16 v1, p0

    move v4, v10

    move-object v8, v11

    move-object v5, v13

    move-object v2, v15

    .line 429
    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V
    :try_end_394
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_394} :catch_551

    :cond_394
    if-eqz v18, :cond_3aa

    move-object/from16 v1, p0

    move v3, v0

    move-object v2, v9

    move-object/from16 v8, v17

    move-object/from16 v5, v19

    move/from16 v4, v23

    .line 432
    :try_start_3a0
    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_3a0 .. :try_end_3a4} :catch_4e2

    move-object v6, v1

    :try_start_3a5
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    goto/16 :goto_4cf

    :cond_3aa
    move-object/from16 v6, p0

    goto/16 :goto_4cf

    :pswitch_3ae
    move-object v6, v1

    .line 433
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkPhoneBanAcceleration(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_496

    :pswitch_3bb
    move-object v6, v1

    const/4 v0, 0x0

    .line 434
    invoke-static {v15, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    .line 435
    invoke-static {v15, v13}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3c6} :catch_4e0

    .line 437
    :try_start_3c6
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    const-string v2, "save"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3dc

    .line 439
    move-object v1, v3

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->saveWebViewData(Ljava/lang/String;)V

    goto/16 :goto_4cf

    .line 440
    :cond_3dc
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4cf

    .line 441
    move-object v1, v3

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->syncUpdateWebViewData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3eb
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3eb} :catch_3ed

    goto/16 :goto_496

    :catch_3ed
    move-exception v0

    .line 446
    :try_start_3ee
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4cf

    :pswitch_3f3
    move-object v6, v1

    const/4 v0, 0x0

    .line 447
    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    .line 448
    invoke-virtual {v12, v11, v11, v15}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_4cf

    .line 451
    iget-object v1, v1, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4cf

    :pswitch_40b
    move-object v6, v1

    const/4 v0, 0x0

    .line 452
    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x1

    .line 453
    invoke-static {v4, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {v0}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v0

    const/4 v9, 0x2

    .line 455
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v9, 0x3

    .line 457
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 459
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v12, v1, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V

    move-object v4, v1

    .line 462
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, v12

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v12, v2

    goto/16 :goto_4cf

    :pswitch_43c
    move-object v6, v1

    .line 463
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    .line 464
    invoke-virtual {v12, v0}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_44c

    .line 466
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_496

    .line 468
    :cond_44c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found NWindow uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";frameView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4cf

    :pswitch_46d
    move-object v6, v1

    .line 469
    invoke-virtual {v12, v13}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_4cf

    .line 471
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_496

    :pswitch_479
    move-object v6, v1

    .line 472
    invoke-virtual {v12}, Lio/dcloud/feature/ui/a;->c()Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_4cf

    .line 474
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_496

    :pswitch_485
    move-object v6, v1

    .line 475
    invoke-virtual {v12}, Lio/dcloud/feature/ui/a;->d()Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_4cf

    .line 477
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_496

    :pswitch_491
    move-object v6, v1

    .line 478
    invoke-virtual {v12}, Lio/dcloud/feature/ui/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_496
    move-object v11, v0

    goto :goto_4d0

    :cond_498
    move-object v6, v1

    .line 479
    iget-object v0, v6, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 480
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    .line 481
    invoke-virtual {v12, v0, v0, v15}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_4cf

    .line 484
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_496

    :cond_4bd
    move-object v6, v1

    const/4 v0, 0x0

    .line 485
    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    .line 486
    invoke-virtual {v12, v15, v15, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_4cf

    .line 489
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_4ce
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_4ce} :catch_4e0

    goto :goto_496

    :cond_4cf
    :goto_4cf
    const/4 v11, 0x0

    .line 721
    :goto_4d0
    :try_start_4d0
    invoke-virtual {v12}, Lio/dcloud/feature/ui/a;->g()V
    :try_end_4d3
    .catch Ljava/lang/Exception; {:try_start_4d0 .. :try_end_4d3} :catch_4d6

    move-object v2, v6

    goto/16 :goto_962

    :catch_4d6
    move-exception v0

    move-object/from16 v10, p2

    move-object v2, v6

    :goto_4da
    move-object/from16 v16, v11

    move-object/from16 v11, p3

    goto/16 :goto_942

    :catch_4e0
    move-exception v0

    goto :goto_4e4

    :catch_4e2
    move-exception v0

    move-object v6, v1

    :goto_4e4
    move-object/from16 v10, p2

    :goto_4e6
    move-object/from16 v11, p3

    move-object v2, v6

    :goto_4e9
    const/16 v16, 0x0

    goto/16 :goto_942

    :cond_4ed
    move-object v6, v1

    .line 722
    :try_start_4ee
    invoke-static {v2, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_4f2
    .catch Ljava/lang/Exception; {:try_start_4ee .. :try_end_4f2} :catch_921

    if-eqz v1, :cond_559

    .line 723
    :try_start_4f4
    invoke-virtual {v12, v3}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IWebview;)V

    move-object/from16 v1, v23

    .line 724
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_509

    const/4 v7, 0x0

    move-object v1, v6

    move-object v6, v11

    move-object v2, v12

    move-object/from16 v5, v21

    .line 726
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    goto :goto_543

    :cond_509
    move-object v8, v4

    move-object v6, v11

    move-object v2, v12

    const/4 v15, 0x0

    .line 729
    invoke-virtual {v2, v6, v6, v15}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_518

    .line 732
    invoke-virtual {v0, v3, v1, v8}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v11

    goto :goto_544

    .line 735
    :cond_518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " App not found NWindow ;uuid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";_action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-static {v10, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_543
    .catch Ljava/lang/Exception; {:try_start_4f4 .. :try_end_543} :catch_551

    :goto_543
    const/4 v11, 0x0

    .line 743
    :goto_544
    :try_start_544
    invoke-virtual {v2}, Lio/dcloud/feature/ui/a;->g()V
    :try_end_547
    .catch Ljava/lang/Exception; {:try_start_544 .. :try_end_547} :catch_54b

    move-object/from16 v2, p0

    goto/16 :goto_962

    :catch_54b
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v10, p2

    goto :goto_4da

    :catch_551
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v10, p2

    :goto_556
    move-object/from16 v11, p3

    goto :goto_4e9

    :cond_559
    move-object v8, v4

    move-object v6, v11

    move-object v2, v12

    move-object/from16 v5, v21

    move-object/from16 v1, v23

    .line 744
    :try_start_560
    invoke-static {v0, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_560 .. :try_end_564} :catch_919

    if-eqz v4, :cond_625

    .line 745
    :try_start_566
    const-string v4, "createGroup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_611

    .line 746
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 747
    invoke-static {v8, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v1, 0x1

    .line 748
    invoke-static {v8, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_57d
    .catch Ljava/lang/Exception; {:try_start_566 .. :try_end_57d} :catch_620

    if-nez v4, :cond_586

    .line 750
    :try_start_57f
    new-instance v4, Lorg/json/JSONObject;

    const-string v1, "{}"

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_586
    .catch Ljava/lang/Exception; {:try_start_57f .. :try_end_586} :catch_551

    :cond_586
    move-object v12, v4

    const/4 v14, 0x0

    .line 752
    :goto_588
    :try_start_588
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v14, v1, :cond_5b1

    .line 753
    invoke-static {v11, v14}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v15, 0x1

    .line 754
    invoke-static {v1, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_597
    .catch Ljava/lang/Exception; {:try_start_588 .. :try_end_597} :catch_620

    const/4 v7, 0x1

    move-object/from16 v1, p0

    .line 755
    :try_start_59a
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v4
    :try_end_59e
    .catch Ljava/lang/Exception; {:try_start_59a .. :try_end_59e} :catch_4e2

    move-object/from16 v27, v6

    move-object v6, v1

    move-object/from16 v1, v27

    .line 756
    :try_start_5a3
    invoke-virtual {v4, v15}, Lio/dcloud/feature/ui/c;->b(Z)V

    .line 757
    iget-object v3, v4, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p1

    move-object v6, v1

    goto :goto_588

    :cond_5b1
    move-object v1, v6

    move-object/from16 v6, p0

    .line 759
    new-instance v3, Lio/dcloud/feature/ui/d;

    invoke-direct {v3, v0, v10, v12}, Lio/dcloud/feature/ui/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    .line 760
    iget-object v0, v6, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v15, 0x1

    .line 762
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v11, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v12, v11, v18

    .line 763
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v14

    const/16 v20, 0x1

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v18

    aput-object v5, v15, v20

    const/16 v19, 0x2

    aput-object v11, v15, v19

    const/4 v5, 0x3

    aput-object v14, v15, v5

    aput-object v3, v15, v13

    aput-object v10, v15, v9

    .line 764
    invoke-interface {v0, v4, v5, v15}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lio/dcloud/common/DHInterface/IFrameView;

    .line 769
    invoke-virtual {v3, v7}, Lio/dcloud/feature/ui/d;->a(Lio/dcloud/common/DHInterface/IFrameView;)V

    move-object v4, v1

    .line 770
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v3

    move-object v5, v12

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 772
    iget-object v1, v0, Lio/dcloud/feature/ui/b;->b:Ljava/util/HashMap;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-virtual {v2, v4, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V

    .line 774
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_635

    .line 775
    invoke-virtual {v2, v7}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IFrameView;)V

    goto :goto_635

    :cond_611
    move-object v4, v6

    move-object/from16 v6, p0

    .line 778
    invoke-virtual {v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v3, v1, v8}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_61c
    .catch Ljava/lang/Exception; {:try_start_5a3 .. :try_end_61c} :catch_4e0

    move-object v2, v6

    :goto_61d
    move-object v11, v0

    goto/16 :goto_962

    :catch_620
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_4e4

    :cond_625
    move-object v4, v6

    move-object/from16 v6, p0

    .line 781
    :try_start_628
    const-string v0, "updateAppFrameViews"
    :try_end_62a
    .catch Ljava/lang/Exception; {:try_start_628 .. :try_end_62a} :catch_921

    move-object/from16 v10, p2

    :try_start_62c
    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_630
    .catch Ljava/lang/Exception; {:try_start_62c .. :try_end_630} :catch_917

    if-eqz v0, :cond_63c

    .line 782
    :try_start_632
    invoke-virtual {v2}, Lio/dcloud/feature/ui/a;->i()V
    :try_end_635
    .catch Ljava/lang/Exception; {:try_start_632 .. :try_end_635} :catch_639

    :cond_635
    :goto_635
    move-object v2, v6

    :cond_636
    :goto_636
    const/4 v15, 0x0

    goto/16 :goto_90f

    :catch_639
    move-exception v0

    goto/16 :goto_4e6

    .line 783
    :cond_63c
    :try_start_63c
    const-string v0, "n_createDirectWebview"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_642
    .catch Ljava/lang/Exception; {:try_start_63c .. :try_end_642} :catch_917

    const-string v7, "winType"

    if-eqz v0, :cond_703

    move-object v6, v4

    .line 784
    :try_start_647
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 785
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 788
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_667
    .catch Ljava/lang/Exception; {:try_start_647 .. :try_end_667} :catch_6fe

    if-nez v0, :cond_674

    .line 790
    :try_start_669
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_66e
    .catch Ljava/lang/Exception; {:try_start_669 .. :try_end_66e} :catch_66f

    goto :goto_674

    :catch_66f
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_556

    .line 792
    :cond_674
    :goto_674
    :try_start_674
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 794
    const-string v1, "backButtonAutoControl"

    const-string v7, "quit"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_687
    .catch Ljava/lang/Exception; {:try_start_674 .. :try_end_687} :catch_6fe

    const-string v1, "__wap2app_type"

    if-eqz v0, :cond_697

    .line 797
    :try_start_68b
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a1

    .line 798
    const-string v7, "direct"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_696
    .catch Ljava/lang/Exception; {:try_start_68b .. :try_end_696} :catch_66f

    goto :goto_6a1

    .line 801
    :cond_697
    :try_start_697
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 802
    const-string v7, "direct"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    :cond_6a1
    :goto_6a1
    invoke-virtual {v4, v13, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6a4
    .catch Ljava/lang/Exception; {:try_start_697 .. :try_end_6a4} :catch_6fe

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 806
    :try_start_6a7
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v0
    :try_end_6ab
    .catch Ljava/lang/Exception; {:try_start_6a7 .. :try_end_6ab} :catch_6fa

    move-object v4, v6

    move-object v6, v1

    if-nez v4, :cond_6bb

    .line 808
    :try_start_6af
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    :cond_6bb
    const/4 v15, 0x1

    .line 810
    iput-boolean v15, v0, Lio/dcloud/feature/ui/c;->F:Z

    .line 811
    iput-boolean v15, v0, Lio/dcloud/feature/ui/c;->I:Z

    .line 812
    invoke-virtual {v2, v13}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_6ce

    .line 814
    iget-wide v3, v1, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v7, 0x2

    add-long/2addr v3, v7

    iput-wide v3, v0, Lio/dcloud/feature/ui/c;->u:J

    goto :goto_6dc

    :cond_6ce
    const/4 v9, 0x2

    .line 816
    invoke-virtual {v2, v9}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_6dc

    .line 818
    iget-wide v3, v1, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v7, 0x2

    add-long/2addr v3, v7

    iput-wide v3, v0, Lio/dcloud/feature/ui/c;->u:J

    .line 821
    :cond_6dc
    :goto_6dc
    invoke-virtual {v2, v0}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v1

    .line 822
    invoke-virtual {v2, v14, v0, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 823
    iget-object v1, v6, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v0, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v0, v3, v18

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v13, 0x1

    aput-object v0, v3, v13

    invoke-interface {v1, v2, v13, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6f8
    .catch Ljava/lang/Exception; {:try_start_6af .. :try_end_6f8} :catch_639

    goto/16 :goto_635

    :catch_6fa
    move-exception v0

    move-object v6, v1

    goto/16 :goto_4e6

    :catch_6fe
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_4e6

    .line 824
    :cond_703
    :try_start_703
    const-string v0, "n_createHDWebview"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_709
    .catch Ljava/lang/Exception; {:try_start_703 .. :try_end_709} :catch_917

    const-string v3, "id"

    const-string v9, "name"

    if-eqz v0, :cond_7a7

    move-object/from16 v11, p3

    const/4 v0, 0x3

    .line 826
    :try_start_712
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_79c

    .line 829
    const-string v1, "url"

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v4

    .line 830
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v8, v17

    .line 831
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_758

    .line 832
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 833
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 834
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 835
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v8}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 836
    const-string v12, "preloadjs"

    invoke-virtual {v0, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_758
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__hd"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x6

    .line 842
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 843
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 845
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-nez v6, :cond_79c

    .line 847
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;
    :try_end_79c
    .catch Ljava/lang/Exception; {:try_start_712 .. :try_end_79c} :catch_7a0

    :cond_79c
    move-object/from16 v2, p0

    goto/16 :goto_636

    :catch_7a0
    move-exception v0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_942

    :cond_7a7
    move-object/from16 v11, p3

    move-object v6, v4

    .line 850
    :try_start_7aa
    const-string v0, "n_createSecondWebview"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8fd

    .line 852
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v5, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_79c

    .line 855
    const-string v1, "launch_path"
    :try_end_7bc
    .catch Ljava/lang/Exception; {:try_start_7aa .. :try_end_7bc} :catch_913

    const/4 v15, 0x0

    :try_start_7bd
    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7c1
    .catch Ljava/lang/Exception; {:try_start_7bd .. :try_end_7c1} :catch_8f9

    .line 856
    :try_start_7c1
    const-string v4, "mode"

    const-string v8, "front"

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 857
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 858
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__second"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v1, "child"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7f3
    .catch Ljava/lang/Exception; {:try_start_7c1 .. :try_end_7f3} :catch_913

    if-eqz v1, :cond_804

    :try_start_7f5
    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_804

    .line 863
    const-string v1, "position"

    const-string v3, "absolute"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_804
    .catch Ljava/lang/Exception; {:try_start_7f5 .. :try_end_804} :catch_7a0

    .line 865
    :cond_804
    :try_start_804
    invoke-virtual {v0, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 866
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 868
    invoke-virtual {v2, v13}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v0
    :try_end_80e
    .catch Ljava/lang/Exception; {:try_start_804 .. :try_end_80e} :catch_913

    if-eqz v0, :cond_812

    const/4 v0, 0x1

    goto :goto_813

    :cond_812
    const/4 v0, 0x0

    :goto_813
    if-nez v6, :cond_82b

    .line 870
    :try_start_815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__second"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_82a
    .catch Ljava/lang/Exception; {:try_start_815 .. :try_end_82a} :catch_7a0

    move-object v6, v1

    :cond_82b
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 872
    :try_start_830
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v4
    :try_end_834
    .catch Ljava/lang/Exception; {:try_start_830 .. :try_end_834} :catch_8f6

    move-object v12, v2

    move-object v2, v1

    if-nez v0, :cond_636

    const/4 v13, 0x1

    .line 875
    :try_start_839
    iput-boolean v13, v4, Lio/dcloud/feature/ui/c;->F:Z

    .line 876
    iput-boolean v13, v4, Lio/dcloud/feature/ui/c;->I:Z

    .line 877
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_849
    .catch Ljava/lang/Exception; {:try_start_839 .. :try_end_849} :catch_8f4

    const/4 v15, 0x0

    :try_start_84a
    invoke-virtual {v12, v0, v15, v15}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v0

    .line 878
    iget-object v1, v12, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 879
    const-string v5, "behind"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_871

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 881
    iget-wide v5, v0, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lio/dcloud/feature/ui/c;->u:J

    if-gez v1, :cond_86b

    const/4 v8, 0x0

    goto :goto_86c

    :cond_86b
    move v8, v1

    .line 882
    :goto_86c
    invoke-virtual {v12, v14, v4, v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    goto/16 :goto_90f

    .line 883
    :cond_871
    const-string v5, "parent"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a1

    .line 884
    invoke-virtual {v0}, Lio/dcloud/feature/ui/b;->f()V

    .line 885
    invoke-virtual {v4, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    .line 886
    invoke-virtual {v12, v4}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v0

    .line 887
    invoke-virtual {v12, v14, v4, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 888
    iget-object v0, v2, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, v4, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v3, v4, v18

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v13, 0x1

    aput-object v3, v4, v13

    const/16 v19, 0x2

    aput-object v3, v4, v19

    invoke-interface {v0, v1, v13, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_90f

    .line 889
    :cond_8a1
    const-string v5, "child"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8cc

    .line 890
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    .line 891
    iget-object v3, v1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    if-nez v3, :cond_8c1

    .line 892
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "{\"width\":\"100%\",\"height\":\"100%\"}"

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 894
    :cond_8c1
    invoke-virtual {v0, v4}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    .line 895
    invoke-virtual {v12, v4}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v0

    .line 896
    invoke-virtual {v12, v14, v4, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    goto :goto_90f

    .line 898
    :cond_8cc
    iget-wide v5, v0, Lio/dcloud/feature/ui/c;->u:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Lio/dcloud/feature/ui/c;->u:J

    const/16 v20, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 900
    invoke-virtual {v12, v14, v4, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 901
    iget-object v0, v2, Lio/dcloud/feature/ui/e;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, v4, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v3, v4, v18

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v13, 0x1

    aput-object v3, v4, v13

    const/16 v19, 0x2

    aput-object v3, v4, v19

    invoke-interface {v0, v1, v13, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_90f

    :catch_8f4
    move-exception v0

    goto :goto_927

    :catch_8f6
    move-exception v0

    move-object v2, v1

    goto :goto_927

    :catch_8f9
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_940

    :cond_8fd
    move-object/from16 v3, p1

    move-object v12, v2

    const/4 v15, 0x0

    move-object/from16 v2, p0

    .line 906
    invoke-virtual {v12, v6}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v0

    if-eqz v0, :cond_90f

    .line 908
    invoke-virtual {v0, v3, v1, v8}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_90d
    .catch Ljava/lang/Exception; {:try_start_84a .. :try_end_90d} :catch_911

    goto/16 :goto_61d

    :cond_90f
    :goto_90f
    move-object v11, v15

    goto :goto_962

    :catch_911
    move-exception v0

    goto :goto_940

    :catch_913
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_927

    :catch_917
    move-exception v0

    goto :goto_924

    :catch_919
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    goto :goto_927

    :catch_921
    move-exception v0

    move-object/from16 v10, p2

    :goto_924
    move-object/from16 v11, p3

    move-object v2, v6

    :goto_927
    const/4 v15, 0x0

    goto :goto_940

    :catch_929
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v2, v1

    move-object/from16 v15, v16

    goto :goto_942

    :catch_932
    move-exception v0

    move-object v2, v1

    move-object v11, v10

    move-object/from16 v15, v16

    move-object/from16 v10, p2

    goto :goto_942

    :catch_93a
    move-exception v0

    move-object v2, v1

    move-object v11, v10

    const/4 v15, 0x0

    move-object/from16 v10, p2

    :goto_940
    move-object/from16 v16, v15

    .line 913
    :goto_942
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pActionName="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";pJsArgs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UIWidgetMgr"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v11, v16

    :goto_962
    return-object v11

    nop

    :pswitch_data_964
    .packed-switch 0x5
        :pswitch_491
        :pswitch_485
        :pswitch_479
        :pswitch_46d
        :pswitch_43c
        :pswitch_40b
        :pswitch_3f3
        :pswitch_3bb
        :pswitch_3ae
        :pswitch_20b
        :pswitch_1fb
        :pswitch_157
        :pswitch_157
    .end packed-switch
.end method

.method public declared-synchronized b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 28
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/a;

    .line 32
    invoke-virtual {v0}, Lio/dcloud/feature/ui/a;->a()V

    goto :goto_10

    .line 34
    :cond_20
    iget-object p1, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void

    .line 36
    :cond_26
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/a;

    if-eqz v0, :cond_46

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UIWidgetMgr.dispose pAppid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main_Path"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lio/dcloud/feature/ui/a;->a()V

    .line 42
    :cond_46
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 14

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v3

    .line 6
    move-object v7, p3

    check-cast v7, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 7
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_22

    .line 9
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    move-object v6, v1

    goto :goto_23

    :cond_22
    move-object v6, v8

    .line 12
    :goto_23
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x2

    if-nez v1, :cond_30

    move-object v4, v0

    goto :goto_39

    :cond_30
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    if-ne v0, v9, :cond_38

    move-object v4, p1

    goto :goto_39

    :cond_38
    move-object v4, v3

    .line 14
    :goto_39
    new-instance v1, Lio/dcloud/feature/ui/c;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v0, v4

    .line 17
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 18
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    move-object v3, v2

    move-object v2, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v2, v3

    .line 21
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v9, :cond_63

    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_61

    goto :goto_63

    :cond_61
    const/4 p2, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 p2, 0x1

    :goto_64
    iput-boolean p2, v1, Lio/dcloud/feature/ui/c;->F:Z

    .line 22
    iput-boolean v4, v1, Lio/dcloud/feature/ui/c;->I:Z

    .line 23
    invoke-virtual {v7, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 24
    invoke-virtual {v1, p3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 26
    invoke-virtual {v2, p1, v1, v3}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 27
    new-instance p1, Lio/dcloud/feature/ui/e$a;

    invoke-direct {p1, p0, v2, v1}, Lio/dcloud/feature/ui/e$a;-><init>(Lio/dcloud/feature/ui/e;Lio/dcloud/feature/ui/a;Lio/dcloud/feature/ui/c;)V

    invoke-static {p1, v8}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.feature.ui.e.a (io.dcloud.feature.ui.e$a)
.class Lio/dcloud/feature/ui/e$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/a;

.field final synthetic b:Lio/dcloud/feature/ui/c;

.field final synthetic c:Lio/dcloud/feature/ui/e;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/e;Lio/dcloud/feature/ui/a;Lio/dcloud/feature/ui/c;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/e$a;->c:Lio/dcloud/feature/ui/e;

    iput-object p2, p0, Lio/dcloud/feature/ui/e$a;->a:Lio/dcloud/feature/ui/a;

    iput-object p3, p0, Lio/dcloud/feature/ui/e$a;->b:Lio/dcloud/feature/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/e$a;->a:Lio/dcloud/feature/ui/a;

    iget-object v0, p0, Lio/dcloud/feature/ui/e$a;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/ui/a;->g(Lio/dcloud/feature/ui/c;)V

    return-void
.end method

###### Class io.dcloud.feature.ui.e.b (io.dcloud.feature.ui.e$b)
.class Lio/dcloud/feature/ui/e$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/dcloud/feature/ui/e;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/e;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/e$b;->b:Lio/dcloud/feature/ui/e;

    iput-object p2, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_48

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 6
    :try_start_22
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_42

    .line 9
    :catch_33
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 12
    :goto_42
    iget-object p1, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 13
    :cond_48
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_61

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/ui/e$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    :cond_61
    return-void
.end method

###### Class io.dcloud.feature.ui.e.c (io.dcloud.feature.ui.e$c)
.class Lio/dcloud/feature/ui/e$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/dcloud/feature/ui/c;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/feature/ui/e;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/e;Landroid/view/View;Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/e$c;->f:Lio/dcloud/feature/ui/e;

    iput-object p2, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    iput-object p3, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    iput-object p4, p0, Lio/dcloud/feature/ui/e$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/ui/e$c;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    if-eqz p1, :cond_a7

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-nez p1, :cond_10

    goto/16 :goto_a7

    .line 4
    :cond_10
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->f:Lio/dcloud/feature/ui/e;

    iget-object v0, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/e;Landroid/view/View;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/ui/e$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    move-result v1

    if-ge p1, v1, :cond_2d

    neg-int v0, v0

    if-gt p1, v0, :cond_34

    .line 8
    :cond_2d
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->popFromViewStack()V

    .line 10
    :cond_34
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->m()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 13
    const-string p1, ""

    .line 15
    :cond_4e
    iget-object v0, p0, Lio/dcloud/feature/ui/e$c;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/ui/e$c;->d:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v2, v3, p1

    const-string p1, "{\"id\":\"%s\",\"target\":%s}"

    invoke-static {p1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 17
    :cond_6e
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 18
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    const-string v0, "hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "[null,null,null]"

    if-eqz p1, :cond_90

    .line 19
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    return-void

    .line 20
    :cond_90
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->e:Ljava/lang/String;

    const-string v0, "close"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 21
    iget-object p1, p0, Lio/dcloud/feature/ui/e$c;->b:Lio/dcloud/feature/ui/c;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    :cond_a7
    :goto_a7
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.ui.e.d (io.dcloud.feature.ui.e$d)
.class abstract synthetic Lio/dcloud/feature/ui/e$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/ui/e$e;->values()[Lio/dcloud/feature/ui/e$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/feature/ui/e$e;->a:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->f:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->q:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->r:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->b:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->d:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->c:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->n:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->e:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->g:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->h:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->i:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->l:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->m:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->o:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lio/dcloud/feature/ui/e$d;->a:[I

    sget-object v1, Lio/dcloud/feature/ui/e$e;->s:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method

###### Class io.dcloud.feature.ui.e.EnumC0047e (io.dcloud.feature.ui.e$e)
.class final enum Lio/dcloud/feature/ui/e$e;
.super Ljava/lang/Enum;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation


# static fields
.field public static final enum a:Lio/dcloud/feature/ui/e$e;

.field public static final enum b:Lio/dcloud/feature/ui/e$e;

.field public static final enum c:Lio/dcloud/feature/ui/e$e;

.field public static final enum d:Lio/dcloud/feature/ui/e$e;

.field public static final enum e:Lio/dcloud/feature/ui/e$e;

.field public static final enum f:Lio/dcloud/feature/ui/e$e;

.field public static final enum g:Lio/dcloud/feature/ui/e$e;

.field public static final enum h:Lio/dcloud/feature/ui/e$e;

.field public static final enum i:Lio/dcloud/feature/ui/e$e;

.field public static final enum j:Lio/dcloud/feature/ui/e$e;

.field public static final enum k:Lio/dcloud/feature/ui/e$e;

.field public static final enum l:Lio/dcloud/feature/ui/e$e;

.field public static final enum m:Lio/dcloud/feature/ui/e$e;

.field public static final enum n:Lio/dcloud/feature/ui/e$e;

.field public static final enum o:Lio/dcloud/feature/ui/e$e;

.field public static final enum p:Lio/dcloud/feature/ui/e$e;

.field public static final enum q:Lio/dcloud/feature/ui/e$e;

.field public static final enum r:Lio/dcloud/feature/ui/e$e;

.field public static final enum s:Lio/dcloud/feature/ui/e$e;

.field public static final enum t:Lio/dcloud/feature/ui/e$e;

.field private static final synthetic u:[Lio/dcloud/feature/ui/e$e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "findWindowByName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->a:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "enumWindow"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->b:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "getLaunchWebview"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->c:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "getWapLaunchWebview"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->d:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "currentWebview"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->e:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "getTopWebview"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->f:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "createView"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->g:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "setcallbackid"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->h:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "debug"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->i:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "setLogs"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->j:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "isLogs"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->k:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "defaultHardwareAccelerated"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->l:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "startAnimation"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->m:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "getSecondWebview"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->n:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "getDisplayWebview"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->o:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "updateAppFrameViews"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->p:Lio/dcloud/feature/ui/e$e;

    .line 2
    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "prefetchURL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->q:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "prefetchURLs"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->r:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "postMessageToUniNView"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->s:Lio/dcloud/feature/ui/e$e;

    new-instance v0, Lio/dcloud/feature/ui/e$e;

    const-string v1, "__callNativeModuleSync"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/e$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    .line 3
    invoke-static {}, Lio/dcloud/feature/ui/e$e;->a()[Lio/dcloud/feature/ui/e$e;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/ui/e$e;->u:[Lio/dcloud/feature/ui/e$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lio/dcloud/feature/ui/e$e;
    .registers 3

    const/16 v0, 0x14

    .line 1
    new-array v0, v0, [Lio/dcloud/feature/ui/e$e;

    sget-object v1, Lio/dcloud/feature/ui/e$e;->a:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->b:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->c:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->d:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->e:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->f:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->g:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->h:Lio/dcloud/feature/ui/e$e;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->i:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->j:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->k:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->l:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->m:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->n:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->o:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->p:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->q:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->r:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->s:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/ui/e$e;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/ui/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/ui/e$e;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/ui/e$e;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/ui/e$e;->u:[Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v0}, [Lio/dcloud/feature/ui/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/ui/e$e;

    return-object v0
.end method
