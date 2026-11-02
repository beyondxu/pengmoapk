###### Class io.dcloud.p.d5 (io.dcloud.p.d5)
.class Lio/dcloud/p/d5;
.super Lio/dcloud/p/e5;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IApp;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# static fields
.field public static H1:Ljava/lang/String; = "webapp"


# instance fields
.field A:Ljava/lang/String;

.field private A0:Ljava/lang/String;

.field private A1:Ljava/lang/String;

.field B:Ljava/lang/String;

.field B0:Ljava/util/ArrayList;

.field private B1:Ljava/lang/String;

.field C:Ljava/lang/String;

.field C0:Ljava/util/HashMap;

.field private C1:Ljava/lang/String;

.field D:Ljava/lang/String;

.field D0:Lorg/json/JSONObject;

.field D1:Z

.field E:Ljava/lang/String;

.field E0:Lorg/json/JSONObject;

.field E1:Ljava/util/HashMap;

.field F:Ljava/lang/String;

.field F0:Lorg/json/JSONObject;

.field F1:Ljava/lang/String;

.field G:Ljava/lang/String;

.field G0:Lorg/json/JSONObject;

.field G1:Z

.field H:Ljava/lang/String;

.field H0:Lorg/json/JSONObject;

.field I:Ljava/lang/String;

.field I0:Lorg/json/JSONObject;

.field J:Ljava/lang/String;

.field J0:Lorg/json/JSONObject;

.field K:Ljava/lang/String;

.field K0:Lorg/json/JSONObject;

.field L:Ljava/lang/String;

.field L0:Lorg/json/JSONObject;

.field M:Z

.field M0:Ljava/lang/String;

.field N:Z

.field N0:Ljava/lang/String;

.field O:Z

.field O0:Landroid/content/Intent;

.field P:Z

.field P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

.field Q:Z

.field Q0:Ljava/lang/String;

.field R:Z

.field private R0:Ljava/lang/String;

.field S:Z

.field private S0:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field T0:Z

.field U:Z

.field private U0:Z

.field private V:B

.field private V0:Z

.field private W:Z

.field private W0:Ljava/lang/String;

.field private X:Z

.field private X0:Ljava/lang/String;

.field private Y:Z

.field private Y0:Ljava/lang/String;

.field private Z:Z

.field private Z0:Ljava/lang/String;

.field private a0:I

.field private a1:Ljava/lang/String;

.field private b0:I

.field protected b1:Z

.field private c0:I

.field private c1:Z

.field private d0:Ljava/lang/String;

.field private d1:Z

.field private e0:Ljava/lang/String;

.field private e1:Ljava/lang/String;

.field private f0:Ljava/lang/String;

.field private f1:Ljava/lang/String;

.field private g0:Ljava/lang/String;

.field private g1:Z

.field private h0:Ljava/lang/String;

.field h1:J

.field private i0:Ljava/lang/String;

.field i1:Z

.field j0:Z

.field j1:Z

.field private k0:Ljava/lang/String;

.field k1:Z

.field l0:Ljava/lang/String;

.field l1:Ljava/util/ArrayList;

.field m0:Ljava/lang/String;

.field m1:Ljava/util/ArrayList;

.field n0:Ljava/lang/String;

.field n1:Ljava/lang/String;

.field o0:Z

.field o1:Ljava/lang/String;

.field p0:Ljava/lang/String;

.field private p1:Ljava/lang/String;

.field q0:Ljava/lang/String;

.field private q1:Z

.field r0:Ljava/lang/String;

.field private r1:Ljava/lang/String;

.field s:Lio/dcloud/p/f5;

.field private s0:Ljava/lang/String;

.field private s1:I

.field t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

.field t0:Ljava/lang/String;

.field private t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

.field u:B

.field private u0:Ljava/lang/String;

.field private u1:Ljava/lang/String;

.field v:Z

.field private v0:Lorg/json/JSONObject;

.field v1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

.field w:Z

.field private w0:Ljava/lang/String;

.field w1:Z

.field x:Z

.field private x0:Z

.field x1:Lorg/json/JSONObject;

.field y:Lio/dcloud/p/r;

.field private y0:Z

.field private y1:Z

.field z:Ljava/lang/String;

.field private z0:Ljava/lang/String;

.field private z1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/p/r;Ljava/lang/String;B)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/e5;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    .line 6
    iput-object v0, p0, Lio/dcloud/p/d5;->t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    const/4 v1, 0x1

    .line 10
    iput-byte v1, p0, Lio/dcloud/p/d5;->u:B

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, p0, Lio/dcloud/p/d5;->v:Z

    .line 18
    iput-boolean v2, p0, Lio/dcloud/p/d5;->w:Z

    .line 20
    iput-boolean v2, p0, Lio/dcloud/p/d5;->x:Z

    .line 21
    iput-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    .line 25
    iput-object v0, p0, Lio/dcloud/p/d5;->z:Ljava/lang/String;

    .line 29
    const-string v3, ""

    iput-object v3, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lio/dcloud/p/d5;->C:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lio/dcloud/p/d5;->D:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lio/dcloud/p/d5;->E:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lio/dcloud/p/d5;->F:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lio/dcloud/p/d5;->G:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/p/d5;->H:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lio/dcloud/p/d5;->I:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lio/dcloud/p/d5;->J:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lio/dcloud/p/d5;->K:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lio/dcloud/p/d5;->L:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lio/dcloud/p/d5;->M:Z

    .line 72
    iput-boolean v1, p0, Lio/dcloud/p/d5;->N:Z

    .line 76
    iput-boolean v1, p0, Lio/dcloud/p/d5;->O:Z

    .line 80
    iput-boolean v2, p0, Lio/dcloud/p/d5;->P:Z

    .line 84
    iput-boolean v1, p0, Lio/dcloud/p/d5;->Q:Z

    .line 88
    iput-boolean v1, p0, Lio/dcloud/p/d5;->R:Z

    .line 92
    iput-boolean v2, p0, Lio/dcloud/p/d5;->S:Z

    .line 93
    iput-object v0, p0, Lio/dcloud/p/d5;->T:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lio/dcloud/p/d5;->U:Z

    .line 98
    iput-byte v1, p0, Lio/dcloud/p/d5;->V:B

    .line 100
    iput-boolean v2, p0, Lio/dcloud/p/d5;->W:Z

    .line 104
    iput-boolean v2, p0, Lio/dcloud/p/d5;->X:Z

    .line 108
    iput-boolean v1, p0, Lio/dcloud/p/d5;->Y:Z

    .line 112
    iput-boolean v1, p0, Lio/dcloud/p/d5;->Z:Z

    const/16 v4, 0x2710

    .line 116
    iput v4, p0, Lio/dcloud/p/d5;->a0:I

    .line 120
    iput v2, p0, Lio/dcloud/p/d5;->b0:I

    .line 121
    iput v2, p0, Lio/dcloud/p/d5;->c0:I

    .line 125
    iput-object v0, p0, Lio/dcloud/p/d5;->d0:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lio/dcloud/p/d5;->e0:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lio/dcloud/p/d5;->j0:Z

    .line 143
    iput-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lio/dcloud/p/d5;->m0:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lio/dcloud/p/d5;->n0:Ljava/lang/String;

    .line 157
    iput-boolean v2, p0, Lio/dcloud/p/d5;->o0:Z

    .line 161
    const-string v4, "accept"

    iput-object v4, p0, Lio/dcloud/p/d5;->p0:Ljava/lang/String;

    .line 167
    const-string v4, "file:///android_asset/data/dcloud_error.html"

    iput-object v4, p0, Lio/dcloud/p/d5;->q0:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lio/dcloud/p/d5;->r0:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lio/dcloud/p/d5;->s0:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    .line 185
    const-string v4, "-1"

    iput-object v4, p0, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lio/dcloud/p/d5;->v0:Lorg/json/JSONObject;

    .line 187
    iput-object v3, p0, Lio/dcloud/p/d5;->w0:Ljava/lang/String;

    .line 188
    iput-boolean v1, p0, Lio/dcloud/p/d5;->x0:Z

    .line 189
    iput-boolean v2, p0, Lio/dcloud/p/d5;->y0:Z

    .line 194
    const-string v4, "uni-v3"

    iput-object v4, p0, Lio/dcloud/p/d5;->z0:Ljava/lang/String;

    .line 198
    const-string v4, "fast"

    iput-object v4, p0, Lio/dcloud/p/d5;->A0:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    .line 206
    iput-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    .line 210
    iput-object v0, p0, Lio/dcloud/p/d5;->D0:Lorg/json/JSONObject;

    .line 215
    iput-object v0, p0, Lio/dcloud/p/d5;->E0:Lorg/json/JSONObject;

    .line 220
    iput-object v0, p0, Lio/dcloud/p/d5;->F0:Lorg/json/JSONObject;

    .line 222
    iput-object v0, p0, Lio/dcloud/p/d5;->G0:Lorg/json/JSONObject;

    .line 223
    iput-object v0, p0, Lio/dcloud/p/d5;->H0:Lorg/json/JSONObject;

    .line 224
    iput-object v0, p0, Lio/dcloud/p/d5;->I0:Lorg/json/JSONObject;

    .line 225
    iput-object v0, p0, Lio/dcloud/p/d5;->J0:Lorg/json/JSONObject;

    .line 226
    iput-object v0, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    .line 227
    iput-object v0, p0, Lio/dcloud/p/d5;->L0:Lorg/json/JSONObject;

    .line 229
    iput-object v0, p0, Lio/dcloud/p/d5;->M0:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lio/dcloud/p/d5;->N0:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    .line 235
    iput-object v0, p0, Lio/dcloud/p/d5;->P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    .line 237
    iput-object v0, p0, Lio/dcloud/p/d5;->Q0:Ljava/lang/String;

    .line 241
    const-string v4, "none"

    iput-object v4, p0, Lio/dcloud/p/d5;->S0:Ljava/lang/String;

    .line 245
    iput-boolean v2, p0, Lio/dcloud/p/d5;->T0:Z

    .line 246
    iput-boolean v2, p0, Lio/dcloud/p/d5;->U0:Z

    .line 247
    iput-boolean v2, p0, Lio/dcloud/p/d5;->V0:Z

    .line 248
    const-string v5, "default"

    iput-object v5, p0, Lio/dcloud/p/d5;->W0:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lio/dcloud/p/d5;->Y0:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lio/dcloud/p/d5;->Z0:Ljava/lang/String;

    .line 259
    iput-object v3, p0, Lio/dcloud/p/d5;->a1:Ljava/lang/String;

    .line 261
    iput-boolean v2, p0, Lio/dcloud/p/d5;->b1:Z

    .line 262
    iput-boolean v2, p0, Lio/dcloud/p/d5;->c1:Z

    .line 263
    iput-boolean v2, p0, Lio/dcloud/p/d5;->d1:Z

    .line 264
    iput-object v0, p0, Lio/dcloud/p/d5;->e1:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lio/dcloud/p/d5;->f1:Ljava/lang/String;

    .line 267
    iput-boolean v2, p0, Lio/dcloud/p/d5;->g1:Z

    const-wide/16 v5, 0x0

    .line 272
    iput-wide v5, p0, Lio/dcloud/p/d5;->h1:J

    .line 276
    iput-boolean v1, p0, Lio/dcloud/p/d5;->i1:Z

    .line 278
    iput-boolean v2, p0, Lio/dcloud/p/d5;->j1:Z

    .line 280
    iput-boolean v2, p0, Lio/dcloud/p/d5;->k1:Z

    .line 282
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/dcloud/p/d5;->l1:Ljava/util/ArrayList;

    .line 283
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/dcloud/p/d5;->m1:Ljava/util/ArrayList;

    .line 285
    iput-object v0, p0, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lio/dcloud/p/d5;->o1:Ljava/lang/String;

    .line 288
    iput-object v3, p0, Lio/dcloud/p/d5;->p1:Ljava/lang/String;

    .line 292
    iput-boolean v2, p0, Lio/dcloud/p/d5;->q1:Z

    .line 293
    iput-object v0, p0, Lio/dcloud/p/d5;->r1:Ljava/lang/String;

    .line 295
    iput v1, p0, Lio/dcloud/p/d5;->s1:I

    .line 310
    iput-object v0, p0, Lio/dcloud/p/d5;->v1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 376
    iput-boolean v2, p0, Lio/dcloud/p/d5;->w1:Z

    .line 1260
    iput-object v0, p0, Lio/dcloud/p/d5;->x1:Lorg/json/JSONObject;

    .line 1524
    iput-boolean v2, p0, Lio/dcloud/p/d5;->y1:Z

    .line 1535
    iput-object v4, p0, Lio/dcloud/p/d5;->z1:Ljava/lang/String;

    .line 1548
    const-string v3, "force"

    iput-object v3, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    .line 2639
    iput-object v0, p0, Lio/dcloud/p/d5;->B1:Ljava/lang/String;

    .line 2640
    iput-object v0, p0, Lio/dcloud/p/d5;->C1:Ljava/lang/String;

    .line 3105
    iput-boolean v1, p0, Lio/dcloud/p/d5;->D1:Z

    .line 3219
    iput-object v0, p0, Lio/dcloud/p/d5;->E1:Ljava/util/HashMap;

    .line 3220
    iput-object v0, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    .line 3307
    iput-boolean v2, p0, Lio/dcloud/p/d5;->G1:Z

    .line 3308
    iput-object p1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    .line 3309
    iput-object p2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    .line 3310
    invoke-virtual {p0, p3}, Lio/dcloud/p/d5;->b(B)V

    .line 3311
    invoke-static {}, Lio/dcloud/p/i0;->c()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    .line 3312
    new-instance p1, Lio/dcloud/p/f5;

    invoke-direct {p1}, Lio/dcloud/p/f5;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    .line 3313
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    .line 3314
    invoke-static {p2}, Lio/dcloud/common/util/AppRuntime;->isUniApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/e5;->q:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/d5;B)B
    .registers 2

    .line 2
    iput-byte p1, p0, Lio/dcloud/p/d5;->V:B

    return p1
.end method

.method public static a(Landroid/content/Context;)I
    .registers 1

    .line 785
    invoke-static {p0}, Lio/dcloud/p/d5;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0
.end method

.method private a(B)Ljava/lang/String;
    .registers 3

    .line 1228
    iget-byte p1, p0, Lio/dcloud/p/d5;->V:B

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 1229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    if-nez p1, :cond_36

    .line 1231
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/p/d5;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 4

    .line 652
    :try_start_0
    iget-boolean v0, p0, Lio/dcloud/p/e5;->q:Z

    if-nez v0, :cond_12

    .line 653
    new-instance v0, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, v0

    .line 655
    :cond_12
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 656
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 657
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    .line 660
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .registers 6

    .line 778
    iget-boolean v0, p0, Lio/dcloud/p/e5;->q:Z

    if-eqz v0, :cond_5

    goto :goto_48

    .line 779
    :cond_5
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_14

    .line 780
    invoke-static {}, Lio/dcloud/p/b;->o()Lio/dcloud/p/b;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/dcloud/p/b;->a(Landroid/content/Context;)V

    .line 781
    :cond_14
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result v0

    if-nez v0, :cond_48

    .line 782
    invoke-static {}, Lio/dcloud/p/r3;->a()Lio/dcloud/p/r3;

    move-result-object v0

    const-string v1, "commit"

    invoke-virtual {v0, v1}, Lio/dcloud/p/r3;->a(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IPdrModule;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 784
    iget-object v1, p0, Lio/dcloud/p/d5;->N0:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    iget-object v2, v2, Lio/dcloud/p/r;->g:Lorg/json/JSONObject;

    if-eqz v2, :cond_35

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    :cond_35
    const-string v2, "0.1"

    :goto_37
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const-string v1, "start_up"

    invoke-interface {v0, v1, v3}, Lio/dcloud/common/DHInterface/IPdrModule;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_48
    :goto_48
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 757
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public static a(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z
    .registers 2

    .line 792
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p0, v0, :cond_e

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p0, v0, :cond_e

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private a(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z
    .registers 6

    .line 790
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IBoot;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    const/4 v2, 0x0

    .line 791
    invoke-virtual {v0, v2, v1, p1}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p2, v0, :cond_27

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p2, v0, :cond_27

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p2, v0, :cond_27

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p2, v0, :cond_2d

    :cond_27
    instance-of p1, p1, Lio/dcloud/common/DHInterface/ReceiveSystemEventVoucher;

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v2

    :cond_2d
    :goto_2d
    return v1
.end method

.method private a(Lorg/json/JSONObject;Lio/dcloud/p/f5;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    .line 1241
    const-string v1, "control"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1243
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1245
    const-string v1, "uni-v3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p1, 0x1

    :goto_21
    if-nez p1, :cond_2f

    .line 1251
    iput-boolean v0, p2, Lio/dcloud/p/f5;->a:Z

    .line 1252
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_COMPONENTS_MODE_NOT_SUPPORT:Ljava/lang/String;

    const/16 v1, 0x4e2

    invoke-static {v1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    :cond_2f
    return p1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 237
    invoke-static {p0}, Lio/dcloud/p/d5;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1a

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    return-object p0
.end method

.method private b()V
    .registers 4

    .line 233
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result v0

    if-nez v0, :cond_20

    .line 234
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/s;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 235
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/p/d5$d;

    invoke-direct {v2, p0, v0}, Lio/dcloud/p/d5$d;-><init>(Lio/dcloud/p/d5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method

.method private b(I)Z
    .registers 11

    const/4 v0, 0x0

    .line 179
    sput v0, Lio/dcloud/common/adapter/util/PermissionUtil;->sUseStreamAppPermissionDialogCount:I

    .line 180
    sget-object v1, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sUsePermissionWebviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v1, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->removeTempPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start0 mAppid==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lio/dcloud/p/d5;->z:Ljava/lang/String;

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/util/BaseInfo;->putStartupTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lio/dcloud/common/util/BaseInfo;->sProcessId:J

    .line 186
    sget-object v1, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lio/dcloud/p/d5;->V:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_50

    const-string v3, " APP_RUNNING_MODE"

    goto :goto_52

    :cond_50
    const-string v3, " FS_RUNNING_MODE"

    :goto_52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lio/dcloud/p/d5;->t()V

    const/4 v1, 0x3

    .line 188
    invoke-virtual {p0, v1}, Lio/dcloud/p/d5;->setStatus(B)V

    .line 189
    iget-object v2, p0, Lio/dcloud/p/d5;->P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    if-eqz v2, :cond_6a

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onStart()V

    .line 190
    :cond_6a
    sget-object v2, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mLaunchPath="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webapp start task begin success appid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "download_manager"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v2, Lio/dcloud/common/util/TestUtil;->START_STREAM_APP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "webapp start appid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "start0"

    invoke-static {v4, v2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "__launch_path__"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_ef

    .line 197
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ef

    .line 198
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 200
    const-string v3, "about:blank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ec

    .line 201
    invoke-virtual {p0, v5, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_ec
    iput-boolean v4, p0, Lio/dcloud/p/d5;->o0:Z

    goto :goto_10c

    .line 204
    :cond_ef
    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lio/dcloud/p/d5;->n0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 205
    iget-object v2, p0, Lio/dcloud/p/d5;->n0:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10c

    .line 207
    :cond_106
    iget-object v2, p0, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    :goto_10c
    invoke-direct {p0, p0}, Lio/dcloud/p/d5;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_130

    new-instance v3, Ljava/io/File;

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    .line 210
    invoke-virtual {p0, v6}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_130

    .line 213
    iget-object v2, p0, Lio/dcloud/p/d5;->m0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12e

    iget-object v2, p0, Lio/dcloud/p/d5;->o1:Ljava/lang/String;

    goto :goto_130

    :cond_12e
    iget-object v2, p0, Lio/dcloud/p/d5;->m0:Ljava/lang/String;

    .line 215
    :cond_130
    :goto_130
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_14e

    .line 216
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 217
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    :cond_14e
    iget-boolean v3, p0, Lio/dcloud/p/d5;->q1:Z

    if-eqz v3, :cond_158

    .line 221
    const-string v2, "__uniappview.html"

    invoke-virtual {p0, v5, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    :cond_158
    iget-object v3, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-boolean v6, p0, Lio/dcloud/p/d5;->T0:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lio/dcloud/p/d5;->W0:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v0

    aput-object v2, v8, v4

    const/4 v0, 0x2

    aput-object v6, v8, v0

    aput-object v7, v8, v1

    invoke-virtual {v3, v5, p1, v8}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_177

    return v4

    .line 225
    :cond_177
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsSitMapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/_sitemap.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .registers 1

    return-void
.end method

.method private e()V
    .registers 6

    const-string v0, "homeButton"

    const-string v1, "webviewid"

    .line 1
    iget-object v2, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    if-eqz v2, :cond_5c

    .line 3
    :try_start_8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5
    iget-object v3, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    const-string v4, "direct_page"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_19
    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1f} :catch_58

    const-string v2, "titleNView"

    if-eqz v1, :cond_2c

    .line 8
    :try_start_23
    iget-object v0, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/d5;->J0:Lorg/json/JSONObject;

    return-void

    .line 11
    :cond_2c
    iget-object v1, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 12
    iget-object v1, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-nez v1, :cond_48

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    iget-object v3, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_48
    const-string v2, "autoBackButton"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 20
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5c
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private f()V
    .registers 6

    .line 1
    const-string v0, "wap2app__template/"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wap2app_temp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2
    const-string v2, "data/wap2app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4f

    .line 4
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/d5$a;

    invoke-direct {v1, p0}, Lio/dcloud/p/d5$a;-><init>(Lio/dcloud/p/d5;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4f} :catch_50

    :cond_4f
    return-void

    :catch_50
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private h()Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "_www/__template.json"

    invoke-virtual {p0, v1}, Lio/dcloud/p/d5;->obtainResInStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    :cond_10
    return-object v0

    :catch_11
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private i()Lorg/json/JSONObject;
    .registers 12

    const-string v0, "version"

    const-string v1, "wap2app__template/"

    const-string v2, "wap2app__template.zip"

    const/4 v3, 0x0

    .line 1
    :try_start_7
    sget-boolean v4, Lio/dcloud/common/util/BaseInfo;->sCoverApkRuning:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_186

    const/4 v5, 0x1

    const-string v6, "wap2app__template/__template.json"

    const/4 v7, 0x0

    if-eqz v4, :cond_73

    .line 2
    :try_start_f
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 6
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseConfigTemplatePath:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 7
    invoke-direct {p0, v4}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v8

    .line 8
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static {v4}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4

    .line 15
    invoke-direct {p0, v4}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v10

    .line 16
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v4}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 18
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 19
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 21
    invoke-static {v9, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 22
    invoke-direct {p0}, Lio/dcloud/p/d5;->f()V

    move-object v3, v8

    const/4 v7, 0x1

    goto :goto_73

    :cond_72
    move-object v3, v10

    .line 30
    :cond_73
    :goto_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "wap2app_temp/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_b1} :catch_186

    .line 33
    :try_start_b1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_db} :catch_e7
    .catchall {:try_start_b1 .. :try_end_db} :catchall_e5

    .line 38
    :try_start_db
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/d5$b;

    invoke-direct {v1, p0}, Lio/dcloud/p/d5$b;-><init>(Lio/dcloud/p/d5;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e4} :catch_186

    goto :goto_f5

    :catchall_e5
    move-exception v0

    goto :goto_f9

    :catch_e7
    move-exception v0

    .line 39
    :try_start_e8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_e5

    .line 41
    :try_start_eb
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/d5$b;

    invoke-direct {v1, p0}, Lio/dcloud/p/d5$b;-><init>(Lio/dcloud/p/d5;)V

    move v5, v7

    .line 38
    :goto_f5
    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    goto :goto_127

    .line 41
    :goto_f9
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/p/d5$b;

    invoke-direct {v2, p0}, Lio/dcloud/p/d5$b;-><init>(Lio/dcloud/p/d5;)V

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 52
    throw v0

    .line 53
    :cond_106
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_126

    .line 54
    invoke-direct {p0}, Lio/dcloud/p/d5;->f()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_125} :catch_186

    goto :goto_127

    :cond_126
    move v5, v7

    :goto_127
    const-string v0, "__w2a__template__"

    if-nez v5, :cond_143

    .line 58
    :try_start_12b
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_143

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_143

    iget-object v1, p0, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_18a

    :cond_143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3

    .line 61
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 62
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 64
    iget-object v1, p0, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_185} :catch_186

    goto :goto_18a

    :catch_186
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18a
    :goto_18a
    return-object v3
.end method

.method private l()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/d5;->E1:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    const-string v1, "Authorize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 5
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 6
    array-length v1, v0

    if-lez v1, :cond_60

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_3a
    array-length v3, v0

    if-ge v2, v3, :cond_60

    .line 8
    aget-object v3, v0, v2

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 10
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lio/dcloud/p/d5;->E1:Ljava/util/HashMap;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_60
    return-void
.end method

.method private x()V
    .registers 17

    move-object/from16 v1, p0

    const-string v0, "confusion"

    const-string v2, "files"

    const-string v3, "__template.json"

    .line 1
    iget-object v4, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    return-void

    .line 2
    :cond_11
    invoke-direct {v1}, Lio/dcloud/p/d5;->i()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "version"

    if-nez v4, :cond_1c

    .line 3
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;

    goto :goto_20

    :cond_1c
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    :goto_20
    :try_start_20
    invoke-direct {v1}, Lio/dcloud/p/d5;->h()Lorg/json/JSONObject;

    move-result-object v7
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_1ee

    const-string v8, "wap2app__template/"

    const/4 v10, 0x1

    if-eqz v7, :cond_5b

    .line 8
    :try_start_29
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5b

    .line 10
    invoke-static {v5, v6}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 13
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 14
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->mW2AE:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move-object v6, v5

    move-object v4, v7

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    .line 20
    :goto_5c
    sget-object v7, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_18a

    if-eqz v4, :cond_15f

    .line 21
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 22
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 24
    invoke-virtual {v1}, Lio/dcloud/p/d5;->obtainRunningAppMode()B

    move-result v11

    if-ne v11, v10, :cond_7c

    const/4 v11, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v11, 0x0

    :goto_7d
    const/4 v12, 0x0

    :goto_7e
    if-ge v12, v7, :cond_f4

    .line 26
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 27
    sget-object v14, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_89} :catch_1ee

    if-eqz v5, :cond_f1

    const-string v14, "/www/"

    if-eqz v11, :cond_c0

    .line 30
    :try_start_8f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_f1

    .line 32
    :cond_c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v9, v13, v10, v14}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    :cond_f1
    :goto_f1
    add-int/lit8 v12, v12, 0x1

    goto :goto_7e

    :cond_f4
    if-eqz v5, :cond_18a

    .line 36
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_fc} :catch_1ee

    if-nez v2, :cond_18a

    const-string v2, "/www/__template.json"

    if-eqz v11, :cond_130

    .line 38
    :try_start_102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_18a

    .line 40
    :cond_130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-static {v2, v3, v10, v14}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    goto :goto_18a

    :cond_15f
    const/4 v14, 0x0

    .line 44
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18a

    const/4 v9, 0x0

    .line 47
    :goto_17d
    array-length v3, v2

    if-ge v9, v3, :cond_18a

    .line 48
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->mWap2appTemplateFiles:Ljava/util/ArrayList;

    aget-object v7, v2, v9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_187} :catch_1ee

    add-int/lit8 v9, v9, 0x1

    goto :goto_17d

    :cond_18a
    :goto_18a
    const-string v2, "__w2a__template__"

    if-nez v5, :cond_196

    .line 53
    :try_start_18e
    iget-object v3, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1cb

    :cond_196
    if-eqz v4, :cond_1cb

    .line 54
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 56
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    invoke-virtual {v1}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1ae

    .line 60
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    .line 62
    :cond_1ae
    iget-object v4, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v4, v3, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 64
    const-string v0, "{}"

    .line 66
    :cond_1bc
    iget-object v3, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 67
    iget-object v3, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionResources(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 71
    :cond_1cb
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wap2app__template/__template.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 73
    sput-wide v2, Lio/dcloud/common/util/BaseInfo;->sTemplateModifyTime:J

    .line 75
    sput-object v6, Lio/dcloud/common/util/BaseInfo;->sWap2AppTemplateVersion:Ljava/lang/String;

    .line 76
    iput-object v6, v1, Lio/dcloud/p/d5;->D:Ljava/lang/String;
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1ed} :catch_1ee

    return-void

    :catch_1ee
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method a(Lio/dcloud/common/DHInterface/IWebviewStateListener;)Lio/dcloud/common/DHInterface/IFrameView;
    .registers 7

    .line 786
    invoke-virtual {p0}, Lio/dcloud/p/d5;->t()V

    .line 787
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const/16 p1, 0x11

    invoke-virtual {v0, v1, p1, v3}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    return-object p1
.end method

.method a(Lio/dcloud/common/DHInterface/IWebviewStateListener;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/DHInterface/IFrameView;
    .registers 8

    .line 788
    invoke-virtual {p0}, Lio/dcloud/p/d5;->t()V

    .line 789
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const/4 p1, 0x3

    aput-object p2, v3, p1

    const/16 p1, 0x11

    invoke-virtual {v0, v1, p1, v3}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/IFrameView;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/app/Activity;)V
    .registers 6

    .line 661
    invoke-super {p0, p1}, Lio/dcloud/p/e5;->a(Landroid/app/Activity;)V

    .line 662
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    if-eqz v0, :cond_14

    .line 663
    iget-boolean v1, p0, Lio/dcloud/p/d5;->b1:Z

    invoke-virtual {v0, p1, v1}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    .line 664
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->isFullScreen()Z

    move-result v1

    iput-boolean v1, v0, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    .line 667
    :cond_14
    iget-object v0, p0, Lio/dcloud/p/e5;->l:Lio/dcloud/common/adapter/util/ViewRect;

    const-string v1, "{}"

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    .line 668
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v2, "StatusBarHeight"

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/e5;->f:I

    const/4 v0, 0x4

    .line 669
    invoke-virtual {p0, v0}, Lio/dcloud/p/e5;->updateScreenInfo(I)V

    .line 670
    iput-boolean v1, p0, Lio/dcloud/p/d5;->y1:Z

    .line 682
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    .line 683
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result v1

    if-nez v1, :cond_85

    if-eqz v0, :cond_85

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    iget-object v1, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v1, p0, Lio/dcloud/p/d5;->N0:Ljava/lang/String;

    const-string v2, "adid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v1, p0, Lio/dcloud/p/d5;->Y0:Ljava/lang/String;

    const-string v2, "bg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v1, p0, Lio/dcloud/p/d5;->Z0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/dcloud/p/d5;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "img"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    const-string v3, "save"

    invoke-static {v1, v2, v3, v0}, Lio/dcloud/p/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_85
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 696
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 697
    const-string v2, "from_short_cut_start"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const/4 v2, 0x1

    .line 698
    iput-boolean v2, p0, Lio/dcloud/p/d5;->y1:Z

    :cond_a2
    if-eqz v1, :cond_b2

    .line 700
    const-string v2, "create_shortcut"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 701
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    :cond_b2
    if-eqz v1, :cond_c2

    .line 703
    const-string v2, "shortcutQuit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 704
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/p/d5;->z1:Ljava/lang/String;

    :cond_c2
    if-eqz v1, :cond_d2

    .line 706
    const-string v2, "__scq"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 707
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/p/d5;->z1:Ljava/lang/String;

    .line 709
    :cond_d2
    const-string v1, "__sc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 710
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    .line 713
    :cond_e0
    iget-object v1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 714
    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->getLaunchType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string v1, "force"

    iput-object v1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    .line 716
    const-string v2, "scheme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 717
    const-string p1, "query"

    iput-object p1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    return-void

    .line 718
    :cond_fd
    iget-boolean v0, p0, Lio/dcloud/p/d5;->P:Z

    if-eqz v0, :cond_104

    .line 719
    iput-object v1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    return-void

    .line 721
    :cond_104
    const-string v0, "pdr"

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "test_runing"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_130

    const-string v0, "__am=t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_130

    .line 724
    iput-object v1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    return-void

    .line 726
    :cond_130
    const-string p1, "none"

    iput-object p1, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    :cond_134
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 728
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lio/dcloud/p/d5;->j0:Z

    if-eqz v0, :cond_1a

    :cond_8
    iget-byte v0, p0, Lio/dcloud/p/d5;->V:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 730
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v2, Lio/dcloud/p/d5$c;

    invoke-direct {v2, p0, p1}, Lio/dcloud/p/d5$c;-><init>(Lio/dcloud/p/d5;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 756
    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 6

    .line 1232
    iget-object v0, p0, Lio/dcloud/p/d5;->E1:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    iget-object v0, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "="

    if-eqz v0, :cond_28

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    goto :goto_46

    .line 1236
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    .line 1239
    :goto_46
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1240
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/p/d5;->F1:Ljava/lang/String;

    const-string v0, "Authorize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 64

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, v1, Lio/dcloud/p/d5;->j1:Z

    .line 5
    iget-object v5, v1, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    const/4 v6, 0x1

    if-eqz v5, :cond_16

    .line 7
    iget-boolean v7, v5, Lio/dcloud/p/f5;->d:Z

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_17

    :cond_16
    const/4 v7, 0x0

    .line 8
    :goto_17
    iget-object v8, v1, Lio/dcloud/p/d5;->m1:Ljava/util/ArrayList;

    sget-object v9, Lio/dcloud/common/util/AppStreamUtil;->AppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {v1}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_26

    .line 12
    sget-object v8, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    :cond_26
    const-string v9, ""

    if-eqz v0, :cond_6c

    .line 16
    :try_start_2a
    iget-boolean v10, v1, Lio/dcloud/p/e5;->q:Z

    if-nez v10, :cond_3c

    .line 17
    new-instance v10, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v10

    .line 19
    :cond_3c
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 21
    iget-object v10, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v10, v8, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4b

    .line 23
    iput-boolean v6, v1, Lio/dcloud/p/d5;->U0:Z

    goto :goto_6d

    .line 27
    :cond_4b
    iput-boolean v4, v1, Lio/dcloud/p/d5;->U0:Z

    .line 28
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_52} :catch_53

    goto :goto_6d

    :catch_53
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseConfig error="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_6c
    move-object v10, v9

    .line 36
    :goto_6d
    iget-boolean v0, v1, Lio/dcloud/p/d5;->U0:Z

    if-eqz v0, :cond_8c

    if-eqz v7, :cond_8c

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_8c

    invoke-static {v8}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8c

    if-eqz v7, :cond_8c

    .line 37
    iput-boolean v6, v5, Lio/dcloud/p/f5;->a:Z

    .line 38
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_BASE_DEBUG_WGT_INSTALL_NOT_CONFUSION:Ljava/lang/String;

    const/16 v2, -0x4b6

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    return v4

    .line 44
    :cond_8c
    :try_start_8c
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_b45

    .line 57
    const-string v0, "version"

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    const-string v10, "name"

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 59
    const-string v14, "code"

    invoke-static {v0, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 60
    sput-object v13, Lio/dcloud/common/util/BaseInfo;->sLastAppVersionName:Ljava/lang/String;

    .line 64
    iget-object v15, v1, Lio/dcloud/p/d5;->p0:Ljava/lang/String;

    .line 70
    invoke-static {v8}, Lio/dcloud/common/util/LoadAppUtils;->getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    if-eqz v7, :cond_ec

    if-eqz v3, :cond_bc

    .line 74
    const-string v4, "force"

    invoke-static {v3, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_bd

    :cond_bc
    const/4 v3, 0x0

    :goto_bd
    if-eqz v3, :cond_c0

    goto :goto_ed

    .line 80
    :cond_c0
    iget-object v4, v1, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ed

    iget-object v4, v1, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-static {v13, v4}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 81
    iget-boolean v0, v5, Lio/dcloud/p/f5;->c:Z

    if-eqz v0, :cond_df

    .line 82
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

    const/16 v2, -0x4cc

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    goto :goto_e9

    .line 84
    :cond_df
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_VERSION_NOT_MATCH:Ljava/lang/String;

    const/16 v2, -0x4b5

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 86
    :goto_e9
    iput-boolean v6, v5, Lio/dcloud/p/f5;->a:Z

    return v16

    :cond_ec
    const/4 v3, 0x0

    .line 95
    :cond_ed
    :goto_ed
    const-string v4, "id"

    invoke-static {v12, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    .line 96
    sget-boolean v17, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v17, :cond_105

    sget-object v17, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v17, :cond_105

    invoke-static/range {v17 .. v17}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_105

    const/4 v11, 0x1

    goto :goto_150

    .line 99
    :cond_105
    invoke-static {v2, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_115

    iget-object v11, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v11, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_115

    const/4 v11, 0x1

    goto :goto_116

    :cond_115
    const/4 v11, 0x0

    :goto_116
    if-nez v11, :cond_14f

    .line 101
    iput-boolean v6, v5, Lio/dcloud/p/f5;->a:Z

    .line 102
    iget-boolean v0, v5, Lio/dcloud/p/f5;->c:Z

    if-eqz v0, :cond_129

    .line 103
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

    const/16 v3, -0x4ca

    invoke-static {v3, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    goto :goto_133

    .line 105
    :cond_129
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_APPID_NOT_MATCH:Ljava/lang/String;

    const/16 v3, -0x4b4

    invoke-static {v3, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 107
    :goto_133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "appid config is wrong pExpectAppid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Appmgr"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_14f
    move-object v2, v4

    .line 112
    :goto_150
    invoke-static {v12, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {}, Lio/dcloud/p/c4;->c()Z

    move-result v18

    move/from16 p1, v3

    if-nez v18, :cond_185

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/dcloud/p/d5;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v0

    invoke-virtual {v1}, Lio/dcloud/p/d5;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v18

    move/from16 v19, v7

    invoke-interface/range {v18 .. v18}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getS5DS()Ljava/lang/String;

    move-result-object v7

    move/from16 p2, v11

    const/16 v11, 0x3c

    move-object/from16 v18, v15

    const/4 v15, 0x1

    invoke-interface {v0, v7, v15, v11}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18b

    :cond_185
    move/from16 v19, v7

    move/from16 p2, v11

    move-object/from16 v18, v15

    :goto_18b
    move-object v3, v0

    .line 128
    const-string v0, "description"

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    const-string v11, "developer"

    invoke-static {v12, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 132
    invoke-static {v11, v10}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    const-string v15, "email"

    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p3, v15

    .line 134
    const-string v15, "url"

    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    const-string v11, "license"

    invoke-static {v12, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v20, v10

    .line 137
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 138
    invoke-static {v11, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    const-string v0, "launch_path"

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    const-string v0, "launch_path_w2a"

    move-object/from16 v21, v10

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 142
    iget-boolean v0, v1, Lio/dcloud/p/d5;->j1:Z

    if-nez v0, :cond_1dd

    iget-object v0, v1, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1db

    iget-object v0, v1, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1db

    goto :goto_1dd

    :cond_1db
    const/4 v0, 0x0

    goto :goto_1de

    :cond_1dd
    :goto_1dd
    const/4 v0, 0x1

    :goto_1de
    iput-boolean v0, v1, Lio/dcloud/p/d5;->j1:Z

    if-nez v0, :cond_1f5

    .line 143
    iget-object v0, v1, Lio/dcloud/p/d5;->n0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f3

    iget-object v0, v1, Lio/dcloud/p/d5;->n0:Ljava/lang/String;

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f3

    goto :goto_1f5

    :cond_1f3
    const/4 v0, 0x0

    goto :goto_1f6

    :cond_1f5
    :goto_1f5
    const/4 v0, 0x1

    :goto_1f6
    iput-boolean v0, v1, Lio/dcloud/p/d5;->j1:Z

    .line 144
    const-string v0, "baseUrl"

    move-object/from16 v22, v10

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 145
    iget-object v0, v1, Lio/dcloud/p/d5;->s0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v23, v10

    const/16 v17, 0x1

    xor-int/lit8 v10, v0, 0x1

    .line 150
    const-string v0, "plus"

    move/from16 v24, v10

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 151
    const-string v0, "confusion"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_25b

    move-object/from16 v25, v11

    .line 152
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_24d

    .line 155
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v7

    .line 156
    const-string v7, "BQ81KwABAA"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_238

    const/4 v7, 0x1

    .line 157
    iput-boolean v7, v1, Lio/dcloud/p/d5;->U0:Z

    .line 158
    iput-boolean v7, v1, Lio/dcloud/p/d5;->V0:Z

    goto :goto_239

    :cond_238
    const/4 v7, 0x1

    .line 161
    :goto_239
    iget-object v11, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    iget-object v7, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v7, v0}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionV3Resources(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25f

    const/4 v7, 0x1

    .line 162
    iput-boolean v7, v1, Lio/dcloud/p/d5;->U0:Z

    .line 163
    iput-boolean v7, v1, Lio/dcloud/p/d5;->V0:Z

    goto :goto_25f

    :cond_24d
    move-object/from16 v26, v7

    .line 166
    iget-boolean v0, v1, Lio/dcloud/p/d5;->U0:Z

    if-eqz v0, :cond_25f

    .line 167
    iget-object v0, v1, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    iget-object v7, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-interface {v0, v7, v11}, Lio/dcloud/common/DHInterface/IConfusionMgr;->recordEncryptionResources(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_25f

    :cond_25b
    move-object/from16 v26, v7

    move-object/from16 v25, v11

    .line 171
    :cond_25f
    :goto_25f
    const-string v0, "checkPermissionDenied"

    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/dcloud/common/adapter/util/PermissionUtil;->isCheckPermissionDisabled:Z

    .line 173
    const-string v0, "tabBar"

    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 175
    const-string v11, "statusbar"

    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v27, v7

    const-string v7, "none"

    move-object/from16 v28, v6

    const-string v6, "background"

    if-eqz v0, :cond_2e8

    .line 177
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_292

    move-object/from16 v29, v4

    .line 178
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_294

    .line 180
    iput-object v4, v1, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    goto :goto_294

    :cond_292
    move-object/from16 v29, v4

    .line 183
    :cond_294
    :goto_294
    const-string v4, "style"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2a7

    move-object/from16 v30, v14

    .line 184
    iget-object v14, v1, Lio/dcloud/p/d5;->a1:Ljava/lang/String;

    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/p/d5;->a1:Ljava/lang/String;

    goto :goto_2a9

    :cond_2a7
    move-object/from16 v30, v14

    .line 187
    :goto_2a9
    const-string v4, "immersed"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e5

    .line 189
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lio/dcloud/p/e5;->n:Ljava/lang/String;

    move-object/from16 v31, v13

    .line 190
    const-string v13, "supportedDevice"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2e1

    iget-object v13, v1, Lio/dcloud/p/e5;->n:Ljava/lang/String;

    const-string v14, "suggestedDevice"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2cc

    goto :goto_2e1

    .line 192
    :cond_2cc
    iget-object v13, v1, Lio/dcloud/p/e5;->n:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d8

    const/4 v13, 0x0

    .line 193
    iput-boolean v13, v1, Lio/dcloud/p/d5;->b1:Z

    goto :goto_2ee

    .line 195
    :cond_2d8
    iget-boolean v13, v1, Lio/dcloud/p/d5;->b1:Z

    invoke-virtual {v0, v4, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lio/dcloud/p/d5;->b1:Z

    goto :goto_2ee

    :cond_2e1
    :goto_2e1
    const/4 v4, 0x1

    .line 196
    iput-boolean v4, v1, Lio/dcloud/p/d5;->b1:Z

    goto :goto_2ee

    :cond_2e5
    move-object/from16 v31, v13

    goto :goto_2ee

    :cond_2e8
    move-object/from16 v29, v4

    move-object/from16 v31, v13

    move-object/from16 v30, v14

    .line 206
    :goto_2ee
    const-string v0, "launchwebview"

    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 209
    const-string v13, "replacewebapi"

    const-string v14, "normal"

    move-object/from16 v32, v12

    const-string v12, "geolocation"

    const/16 v33, 0x0

    if-eqz v4, :cond_3b6

    .line 211
    const-string v0, "overrideurl"

    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 212
    const-string v0, "overrideresource"

    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_322

    move-object/from16 v35, v3

    .line 214
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v36, v2

    .line 216
    :try_start_317
    const-string v2, "0"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31c
    .catch Lorg/json/JSONException; {:try_start_317 .. :try_end_31c} :catch_31d

    goto :goto_328

    :catch_31d
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_328

    :cond_322
    move-object/from16 v36, v2

    move-object/from16 v35, v3

    move-object/from16 v3, v33

    .line 222
    :goto_328
    iget-boolean v0, v1, Lio/dcloud/p/d5;->i1:Z

    const-string v2, "injection"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 223
    const-string v2, "plusrequire"

    invoke-virtual {v4, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v37, v0

    .line 224
    const-string v0, "titleNView"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 225
    const-string v0, "titleNView"

    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_358

    .line 227
    :cond_347
    const-string v0, "navigationbar"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_356

    .line 228
    const-string v0, "navigationbar"

    invoke-static {v4, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_358

    :cond_356
    move-object/from16 v0, v33

    .line 230
    :goto_358
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_371

    move-object/from16 v38, v0

    .line 231
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_380

    .line 232
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_380

    .line 233
    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37d

    :cond_371
    move-object/from16 v38, v0

    .line 235
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_380

    .line 236
    invoke-virtual {v4, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_37d
    move-object/from16 v39, v0

    goto :goto_382

    :cond_380
    move-object/from16 v39, v7

    .line 238
    :goto_382
    iget-boolean v0, v1, Lio/dcloud/p/d5;->b1:Z

    if-eqz v0, :cond_3aa

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    move-object v0, v2

    const/4 v2, 0x1

    .line 239
    iput-boolean v2, v1, Lio/dcloud/p/d5;->c1:Z

    .line 240
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3a7

    .line 241
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3a7

    move-object/from16 v40, v0

    .line 242
    iget-object v0, v1, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/p/d5;->e1:Ljava/lang/String;

    goto :goto_3ac

    :cond_3a7
    move-object/from16 v40, v0

    goto :goto_3ac

    :cond_3aa
    move-object/from16 v40, v2

    :goto_3ac
    move-object v2, v3

    move-object/from16 v0, v34

    move/from16 v3, v37

    move-object/from16 v34, v39

    move-object/from16 v37, v40

    goto :goto_3c4

    :cond_3b6
    move-object/from16 v36, v2

    move-object/from16 v35, v3

    move-object/from16 v34, v7

    move-object/from16 v37, v14

    move-object/from16 v0, v33

    move-object v2, v0

    move-object/from16 v38, v2

    const/4 v3, 0x1

    :goto_3c4
    move-object/from16 v39, v4

    .line 247
    const-string v4, "appWhitelist"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3fc

    .line 248
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v41, v2

    move/from16 v40, v3

    const/4 v3, 0x0

    .line 249
    :goto_3d7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_400

    .line 250
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_3f7

    move/from16 v42, v3

    iget-object v3, v1, Lio/dcloud/p/d5;->l1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f9

    .line 252
    iget-object v3, v1, Lio/dcloud/p/d5;->l1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f9

    :cond_3f7
    move/from16 v42, v3

    :cond_3f9
    :goto_3f9
    add-int/lit8 v3, v42, 0x1

    goto :goto_3d7

    :cond_3fc
    move-object/from16 v41, v2

    move/from16 v40, v3

    .line 256
    :cond_400
    const-string v2, "schemeWhitelist"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_434

    .line 257
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 258
    :goto_40d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_434

    .line 259
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_42d

    move-object/from16 v42, v2

    iget-object v2, v1, Lio/dcloud/p/d5;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42f

    .line 261
    iget-object v2, v1, Lio/dcloud/p/d5;->m1:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42f

    :cond_42d
    move-object/from16 v42, v2

    :cond_42f
    :goto_42f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v42

    goto :goto_40d

    .line 265
    :cond_434
    const-string v2, "secondwebview"

    invoke-static {v10, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_485

    .line 269
    const-string v3, "plusrequire"

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_459

    .line 271
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_463

    .line 272
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_463

    .line 273
    invoke-virtual {v4, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_463

    .line 275
    :cond_459
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_463

    .line 276
    invoke-virtual {v2, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    :cond_463
    :goto_463
    iget-boolean v4, v1, Lio/dcloud/p/d5;->b1:Z

    if-eqz v4, :cond_486

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_486

    const/4 v4, 0x1

    .line 279
    iput-boolean v4, v1, Lio/dcloud/p/d5;->d1:Z

    .line 280
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_486

    .line 281
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_486

    .line 282
    iget-object v11, v1, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    invoke-virtual {v4, v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/p/d5;->f1:Ljava/lang/String;

    goto :goto_486

    :cond_485
    move-object v3, v14

    .line 288
    :cond_486
    :goto_486
    iget-object v4, v1, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    invoke-virtual {v4}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_49a

    .line 289
    const-string v4, "ramcachemode"

    invoke-static {v10, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    iput-object v4, v1, Lio/dcloud/p/d5;->R0:Ljava/lang/String;

    .line 296
    :cond_49a
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkPhoneBanAcceleration(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b3

    iget-object v4, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b1

    invoke-virtual {v1}, Lio/dcloud/p/d5;->q()Z

    move-result v4

    if-eqz v4, :cond_4b1

    goto :goto_4b3

    :cond_4b1
    const/4 v4, 0x0

    goto :goto_4b4

    :cond_4b3
    :goto_4b3
    const/4 v4, 0x1

    :goto_4b4
    const-string v11, "hardwareAccelerated"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lio/dcloud/p/d5;->T0:Z

    .line 297
    iget-object v4, v1, Lio/dcloud/p/d5;->S0:Ljava/lang/String;

    const-string v11, "popGesture"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/p/d5;->S0:Ljava/lang/String;

    .line 300
    const-string v4, "cache"

    invoke-static {v10, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4de

    .line 302
    const-string v11, "mode"

    invoke-static {v4, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4dc

    iget-object v4, v1, Lio/dcloud/p/d5;->W0:Ljava/lang/String;

    :cond_4dc
    iput-object v4, v1, Lio/dcloud/p/d5;->W0:Ljava/lang/String;

    .line 306
    :cond_4de
    const-string v4, "cers"

    invoke-static {v10, v4}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 307
    const-string v11, "crash"

    invoke-static {v4, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v1, Lio/dcloud/p/d5;->M:Z

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v11

    .line 308
    const-string v12, "jserror"

    invoke-static {v4, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v12, v1, Lio/dcloud/p/d5;->N:Z

    invoke-static {v4, v12, v13}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v4

    .line 310
    const-string v12, "compatible"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const/16 v16, 0x0

    const-string v13, "compilerVersion"

    move-object/from16 v42, v7

    const-string v7, "uni-app"

    if-eqz v12, :cond_562

    .line 311
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_562

    .line 312
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 313
    invoke-direct {v1, v7, v5}, Lio/dcloud/p/d5;->a(Lorg/json/JSONObject;Lio/dcloud/p/f5;)Z

    move-result v43

    if-nez v43, :cond_51e

    return v16

    :cond_51e
    move-object/from16 v43, v3

    const/4 v3, 0x1

    .line 316
    iput-boolean v3, v1, Lio/dcloud/p/e5;->q:Z

    .line 317
    const-string v3, "uni-v3"

    iput-object v3, v1, Lio/dcloud/p/d5;->z0:Ljava/lang/String;

    .line 320
    const-string v3, "ignoreVersion"

    move-object/from16 v44, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lio/dcloud/p/d5;->y0:Z

    .line 321
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v3, "runtimeVersion"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/p/d5;->w0:Ljava/lang/String;

    .line 323
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    .line 324
    const-string v3, "nvueLaunchMode"

    invoke-virtual {v7, v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/p/d5;->A0:Ljava/lang/String;

    .line 325
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_599

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_599

    const/4 v2, 0x0

    .line 326
    iput-boolean v2, v1, Lio/dcloud/p/d5;->x0:Z

    goto :goto_599

    :cond_562
    move-object/from16 v44, v2

    move-object/from16 v43, v3

    const/4 v2, 0x0

    .line 328
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_596

    .line 329
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 330
    invoke-direct {v1, v3, v5}, Lio/dcloud/p/d5;->a(Lorg/json/JSONObject;Lio/dcloud/p/f5;)Z

    move-result v7

    if-nez v7, :cond_578

    return v2

    :cond_578
    const/4 v7, 0x1

    .line 333
    iput-boolean v7, v1, Lio/dcloud/p/e5;->q:Z

    .line 334
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    .line 335
    const-string v2, "uni-v3"

    iput-object v2, v1, Lio/dcloud/p/d5;->z0:Ljava/lang/String;

    .line 336
    const-string v2, "nvue"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/p/d5;->v0:Lorg/json/JSONObject;

    .line 337
    const-string v2, "nvueLaunchMode"

    invoke-virtual {v3, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/p/d5;->A0:Ljava/lang/String;

    goto :goto_599

    :cond_596
    const/4 v13, 0x0

    .line 339
    iput-boolean v13, v1, Lio/dcloud/p/e5;->q:Z

    .line 341
    :cond_599
    :goto_599
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v2

    if-eqz v2, :cond_5a1

    const/4 v2, 0x1

    goto :goto_5b9

    .line 345
    :cond_5a1
    const-string v2, "runmode"

    invoke-static {v10, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5b3

    iget-boolean v3, v1, Lio/dcloud/p/e5;->q:Z

    if-eqz v3, :cond_5b3

    .line 347
    const-string v2, "liberate"

    .line 349
    :cond_5b3
    const-string v3, "liberate"

    invoke-static {v2, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 353
    :goto_5b9
    const-string v3, "useragent"

    invoke-static {v10, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 354
    const-string v7, "value"

    invoke-static {v3, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
    const-string v12, "concatenate"

    invoke-static {v3, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v12, v1, Lio/dcloud/p/d5;->Q:Z

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 359
    const-string v12, "useragent_android"

    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 360
    const-string v14, "value"

    invoke-static {v12, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v45, v7

    .line 361
    const-string v7, "concatenate"

    invoke-static {v12, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v13}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 363
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5f2

    move-object v7, v14

    goto :goto_5f4

    :cond_5f2
    move-object/from16 v7, v45

    .line 368
    :goto_5f4
    const-string v12, "splashscreen"

    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_794

    .line 371
    invoke-virtual {v1}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "pdr"

    invoke-static {v13, v14}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 372
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v0

    iget-object v0, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__update_splash_autoclose"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63b

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__update_splash_autoclose"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    invoke-interface {v13, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_639
    move v14, v0

    goto :goto_654

    .line 375
    :cond_63b
    const-string v0, "autoclose"

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_652

    .line 376
    const-string v0, "autoclose"

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_639

    :cond_652
    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_654
    if-eqz v14, :cond_6a3

    move/from16 v46, v14

    .line 380
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v47, v3

    iget-object v3, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__update_splash_delay"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68e

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__update_splash_delay"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-interface {v13, v3, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_68b
    move/from16 v48, v3

    goto :goto_6aa

    .line 383
    :cond_68e
    const-string v3, "delay"

    invoke-static {v12, v3}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a7

    .line 384
    const-string v3, "delay"

    invoke-static {v12, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v14, v1, Lio/dcloud/p/d5;->b0:I

    invoke-static {v3, v14}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_68b

    :cond_6a3
    move/from16 v47, v3

    move/from16 v46, v14

    :cond_6a7
    const/4 v3, 0x0

    const/16 v48, 0x0

    .line 388
    :goto_6aa
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v49, v2

    iget-object v2, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__update_splash_autoclose_w2a"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6dd

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__update_splash_autoclose_w2a"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_6f3

    .line 391
    :cond_6dd
    const-string v2, "autoclose_w2a"

    invoke-static {v12, v2}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f3

    .line 392
    const-string v0, "autoclose_w2a"

    invoke-static {v12, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_6f3
    :goto_6f3
    if-eqz v0, :cond_742

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__update_splash_delay_w2a"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_726

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__update_splash_delay_w2a"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_73a

    .line 399
    :cond_726
    const-string v2, "delay_w2a"

    invoke-static {v12, v2}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73a

    .line 400
    const-string v2, "delay_w2a"

    invoke-static {v12, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lio/dcloud/p/d5;->c0:I

    invoke-static {v2, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    :cond_73a
    :goto_73a
    int-to-float v2, v3

    .line 403
    invoke-virtual {v1}, Lio/dcloud/p/d5;->j()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_743

    :cond_742
    move v2, v3

    .line 406
    :goto_743
    const-string v3, "waiting"

    invoke-static {v12, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v13, v1, Lio/dcloud/p/d5;->X:Z

    const/4 v14, 0x0

    invoke-static {v3, v13, v14}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 408
    const-string v13, "event"

    invoke-static {v12, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 409
    const-string v14, "target"

    move/from16 v50, v0

    const-string v0, "default"

    invoke-virtual {v12, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v14, "ads"

    invoke-static {v12, v14}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_784

    .line 413
    const-string v14, "#ffffff"

    invoke-virtual {v12, v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    const-string v14, "image"

    invoke-virtual {v12, v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move v12, v3

    move/from16 v14, v48

    move/from16 v3, v50

    move-object/from16 v50, v0

    move-object/from16 v48, v6

    move/from16 v6, v46

    move-object/from16 v46, v9

    move v9, v2

    const/4 v2, 0x1

    goto :goto_7a8

    :cond_784
    move v9, v2

    move v12, v3

    move/from16 v6, v46

    move/from16 v14, v48

    move/from16 v3, v50

    const/4 v2, 0x1

    move-object/from16 v50, v0

    move-object/from16 v46, v33

    move-object/from16 v48, v46

    goto :goto_7a8

    :cond_794
    move-object/from16 v45, v0

    move/from16 v49, v2

    move/from16 v47, v3

    move-object/from16 v13, v33

    move-object/from16 v46, v13

    move-object/from16 v48, v46

    move-object/from16 v50, v48

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 419
    :goto_7a8
    const-string v0, "error"

    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7bb

    .line 422
    invoke-static {v0, v15}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_7bb

    .line 423
    invoke-static {v0, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7bd

    .line 428
    :cond_7bb
    const-string v0, "file:///android_asset/data/dcloud_error.html"

    :goto_7bd
    const-string v15, "ssl"

    invoke-static {v10, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v51, v13

    if-eqz v15, :cond_7d6

    .line 430
    const-string v13, "untrustedca"

    invoke-static {v15, v13}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7d6

    .line 431
    const-string v13, "untrustedca"

    invoke-static {v15, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_7d8

    :cond_7d6
    move-object/from16 v15, v18

    .line 437
    :goto_7d8
    const-string v13, "stream"

    invoke-static {v10, v13}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    move/from16 v18, v9

    .line 439
    iget-object v9, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v9}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v1, Lio/dcloud/p/d5;->P:Z

    move/from16 v52, v14

    if-eqz v13, :cond_80b

    .line 441
    const-string v14, "competent"

    invoke-virtual {v13, v14, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, Lio/dcloud/p/d5;->P:Z

    .line 442
    const-string v9, "shortcut"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    .line 443
    const-string v9, "shortcutQuit"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/dcloud/p/d5;->z1:Ljava/lang/String;

    .line 444
    const-string v9, "authority"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_80d

    :cond_80b
    move-object/from16 v9, v33

    .line 446
    :goto_80d
    iget-boolean v13, v1, Lio/dcloud/p/d5;->P:Z

    if-nez v13, :cond_815

    .line 447
    invoke-static/range {v36 .. v36}, Lio/dcloud/common/util/BaseInfo;->createAppTestFile(Ljava/lang/String;)V

    goto :goto_818

    .line 449
    :cond_815
    invoke-static/range {v36 .. v36}, Lio/dcloud/common/util/BaseInfo;->removeTestFile(Ljava/lang/String;)V

    .line 451
    :goto_818
    sget-object v13, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v53, v9

    iget-object v9, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " app competent="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lio/dcloud/p/d5;->P:Z

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-boolean v9, v1, Lio/dcloud/p/e5;->q:Z

    if-nez v9, :cond_8b2

    invoke-static {}, Lio/dcloud/p/c4;->c()Z

    move-result v9

    if-nez v9, :cond_8b2

    .line 455
    invoke-virtual {v1}, Lio/dcloud/p/d5;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v9

    const-string v13, "lkdg}lWixxcmq"

    invoke-interface {v9, v13}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 457
    invoke-static {}, Lio/dcloud/p/c4;->b()Z

    move-result v13

    if-eqz v13, :cond_860

    move-object/from16 v13, v36

    .line 458
    invoke-static {v8, v13}, Lio/dcloud/p/s;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a6

    move-object/from16 v36, v15

    goto :goto_8a4

    :cond_860
    move-object/from16 v13, v36

    .line 462
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8a6

    .line 463
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v36, v15

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 464
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v35

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 465
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8a8

    .line 466
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a8

    :goto_8a4
    const/4 v8, 0x1

    goto :goto_8a9

    :cond_8a6
    move-object/from16 v36, v15

    :cond_8a8
    const/4 v8, 0x0

    :goto_8a9
    if-nez v8, :cond_8b8

    const/4 v0, 0x4

    .line 473
    invoke-virtual {v1, v0}, Lio/dcloud/p/d5;->setStatus(B)V

    const/16 v16, 0x0

    return v16

    :cond_8b2
    move-object/from16 v13, v36

    move-object/from16 v36, v15

    move/from16 v8, p2

    .line 478
    :cond_8b8
    const-string v9, "ads"

    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 481
    const-string v14, "adid"

    invoke-static {v10, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 490
    const-string v15, "wap2app"

    invoke-static {v10, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move/from16 p2, v8

    if-eqz v15, :cond_8d9

    .line 492
    const-string v8, "launchError"

    move-object/from16 v35, v14

    const-string v14, "tip"

    invoke-virtual {v15, v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_8db

    :cond_8d9
    move-object/from16 v35, v14

    :goto_8db
    move-object/from16 v8, v33

    .line 503
    iget-object v14, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    if-eqz v14, :cond_8f9

    const-string v15, "unimp_direct_data"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8f9

    const/4 v14, 0x1

    .line 504
    iput-boolean v14, v1, Lio/dcloud/p/d5;->q1:Z

    .line 505
    iget-object v14, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lio/dcloud/p/d5;->r1:Ljava/lang/String;

    .line 506
    iget-object v14, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    invoke-virtual {v14, v15}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 509
    :cond_8f9
    iget-object v14, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    const-string v15, "unimp_run_extra_info"

    move-object/from16 v33, v8

    const/4 v8, 0x1

    invoke-static {v14, v15, v8}, Lio/dcloud/common/constant/IntentConst;->obtainIntentStringExtra(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lio/dcloud/p/d5;->u1:Ljava/lang/String;

    .line 522
    const-string v8, "arguments"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_918

    .line 523
    const-string v8, "arguments"

    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lio/dcloud/p/d5;->setRuntimeArgs(Ljava/lang/String;)V

    goto :goto_92f

    .line 524
    :cond_918
    iget-object v8, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    if-eqz v8, :cond_92f

    const-string v10, "unimp_run_arguments"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92f

    .line 525
    iget-object v8, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    const-string v10, "unimp_run_arguments"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lio/dcloud/p/d5;->setRuntimeArgs(Ljava/lang/String;)V

    .line 530
    :cond_92f
    :goto_92f
    const-string v8, "fullscreen"

    move-object/from16 v10, v32

    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v14, v1, Lio/dcloud/p/e5;->i:Z

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v8

    .line 531
    sget-object v14, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v9

    iget-object v9, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " app fullScreen="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-virtual {v1}, Lio/dcloud/p/d5;->q()Z

    move-result v14

    .line 537
    const-string v15, "permissions"

    invoke-static {v10, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_a77

    .line 539
    invoke-virtual {v10}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_a77

    move/from16 v54, v14

    .line 541
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v56, p2

    move/from16 v55, v8

    move/from16 v57, v12

    const/4 v8, 0x0

    .line 542
    :goto_980
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v8, v12, :cond_a56

    .line 543
    invoke-static {v15, v8}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v12

    move/from16 p2, v8

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 544
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v12, "push"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b5

    .line 546
    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v58, v15

    .line 547
    const-string v15, "cover"

    invoke-static {v12, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 548
    sget-boolean v15, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    move/from16 v59, v3

    const/4 v3, 0x0

    invoke-static {v12, v15, v3}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v12

    sput-boolean v12, Lio/dcloud/common/adapter/util/PlatformUtil;->APS_COVER:Z

    goto :goto_9ff

    :cond_9b5
    move/from16 v59, v3

    move-object/from16 v58, v15

    .line 549
    const-string v3, "webview"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c7

    .line 550
    const-string v3, "ui"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9ff

    .line 551
    :cond_9c7
    const-string v3, "ui"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9df

    .line 552
    const-string v3, "webview"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    const-string v3, "nativeui"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v3, "navigator"

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9ff

    .line 555
    :cond_9df
    const-string v3, "maps"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9ff

    .line 556
    const-string v3, "Maps"

    invoke-static {v10, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9ff

    .line 557
    const-string v12, "coordType"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9ff

    .line 558
    const-string v12, "coordType"

    invoke-static {v3, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/p/d5;->p1:Ljava/lang/String;

    :cond_9ff
    :goto_9ff
    if-eqz v19, :cond_a4e

    if-nez p1, :cond_a4e

    if-nez v54, :cond_a4e

    .line 562
    invoke-static {v13, v8}, Lio/dcloud/common/core/permission/PermissionControler;->checkSafePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a4e

    .line 563
    iget-object v3, v1, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    if-eqz v3, :cond_a2c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a2c

    .line 564
    iget-object v3, v1, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4e

    .line 566
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_a28

    .line 567
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    :cond_a28
    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a4c

    .line 571
    :cond_a2c
    iget-object v3, v1, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v12, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v15, 0x9

    invoke-virtual {v3, v12, v15, v8}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a4e

    .line 573
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_a49

    .line 574
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    :cond_a49
    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a4c
    const/16 v56, 0x0

    :cond_a4e
    add-int/lit8 v8, p2, 0x1

    move-object/from16 v15, v58

    move/from16 v3, v59

    goto/16 :goto_980

    :cond_a56
    move/from16 v59, v3

    if-nez v56, :cond_a74

    if-eqz v19, :cond_a74

    .line 582
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_5PRUNTIME_LACK_MODULE:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v2, v16

    invoke-static {v0, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x4cd

    .line 583
    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 584
    iput-boolean v7, v5, Lio/dcloud/p/f5;->a:Z

    return v16

    :cond_a74
    move/from16 v8, v56

    goto :goto_a7f

    :cond_a77
    move/from16 v59, v3

    move/from16 v55, v8

    move/from16 v57, v12

    move/from16 v8, p2

    :goto_a7f
    if-eqz v8, :cond_b40

    .line 592
    iget-object v3, v1, Lio/dcloud/p/d5;->t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    if-eqz v3, :cond_a89

    iget-object v10, v1, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    iput-object v10, v3, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->mAppVer:Ljava/lang/String;

    :cond_a89
    move-object/from16 v3, v31

    .line 593
    iput-object v3, v1, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    move-object/from16 v3, v30

    .line 594
    iput-object v3, v1, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    .line 595
    iput-object v9, v1, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    .line 596
    iput-object v13, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    move-object/from16 v3, v29

    .line 597
    iput-object v3, v1, Lio/dcloud/p/d5;->z:Ljava/lang/String;

    move-object/from16 v3, v28

    .line 598
    iput-object v3, v1, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    .line 599
    iput-boolean v11, v1, Lio/dcloud/p/d5;->M:Z

    .line 600
    iput-boolean v4, v1, Lio/dcloud/p/d5;->N:Z

    move-object/from16 v3, v26

    .line 601
    iput-object v3, v1, Lio/dcloud/p/d5;->F:Ljava/lang/String;

    move-object/from16 v3, v20

    .line 602
    iput-object v3, v1, Lio/dcloud/p/d5;->G:Ljava/lang/String;

    move-object/from16 v3, p3

    .line 603
    iput-object v3, v1, Lio/dcloud/p/d5;->H:Ljava/lang/String;

    move-object/from16 v3, v21

    .line 604
    iput-object v3, v1, Lio/dcloud/p/d5;->J:Ljava/lang/String;

    move-object/from16 v3, v25

    .line 605
    iput-object v3, v1, Lio/dcloud/p/d5;->l0:Ljava/lang/String;

    move-object/from16 v3, v22

    .line 606
    iput-object v3, v1, Lio/dcloud/p/d5;->n0:Ljava/lang/String;

    move-object/from16 v3, v23

    .line 607
    iput-object v3, v1, Lio/dcloud/p/d5;->s0:Ljava/lang/String;

    .line 608
    iput-object v7, v1, Lio/dcloud/p/d5;->L:Ljava/lang/String;

    .line 609
    iput-object v0, v1, Lio/dcloud/p/d5;->q0:Ljava/lang/String;

    .line 610
    iput-boolean v2, v1, Lio/dcloud/p/d5;->W:Z

    .line 611
    iput-boolean v6, v1, Lio/dcloud/p/d5;->Y:Z

    move/from16 v0, v59

    .line 612
    iput-boolean v0, v1, Lio/dcloud/p/d5;->Z:Z

    move/from16 v2, v49

    .line 613
    iput-boolean v2, v1, Lio/dcloud/p/d5;->j0:Z

    move/from16 v3, v57

    .line 615
    iput-boolean v3, v1, Lio/dcloud/p/d5;->X:Z

    move/from16 v0, v47

    .line 616
    iput-boolean v0, v1, Lio/dcloud/p/d5;->Q:Z

    move/from16 v0, v55

    .line 617
    iput-boolean v0, v1, Lio/dcloud/p/e5;->i:Z

    move/from16 v2, v24

    .line 618
    iput-boolean v2, v1, Lio/dcloud/p/d5;->U:Z

    move-object/from16 v15, v36

    .line 619
    iput-object v15, v1, Lio/dcloud/p/d5;->p0:Ljava/lang/String;

    .line 620
    sput-object v15, Lio/dcloud/common/util/BaseInfo;->untrustedca:Ljava/lang/String;

    move/from16 v0, v52

    .line 621
    iput v0, v1, Lio/dcloud/p/d5;->b0:I

    move/from16 v2, v18

    .line 622
    iput v2, v1, Lio/dcloud/p/d5;->c0:I

    move-object/from16 v13, v51

    .line 623
    iput-object v13, v1, Lio/dcloud/p/d5;->d0:Ljava/lang/String;

    move-object/from16 v0, v50

    .line 624
    iput-object v0, v1, Lio/dcloud/p/d5;->e0:Ljava/lang/String;

    move-object/from16 v0, v45

    .line 625
    iput-object v0, v1, Lio/dcloud/p/d5;->D0:Lorg/json/JSONObject;

    move-object/from16 v3, v41

    .line 626
    iput-object v3, v1, Lio/dcloud/p/d5;->F0:Lorg/json/JSONObject;

    move/from16 v0, v40

    .line 627
    iput-boolean v0, v1, Lio/dcloud/p/d5;->i1:Z

    move-object/from16 v0, v44

    .line 628
    iput-object v0, v1, Lio/dcloud/p/d5;->G0:Lorg/json/JSONObject;

    move-object/from16 v2, v39

    .line 629
    iput-object v2, v1, Lio/dcloud/p/d5;->H0:Lorg/json/JSONObject;

    move-object/from16 v0, v38

    .line 630
    iput-object v0, v1, Lio/dcloud/p/d5;->J0:Lorg/json/JSONObject;

    move-object/from16 v9, v53

    .line 631
    iput-object v9, v1, Lio/dcloud/p/d5;->I0:Lorg/json/JSONObject;

    move-object/from16 v0, v32

    .line 632
    iput-object v0, v1, Lio/dcloud/p/d5;->L0:Lorg/json/JSONObject;

    move-object/from16 v0, v35

    .line 633
    iput-object v0, v1, Lio/dcloud/p/d5;->N0:Ljava/lang/String;

    move-object/from16 v14, v37

    .line 634
    iput-object v14, v1, Lio/dcloud/p/d5;->f0:Ljava/lang/String;

    move-object/from16 v14, v43

    .line 635
    iput-object v14, v1, Lio/dcloud/p/d5;->g0:Ljava/lang/String;

    move-object/from16 v7, v34

    .line 636
    iput-object v7, v1, Lio/dcloud/p/d5;->h0:Ljava/lang/String;

    move-object/from16 v7, v42

    .line 637
    iput-object v7, v1, Lio/dcloud/p/d5;->i0:Ljava/lang/String;

    move-object/from16 v6, v48

    .line 638
    iput-object v6, v1, Lio/dcloud/p/d5;->Y0:Ljava/lang/String;

    move-object/from16 v9, v46

    .line 639
    iput-object v9, v1, Lio/dcloud/p/d5;->Z0:Ljava/lang/String;

    move-object/from16 v0, v33

    .line 640
    iput-object v0, v1, Lio/dcloud/p/d5;->M0:Ljava/lang/String;

    move-object/from16 v2, v27

    .line 641
    iput-object v2, v1, Lio/dcloud/p/d5;->E0:Lorg/json/JSONObject;

    .line 642
    invoke-direct {v1}, Lio/dcloud/p/d5;->l()V

    .line 643
    invoke-virtual {v1}, Lio/dcloud/p/d5;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    :cond_b40
    xor-int/lit8 v0, v8, 0x1

    .line 645
    iput-boolean v0, v5, Lio/dcloud/p/f5;->a:Z

    return v8

    :catch_b45
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v7, 0x1

    .line 647
    iput-boolean v7, v5, Lio/dcloud/p/f5;->a:Z

    .line 648
    iget-boolean v0, v5, Lio/dcloud/p/f5;->c:Z

    if-eqz v0, :cond_b5b

    .line 649
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

    const/16 v3, -0x4ca

    invoke-static {v3, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    goto :goto_b65

    .line 651
    :cond_b5b
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_ERROR_MALFORMED:Ljava/lang/String;

    const/16 v2, -0x4b3

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    :goto_b65
    const/16 v16, 0x0

    return v16
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 16

    const-string v0, "IO Error"

    .line 793
    iget-object v1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/dcloud/p/f5;->c:Z

    .line 794
    iput-boolean v2, v1, Lio/dcloud/p/f5;->d:Z

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_unzip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_backup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_backup1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 805
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x5

    const/4 v8, 0x0

    .line 809
    :try_start_87
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 810
    invoke-static {v7, v3}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8d} :catch_1ae
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8d} :catch_193
    .catchall {:try_start_87 .. :try_end_8d} :catchall_190

    .line 827
    :try_start_8d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lio/dcloud/common/util/BaseInfo;->WGTU_UPDATE_XML:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a6} :catch_174
    .catchall {:try_start_8d .. :try_end_a6} :catchall_190

    if-nez v7, :cond_bc

    .line 829
    :try_start_a8
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_NOT_EXIST:Ljava/lang/String;

    const/16 v10, -0x4c5

    invoke-static {v10, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 830
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p2, Lio/dcloud/p/f5;->a:Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b8} :catch_172
    .catchall {:try_start_a8 .. :try_end_b8} :catchall_2b3

    .line 876
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    .line 877
    :cond_bc
    :try_start_bc
    invoke-static {v7}, Lio/dcloud/common/util/XmlUtil;->XML_Parser(Ljava/io/InputStream;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v9
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c0} :catch_172
    .catchall {:try_start_bc .. :try_end_c0} :catchall_2b3

    if-eqz v9, :cond_16c

    .line 887
    :try_start_c2
    const-string v10, "appid"

    invoke-static {v9, v10}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 888
    const-string v11, "basis"

    invoke-static {v9, v11}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v11

    .line 889
    const-string v12, "version"

    invoke-static {v11, v12}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 890
    sget-boolean v12, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez v12, :cond_f0

    iget-object v12, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e1

    goto :goto_f0

    .line 911
    :cond_e1
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_APPID_NOT_MATCH:Ljava/lang/String;

    const/16 v10, -0x4c7

    invoke-static {v10, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    :goto_ed
    move-object v9, v8

    const/4 p2, 0x0

    goto :goto_14f

    .line 912
    :cond_f0
    :goto_f0
    iget-object v10, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10e

    const-string v10, "force"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_101

    goto :goto_10e

    .line 928
    :cond_101
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_VERSION_NOT_MATCH:Ljava/lang/String;

    const/16 v10, -0x4c8

    invoke-static {v10, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    goto :goto_ed

    .line 929
    :cond_10e
    :goto_10e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_11f} :catch_18d
    .catchall {:try_start_c2 .. :try_end_11f} :catchall_2b3

    .line 930
    :try_start_11f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 931
    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_156

    .line 932
    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v11

    .line 933
    iget-object v12, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, p2}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p2

    .line 934
    invoke-static {v11}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 941
    const-string v11, "remove"

    invoke-static {v9, v11}, Lio/dcloud/common/util/XmlUtil;->getElement(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Lio/dcloud/common/util/XmlUtil$DHNode;

    move-result-object v8
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_14d} :catch_16a
    .catchall {:try_start_11f .. :try_end_14d} :catchall_2b3

    move-object v9, v8

    move-object v8, v10

    .line 956
    :goto_14f
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    move-object v10, v8

    move-object v8, v9

    goto/16 :goto_1d6

    .line 957
    :cond_156
    :try_start_156
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:Ljava/lang/String;

    const/16 v11, -0x4c9

    invoke-static {v11, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 958
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p2, Lio/dcloud/p/f5;->a:Z
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_166} :catch_16a
    .catchall {:try_start_156 .. :try_end_166} :catchall_2b3

    .line 977
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    :catch_16a
    move-exception p2

    goto :goto_1c7

    .line 978
    :cond_16c
    :try_start_16c
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    throw p2
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_172} :catch_172
    .catchall {:try_start_16c .. :try_end_172} :catchall_2b3

    :catch_172
    move-exception p2

    goto :goto_176

    :catch_174
    move-exception p2

    move-object v7, v8

    .line 980
    :goto_176
    :try_start_176
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 981
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v9, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_UPDATE_ERROR_MALFORMED:Ljava/lang/String;

    const/16 v10, -0x4c6

    invoke-static {v10, v9}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 982
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p2, Lio/dcloud/p/f5;->a:Z
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_189} :catch_18d
    .catchall {:try_start_176 .. :try_end_189} :catchall_2b3

    .line 1019
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    :catch_18d
    move-exception p2

    move-object v10, v8

    goto :goto_1c7

    :catchall_190
    move-exception p1

    goto/16 :goto_2b5

    :catch_193
    move-exception p2

    .line 1020
    :try_start_194
    invoke-static {p2}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/Throwable;)V

    .line 1021
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 1022
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v7, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_OR_WGTU_ERROR_MALFORMED:Ljava/lang/String;

    const/16 v9, -0x4b1

    invoke-static {v9, v7}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 1023
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p2, Lio/dcloud/p/f5;->a:Z
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1aa} :catch_1c4
    .catchall {:try_start_194 .. :try_end_1aa} :catchall_190

    .line 1078
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    .line 1079
    :catch_1ae
    :try_start_1ae
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 1080
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object v7, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    const/4 v9, -0x4

    invoke-static {v9, v7}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 1081
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p2, Lio/dcloud/p/f5;->a:Z
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1c0} :catch_1c4
    .catchall {:try_start_1ae .. :try_end_1c0} :catchall_190

    .line 1143
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v5

    :catch_1c4
    move-exception p2

    move-object v7, v8

    move-object v10, v7

    .line 1144
    :goto_1c7
    :try_start_1c7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1146
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;
    :try_end_1d2
    .catchall {:try_start_1c7 .. :try_end_1d2} :catchall_2b3

    .line 1148
    invoke-static {v7}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    :goto_1d6
    if-eqz p2, :cond_2a6

    .line 1155
    :try_start_1d8
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 1156
    iget-byte p2, p0, Lio/dcloud/p/d5;->V:B

    if-ne p2, v2, :cond_1e5

    .line 1157
    iget-object p2, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-static {p2, v6}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ec

    :cond_1e5
    if-nez p2, :cond_1ec

    .line 1159
    invoke-static {v1, v6, v2, v5}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    const/4 p2, 0x1

    goto :goto_1ed

    :cond_1ec
    :goto_1ec
    const/4 p2, 0x0

    .line 1164
    :goto_1ed
    const-string v7, "item"

    invoke-static {v8, v7}, Lio/dcloud/common/util/XmlUtil;->getElements(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_223

    .line 1165
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_223

    .line 1166
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_200
    if-ge v9, v8, :cond_223

    .line 1168
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/dcloud/common/util/XmlUtil$DHNode;

    .line 1169
    const-string v12, "path"

    invoke-static {v11, v12}, Lio/dcloud/common/util/XmlUtil;->getAttributeValue(Lio/dcloud/common/util/XmlUtil$DHNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1170
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_200

    .line 1174
    :cond_223
    invoke-static {v10, v6, v2, v5}, Lio/dcloud/common/adapter/io/DHFile;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v7

    if-eq v2, v7, :cond_239

    .line 1175
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 1176
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 1177
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p1, Lio/dcloud/p/f5;->a:Z
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_238} :catch_289

    return v5

    .line 1181
    :cond_239
    :try_start_239
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    if-eqz p2, :cond_255

    .line 1183
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1184
    invoke-static {v1, v7}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_255
    sget-object v7, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-static {v6, v7}, Lio/dcloud/common/adapter/io/DHFile;->rename(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_25f

    .line 1188
    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_25f} :catch_278
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_25f} :catch_289

    .line 1196
    :cond_25f
    :try_start_25f
    invoke-virtual {p0, v5}, Lio/dcloud/p/d5;->b(B)V

    .line 1197
    invoke-virtual {p0, v1}, Lio/dcloud/p/d5;->setAppDataPath(Ljava/lang/String;)V

    .line 1198
    new-instance p1, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    iget-object p2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/p/d5;->t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 1199
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->saveToBundleData(Landroid/content/Context;)V

    goto :goto_2b2

    :catch_278
    move-exception p2

    .line 1200
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1201
    iget-object p2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 1202
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p1, Lio/dcloud/p/f5;->a:Z
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_288} :catch_289

    return v5

    :catch_289
    move-exception p1

    .line 1210
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1212
    :try_start_28d
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_290} :catch_291

    goto :goto_295

    :catch_291
    move-exception p1

    .line 1214
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1216
    :goto_295
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    const/16 v0, -0x63

    invoke-static {v0, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    .line 1217
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p1, Lio/dcloud/p/f5;->a:Z

    return v5

    .line 1221
    :cond_2a6
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v2, p1, Lio/dcloud/p/f5;->a:Z

    .line 1223
    :try_start_2aa
    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_2ad
    .catch Ljava/io/IOException; {:try_start_2aa .. :try_end_2ad} :catch_2ae

    goto :goto_2b2

    :catch_2ae
    move-exception p1

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2b2
    return v5

    :catchall_2b3
    move-exception p1

    move-object v8, v7

    .line 1226
    :goto_2b5
    invoke-static {v8}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 1227
    throw p1
.end method

.method a(Z)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 758
    iput-object v0, p0, Lio/dcloud/p/d5;->r1:Ljava/lang/String;

    .line 759
    iget-object p1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x4c

    invoke-virtual {p1, v1, v2, p0}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->setAppDataPath(Ljava/lang/String;)V

    .line 763
    iget-object p1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/dcloud/p/d5;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_62

    const/4 p1, 0x0

    .line 766
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "funSetUA"

    invoke-virtual {p0, v2, v1}, Lio/dcloud/p/d5;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->clearUseRejectedCache()V

    .line 770
    invoke-virtual {p0}, Lio/dcloud/p/d5;->showSplash()V

    .line 771
    iget-object v1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v3}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v1, v0}, Lio/dcloud/p/d5;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 775
    iput-boolean p1, p0, Lio/dcloud/p/d5;->g1:Z

    .line 776
    const-string p1, "run_5app_time_key"

    invoke-static {p1}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 777
    invoke-direct {p0, p1}, Lio/dcloud/p/d5;->b(I)Z

    move-result p1

    :cond_62
    return p1
.end method

.method public addAllFeaturePermission()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/core/permission/PermissionControler;->registerRootPermission(Ljava/lang/String;)V

    return-void
.end method

.method public addFeaturePermission(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyMani()V
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public applySmartUpdate()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->a(Z)Z

    return-void
.end method

.method b(B)V
    .registers 2

    .line 176
    iput-byte p1, p0, Lio/dcloud/p/d5;->V:B

    return-void
.end method

.method b(Ljava/io/InputStream;)V
    .registers 2

    return-void
.end method

.method b(Z)V
    .registers 3

    .line 226
    iget-object v0, p0, Lio/dcloud/p/e5;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->onAppUnActive(Lio/dcloud/common/DHInterface/IApp;)V

    if-eqz p1, :cond_11

    .line 228
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, p0}, Lio/dcloud/p/d5;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 229
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppBackground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, p0}, Lio/dcloud/p/d5;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 231
    :cond_11
    iget-object p1, p0, Lio/dcloud/p/d5;->P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onPause(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IApp;)V

    :cond_19
    const/4 p1, 0x2

    .line 232
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->setStatus(B)V

    return-void
.end method

.method b(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 9

    const-string v0, "InstallError---msg="

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_4
    iput-object p1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    invoke-interface {v3, p1}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/p/d5;->k()V

    .line 7
    iget-byte v3, p0, Lio/dcloud/p/d5;->V:B

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->mBaseAppInfoSet:Ljava/util/HashMap;

    if-eqz v3, :cond_20

    iget-object v5, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_2f

    .line 15
    :cond_20
    iget-byte v3, p0, Lio/dcloud/p/d5;->V:B

    if-ne v3, v4, :cond_4d

    .line 16
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_4d

    .line 17
    :cond_2f
    :goto_2f
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 19
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 21
    iput-byte v4, p0, Lio/dcloud/p/d5;->V:B

    .line 33
    :cond_4d
    :goto_4d
    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 34
    invoke-direct {p0}, Lio/dcloud/p/d5;->x()V

    const/4 v3, 0x0

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x1

    :goto_5b
    if-nez v1, :cond_a4

    .line 39
    iget-object p1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 40
    iget-object p1, p0, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_e1
    .catchall {:try_start_4 .. :try_end_6b} :catchall_df

    if-nez p1, :cond_71

    .line 79
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v4

    .line 80
    :cond_71
    :try_start_71
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result p1

    if-eqz p1, :cond_83

    iget-object p1, p0, Lio/dcloud/p/d5;->r0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7d} :catch_e1
    .catchall {:try_start_71 .. :try_end_7d} :catchall_df

    if-nez p1, :cond_83

    .line 115
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v4

    .line 116
    :cond_83
    :try_start_83
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v4, p1, Lio/dcloud/p/f5;->a:Z

    .line 117
    iget-boolean p2, p1, Lio/dcloud/p/f5;->c:Z

    if-eqz p2, :cond_96

    .line 118
    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGTU_WWW_MANIFEST_NOT_EXIST:Ljava/lang/String;

    const/16 v0, -0x4c9

    invoke-static {v0, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    goto :goto_a0

    .line 120
    :cond_96
    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_RUNTIME_WGT_MANIFEST_NOT_EXIST:Ljava/lang/String;

    const/16 v0, -0x4b2

    invoke-static {v0, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/p/f5;->b:Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a0} :catch_e1
    .catchall {:try_start_83 .. :try_end_a0} :catchall_df

    .line 147
    :goto_a0
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v2

    .line 148
    :cond_a4
    :try_start_a4
    invoke-virtual {p0, v1, p1, p2}, Lio/dcloud/p/d5;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v3, :cond_ad

    .line 150
    invoke-direct {p0}, Lio/dcloud/p/d5;->x()V

    .line 160
    :cond_ad
    iget-object p1, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    if-eqz p1, :cond_ca

    iget-boolean p1, p1, Lio/dcloud/p/f5;->a:Z

    if-eqz p1, :cond_ca

    .line 161
    const-string p1, "WebApp"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iget-object v0, v0, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_ca
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 165
    iget-object p2, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IActivityHandler;->updateSplash(Ljava/lang/String;)V

    .line 167
    :cond_d9
    iput-boolean v4, p0, Lio/dcloud/p/d5;->v:Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_db} :catch_e1
    .catchall {:try_start_a4 .. :try_end_db} :catchall_df

    .line 171
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v2

    :catchall_df
    move-exception p1

    goto :goto_eb

    :catch_e1
    move-exception p1

    .line 172
    :try_start_e2
    const-string p2, "parseConfig"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_df

    .line 174
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    return v2

    :goto_eb
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 175
    throw p1
.end method

.method c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    if-eqz v0, :cond_16

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_16

    .line 2
    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onAppActive(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0, p0}, Lio/dcloud/WebAppActivity;->onAppActive(Lio/dcloud/common/DHInterface/IApp;)V

    .line 5
    :cond_16
    invoke-virtual {p0}, Lio/dcloud/p/d5;->diyStatusBarState()V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->setStatus(B)V

    .line 7
    iget-object v0, p0, Lio/dcloud/p/e5;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->onAppActive(Lio/dcloud/common/DHInterface/IApp;)V

    .line 8
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppForeground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/dcloud/common/constant/IntentConst;->obtainArgs(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/p/d5;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method c(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 12

    .line 16
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-byte v5, p0, Lio/dcloud/p/d5;->V:B

    if-ne v5, v3, :cond_5f

    .line 22
    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v7, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_5d

    .line 23
    :try_start_41
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_97

    goto :goto_72

    :catch_5d
    move-exception p2

    goto :goto_6f

    :cond_5f
    if-nez v5, :cond_71

    .line 26
    :try_start_61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6e} :catch_5d

    goto :goto_71

    :goto_6f
    move-object v6, v0

    goto :goto_98

    :cond_71
    :goto_71
    move-object v6, v0

    .line 30
    :goto_72
    :try_start_72
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v2}, Lio/dcloud/common/util/Zip4JUtil;->isEncryptedZip(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 33
    const-string v7, "password"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v2, v6, v7}, Lio/dcloud/common/util/Zip4JUtil;->upZipFileWithPassword(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 36
    :cond_87
    invoke-static {v2, v6}, Lio/dcloud/common/util/ZipUtils;->upZipFile(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    :goto_8a
    invoke-virtual {p0, v4}, Lio/dcloud/p/d5;->b(B)V

    .line 40
    invoke-virtual {p0, v6}, Lio/dcloud/p/d5;->setAppDataPath(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_96} :catch_97

    goto :goto_b8

    :catch_97
    move-exception p2

    .line 43
    :goto_98
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    iget-object v2, p0, Lio/dcloud/p/d5;->s:Lio/dcloud/p/f5;

    iput-boolean v3, v2, Lio/dcloud/p/f5;->a:Z

    const/16 v7, 0xa

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v4

    aput-object p2, v8, v3

    const-string p2, "{code:%d,message:\'%s\'}"

    invoke-static {p2, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lio/dcloud/p/f5;->b:Ljava/lang/String;

    :goto_b8
    if-nez v4, :cond_eb

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "unZipWebApp failed pFilePath="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appmgr"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v5}, Lio/dcloud/p/d5;->b(B)V

    .line 50
    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->setAppDataPath(Ljava/lang/String;)V

    .line 52
    :try_start_d3
    invoke-static {v6}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_db

    :catch_d7
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_db
    if-nez v5, :cond_107

    .line 57
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_107

    :cond_eb
    if-nez v5, :cond_f5

    .line 62
    :try_start_ed
    invoke-static {v1}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_f5

    :catch_f1
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :cond_f5
    :goto_f5
    new-instance p1, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    iget-object p2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/p/d5;->t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    .line 68
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->saveToBundleData(Landroid/content/Context;)V

    :cond_107
    :goto_107
    return v4
.end method

.method public callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4
    iget-object v2, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->AllSystemEvent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_20

    .line 8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_20
    if-eqz v2, :cond_25

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_4a

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/ISysEventListener;

    .line 16
    invoke-direct {p0, v2, p1}, Lio/dcloud/p/d5;->a(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 17
    invoke-interface {v2, p1, p2}, Lio/dcloud/common/DHInterface/ISysEventListener;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_47

    .line 18
    invoke-static {p1}, Lio/dcloud/p/d5;->a(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)Z

    move-result v2

    if-nez v2, :cond_47

    return v1

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_4a
    return v1
.end method

.method public checkIsCustomPath()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/d5;->o0:Z

    return v0
.end method

.method public checkOrLoadlaunchWebview()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    if-eqz v0, :cond_48

    .line 2
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v3, v2}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkOrLoadlaunchWebview "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->manifestBeParsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";adaFrameView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Direct_page"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/p/d5;->manifestBeParsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lio/dcloud/p/d5;->w1:Z

    if-eqz v0, :cond_48

    .line 5
    invoke-virtual {p0}, Lio/dcloud/p/d5;->manifestBeParsed()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 6
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->checkIfNeedLoadOriginalUrl()V

    :cond_48
    return-void
.end method

.method public checkPrivateDir(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 3
    :cond_c
    const-string v0, "_www"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    return v1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->checkPrivateDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->exists(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 10
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/io/DHFile;->copyAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_57
    return-object p1
.end method

.method public checkSchemeWhite(Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 4
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_40

    .line 5
    iget-object v0, p0, Lio/dcloud/p/d5;->m1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_16
    if-ge v4, v3, :cond_40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 6
    const-string v6, "*"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_3f
    return v1

    :cond_40
    return v2
.end method

.method public checkWhiteUrl(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/dcloud/p/d5;->l1:Ljava/util/ArrayList;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/dcloud/p/d5;->l1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public clearRuntimeArgs()V
    .registers 2

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/p/d5;->E:Ljava/lang/String;

    return-void
.end method

.method public convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0, p1}, Lio/dcloud/p/d5;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3
    iget-byte v1, p0, Lio/dcloud/p/d5;->V:B

    if-ne v1, v0, :cond_12

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->isResFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_23

    .line 5
    :cond_12
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_19

    if-eqz v1, :cond_1d

    goto :goto_23

    :catch_19
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_1d
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_23
    return-object p2

    .line 16
    :cond_24
    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_31

    .line 17
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_31
    const-string v1, "_documents/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xb

    if-eqz v1, :cond_52

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 21
    :cond_52
    const-string v1, "_documents"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0xa

    if-eqz v1, :cond_73

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 23
    :cond_73
    const-string v1, "_doc/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x5

    if-eqz v1, :cond_95

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 25
    :cond_95
    const-string v1, "_doc"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_b7

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 27
    :cond_b7
    const-string v1, "_downloads/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 29
    :cond_d6
    const-string v1, "_downloads"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 31
    :cond_f5
    const-string v1, "_www/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "/"

    if-eqz v1, :cond_140

    .line 32
    iget-byte p1, p0, Lio/dcloud/p/d5;->V:B

    if-ne p1, v0, :cond_127

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_127
    if-nez p1, :cond_234

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 37
    :cond_140
    const-string v1, "_www"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 38
    iget-byte p1, p0, Lio/dcloud/p/d5;->V:B

    if-ne p1, v0, :cond_170

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    :cond_170
    if-nez p1, :cond_234

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 43
    :cond_189
    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x7

    if-eqz v4, :cond_198

    .line 44
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 46
    :cond_198
    const-string v4, "content://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    goto/16 :goto_234

    .line 48
    :cond_1a2
    sget-object v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ab

    return-object p2

    .line 50
    :cond_1ab
    const-string v4, "http://localhost"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c9

    const/16 p1, 0x10

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v0

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lio/dcloud/p/d5;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_234

    .line 56
    :cond_1c9
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d4

    if-nez p1, :cond_1d2

    goto :goto_1d4

    :cond_1d2
    const/4 v0, 0x0

    goto :goto_1de

    .line 58
    :cond_1d4
    :goto_1d4
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1de

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1de
    :goto_1de
    if-eqz p1, :cond_1f9

    .line 63
    const-string v3, "file:///android_asset/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    const/16 v1, 0x16

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f9

    .line 65
    :cond_1ef
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 66
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1f9
    :goto_1f9
    if-eqz p1, :cond_202

    if-nez v0, :cond_202

    .line 70
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->standardizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_234

    :cond_202
    if-eqz v0, :cond_234

    .line 73
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_221

    .line 74
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_221

    const-string v1, "/www/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_221

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_234
    :goto_234
    return-object p2
.end method

.method public convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/d5;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-byte p2, p0, Lio/dcloud/p/d5;->V:B

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    sget-boolean v1, Lio/dcloud/common/adapter/util/DeviceInfo;->isPrivateDirectory:Z

    if-eqz v1, :cond_3c

    :cond_d
    if-ne p2, v0, :cond_14

    .line 5
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_18

    .line 7
    :cond_14
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    :goto_18
    if-eqz p2, :cond_3c

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    :try_start_31
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 13
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_38

    return-object p1

    :catch_38
    move-exception p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3c
    return-object p1
.end method

.method public convert2RelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_119

    const-string v5, "_www"

    if-eqz v4, :cond_3b

    .line 7
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3b
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_61
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_69} :catch_119

    const-string v4, "_doc"

    if-eqz v0, :cond_80

    .line 13
    :try_start_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_80
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_a1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_a7} :catch_119

    const-string v1, "_documents"

    if-eqz v0, :cond_be

    .line 19
    :try_start_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_be
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_dd
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_e3} :catch_119

    const-string v1, "_downloads"

    if-eqz v0, :cond_fa

    .line 25
    :try_start_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_fa
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_118} :catch_119

    :cond_118
    return-object p1

    :catch_119
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "file:///"

    .line 1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_14b

    .line 2
    :cond_a
    iget-boolean v1, p0, Lio/dcloud/p/d5;->U:Z

    const-string v2, "http://"

    if-eqz v1, :cond_28

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14b

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/p/d5;->s0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_28
    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14b

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14b

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14b

    .line 9
    :try_start_3e
    invoke-static {p2}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_54} :catch_55

    return-object p1

    :catch_55
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :cond_59
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_14a

    .line 19
    :cond_6f
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7e

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x0

    .line 23
    :goto_7f
    const-string v3, "_www"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_a5

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainWebviewBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_14a

    .line 25
    :cond_a5
    const-string v3, "_documents"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0xa

    if-eqz v3, :cond_ca

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_14a

    .line 27
    :cond_ca
    const-string v3, "_doc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14a

    .line 29
    :cond_ee
    const-string v3, "_downloads"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14a

    :cond_110
    if-eqz p1, :cond_119

    if-nez v0, :cond_119

    .line 32
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->standardizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14a

    .line 34
    :cond_119
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainWebviewBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_137

    .line 36
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_137

    const-string v1, "/www/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/p/d5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_14a
    return-object p1

    :cond_14b
    :goto_14b
    return-object p2
.end method

.method d(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->x1:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/d5;->m()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/p/d5;->x1:Lorg/json/JSONObject;

    if-eqz v0, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5
    iget-object v0, p0, Lio/dcloud/p/d5;->x1:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/dcloud/common/util/PdrUtil;->getSitemapParameters(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteAppTemp()V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/d5$e;

    invoke-direct {v1, p0}, Lio/dcloud/p/d5$e;-><init>(Lio/dcloud/p/d5;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public diyStatusBarState()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    if-nez v0, :cond_6

    goto/16 :goto_83

    .line 4
    :cond_6
    iget-boolean v1, p0, Lio/dcloud/p/e5;->i:Z

    if-eqz v1, :cond_14

    .line 5
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lio/dcloud/p/e5;->i:Z

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->setFullScreen(Landroid/app/Activity;Z)V

    goto :goto_77

    .line 7
    :cond_14
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lio/dcloud/p/d5;->b1:Z

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    .line 10
    iget-object v2, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/dcloud/common/util/AppStatusBarManager;->setImmersive(Landroid/app/Activity;Z)V

    goto :goto_39

    .line 12
    :cond_2e
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    .line 13
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/util/AppStatusBarManager;->setImmersive(Landroid/app/Activity;Z)V

    .line 15
    :goto_39
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 16
    iget-object v0, p0, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 18
    iget-object v0, p0, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 19
    iget-object v0, p0, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 21
    :cond_57
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_6c

    .line 23
    :cond_61
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/BaseInfo;->mDeStatusBarBackground:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 26
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/d5;->a1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/AppStatusBarManager;->setStatusBarMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 29
    :goto_77
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {v0}, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreenOrImmersive()Z

    move-result v0

    if-eqz v0, :cond_83

    const/4 v0, 0x2

    .line 30
    invoke-virtual {p0, v0}, Lio/dcloud/p/e5;->updateScreenInfo(I)V

    :cond_83
    :goto_83
    return-void
.end method

.method f(Ljava/lang/String;)Z
    .registers 4

    .line 17
    iget-boolean v0, p0, Lio/dcloud/p/d5;->v:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/dcloud/p/d5;->x:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webapp start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    if-eqz v0, :cond_33

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_33

    .line 20
    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onAppStart(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0, p0}, Lio/dcloud/WebAppActivity;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 23
    :cond_33
    sget v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    .line 24
    iput-boolean v1, p0, Lio/dcloud/p/d5;->w:Z

    .line 25
    iget-boolean v0, p0, Lio/dcloud/p/d5;->v:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/p/d5;->x:Z

    .line 26
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->setRuntimeArgs(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 31
    invoke-direct {p0, p1}, Lio/dcloud/p/d5;->b(I)Z

    move-result p1

    return p1
.end method

.method public forceShortCut()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->A1:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .registers 4

    .line 5
    iget-object v0, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iput-object v1, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    .line 9
    :cond_a
    iget-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    if-eqz v0, :cond_13

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    iput-object v1, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    .line 13
    :cond_13
    iget-object v0, p0, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->removeData(Ljava/lang/String;)V

    .line 14
    iput-object v1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    .line 15
    iput-object v1, p0, Lio/dcloud/p/d5;->t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lio/dcloud/p/d5;->g1:Z

    return-void
.end method

.method g(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->setRuntimeArgs(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->setStatus(B)V

    .line 3
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/p/d5;->r0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lio/dcloud/p/d5;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lio/dcloud/p/d5;->T0:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, p1, v4

    const/4 v4, 0x1

    aput-object v2, p1, v4

    const/4 v2, 0x2

    aput-object v3, p1, v2

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2, p1}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2c

    return v4

    .line 4
    :cond_2c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->t1:Lio/dcloud/common/DHInterface/IConfusionMgr;

    return-object v0
.end method

.method public getDirectPage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    return-object v0
.end method

.method public getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    return-object v0
.end method

.method public getOriginalDirectPage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->o1:Ljava/lang/String;

    return-object v0
.end method

.method public getPathByType(B)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDataPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 3
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainAppDocPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 5
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    return-object p1

    :cond_15
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1b

    .line 7
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    return-object p1

    :cond_1b
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3c

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPopGesture()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->S0:Ljava/lang/String;

    return-object v0
.end method

.method public getQuitModel()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/d5;->s1:I

    return v0
.end method

.method public getSystemInfo()Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sSystemInfo:Lorg/json/JSONObject;

    if-eqz v0, :cond_70

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSystemInfo:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v1, "uniCompileVersion"

    iget-object v2, p0, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "uniRuntimeVersion"

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "browserName"

    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isOther()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "x5webview"

    goto :goto_2a

    :cond_28
    const-string v2, "chrome"

    :goto_2a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "appId"

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "appName"

    iget-object v2, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    sget-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_70

    const-string v2, "appVersionCode"

    const-string v3, "appVersion"

    if-eqz v1, :cond_4e

    .line 11
    :try_start_43
    iget-object v1, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v1, p0, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_64

    .line 15
    :cond_4e
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/p/d5;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/p/d5;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    :goto_64
    const-string v1, "appWgtVersion"

    iget-object v2, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6f} :catch_70

    return-object v0

    :catch_70
    :cond_70
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOnAppRunningMode()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->V:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isUniApp()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/e5;->q:Z

    return v0
.end method

.method public j()F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Device"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    const/high16 v0, 0x447a0000    # 1000.0f

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/"

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->startsWithSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->setAppDataPath(Ljava/lang/String;)V

    .line 5
    :cond_30
    iget-object v0, p0, Lio/dcloud/p/d5;->B1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lio/dcloud/p/d5;->B1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->startsWithSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 7
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_DOC_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->setAppDocPath(Ljava/lang/String;)V

    .line 9
    :cond_5e
    iget-object v0, p0, Lio/dcloud/p/d5;->C1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lio/dcloud/p/d5;->C1:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->startsWithSdcard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_70

    :cond_6f
    return-void

    .line 10
    :cond_70
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APP_WEB_CHACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/d5;->C1:Ljava/lang/String;

    return-void
.end method

.method m()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/p/d5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6
    :try_start_11
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/dcloud/p/d5;->x1:Lorg/json/JSONObject;

    .line 9
    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/d5;->C:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 14
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data/sitemap/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_57

    .line 16
    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/dcloud/p/d5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lio/dcloud/p/d5;->m()V

    :cond_57
    return-void
.end method

.method public manifestBeParsed()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/d5;->v:Z

    if-nez v0, :cond_d

    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lio/dcloud/p/d5;->v:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lio/dcloud/p/d5;->P:Z

    return v0

    :cond_e
    return v1
.end method

.method public needRefreshApp()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/d5;->k1:Z

    return v0
.end method

.method public needReload()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/d5;->j1:Z

    return v0
.end method

.method public o()Z
    .registers 6

    .line 1
    const-string v0, ""

    .line 3
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 6
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v1, :cond_1d

    const-string v1, "uni-jsframework-dev.js"

    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_1f

    .line 9
    :cond_1d
    const-string v1, "uni-jsframework.js"

    .line 11
    :goto_1f
    :try_start_1f
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/util/BaseInfo;->setUniVersionV3(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_50} :catch_51
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    nop

    goto :goto_55

    .line 18
    :cond_53
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    .line 20
    :goto_55
    iget-object v1, p0, Lio/dcloud/p/d5;->w0:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6b

    iget-object v1, p0, Lio/dcloud/p/d5;->w0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-boolean v1, p0, Lio/dcloud/p/d5;->x0:Z

    if-nez v1, :cond_6b

    return v2

    .line 23
    :cond_6b
    iget-boolean v1, p0, Lio/dcloud/p/d5;->y0:Z

    if-nez v1, :cond_95

    iget-boolean v1, p0, Lio/dcloud/p/d5;->v:Z

    if-eqz v1, :cond_95

    iget-object v1, p0, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    iget-object v1, p0, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lio/dcloud/p/e5;->q:Z

    if-eqz v0, :cond_95

    const/4 v0, 0x1

    return v0

    :cond_95
    return v2
.end method

.method public obtainAdaptationJs()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->T:Ljava/lang/String;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lio/dcloud/p/d5;->K:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    iget-object v0, p0, Lio/dcloud/p/d5;->K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainRunningAppMode()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x2

    :goto_1c
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lio/dcloud/p/d5;->T:Ljava/lang/String;

    goto :goto_2e

    .line 6
    :cond_2a
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/p/d5;->T:Ljava/lang/String;

    .line 9
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lio/dcloud/p/d5;->T:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppDataPath()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/www/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppDocPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->B1:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppInfo()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "appid"

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "versionName"

    iget-object v2, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "name"

    iget-object v2, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "versionCode"

    iget-object v2, p0, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppLog()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppStatus()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->u:B

    return v0
.end method

.method public obtainAppTempPath()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainAppVersionCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppVersionName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAppWebCachePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->C1:Ljava/lang/String;

    return-object v0
.end method

.method public obtainAuthority(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sGlobalAuthority:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v1, "*"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_45

    .line 3
    :cond_d
    invoke-virtual {p0}, Lio/dcloud/p/d5;->q()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 4
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/p/d5;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 6
    iget-object v0, p0, Lio/dcloud/p/d5;->I0:Lorg/json/JSONObject;

    const-string v1, "undetermined"

    if-eqz v0, :cond_44

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 11
    iget-object p1, p0, Lio/dcloud/p/d5;->I0:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_44
    return-object v1

    :cond_45
    :goto_45
    const-string p1, "authorized"

    return-object p1
.end method

.method public obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "adid"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/p/d5;->N0:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_b
    const-string v0, "launchError"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    iget-object p1, p0, Lio/dcloud/p/d5;->M0:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_16
    const-string v0, "autoclose"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6
    iget-boolean p1, p0, Lio/dcloud/p/d5;->Y:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_25
    const-string v0, "timeout"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 8
    iget p1, p0, Lio/dcloud/p/d5;->a0:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_34
    const-string v0, "delay"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 10
    iget p1, p0, Lio/dcloud/p/d5;->b0:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_43
    const-string v0, "splashscreen"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 12
    iget-boolean p1, p0, Lio/dcloud/p/d5;->W:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_52
    const-string v0, "waiting"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 14
    iget-boolean p1, p0, Lio/dcloud/p/d5;->X:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_61
    const-string v0, "h5plus"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 16
    iget-boolean p1, p0, Lio/dcloud/p/d5;->R:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_70
    const-string v0, "funSetUA"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 18
    iget-boolean p1, p0, Lio/dcloud/p/d5;->S:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7f
    const-string v0, "useragent"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 20
    iget-object p1, p0, Lio/dcloud/p/d5;->L:Ljava/lang/String;

    return-object p1

    .line 21
    :cond_8a
    const-string v0, "error"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 22
    iget-object p1, p0, Lio/dcloud/p/d5;->q0:Ljava/lang/String;

    return-object p1

    .line 23
    :cond_95
    const-string v0, "fullscreen"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 24
    iget-boolean p1, p0, Lio/dcloud/p/e5;->i:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 25
    :cond_a4
    const-string v0, "untrustedca"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 26
    iget-object p1, p0, Lio/dcloud/p/d5;->p0:Ljava/lang/String;

    return-object p1

    .line 27
    :cond_af
    const-string v0, "loadedTime"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 28
    iget-object p1, p0, Lio/dcloud/p/d5;->Q0:Ljava/lang/String;

    return-object p1

    .line 29
    :cond_ba
    const-string v0, "ramcachemode"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 30
    iget-object p1, p0, Lio/dcloud/p/d5;->R0:Ljava/lang/String;

    return-object p1

    .line 31
    :cond_c5
    const-string v0, "jserror"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_e1

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->N:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 33
    :cond_e1
    const-string v0, "crash"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->M:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :cond_fb
    const-string v0, "use_encryption"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->U0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_115
    const-string v0, "w2a_delay"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 38
    iget p1, p0, Lio/dcloud/p/d5;->c0:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :cond_124
    const-string v0, "w2a_autoclose"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 40
    iget-boolean p1, p0, Lio/dcloud/p/d5;->Z:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 41
    :cond_133
    const-string v0, "wap2app_running_mode"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->O:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_14d
    const-string v0, "injection"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->i1:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_167
    const-string v0, "event"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 46
    iget-object p1, p0, Lio/dcloud/p/d5;->d0:Ljava/lang/String;

    return-object p1

    .line 47
    :cond_172
    const-string v0, "target"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 48
    iget-object p1, p0, Lio/dcloud/p/d5;->e0:Ljava/lang/String;

    return-object p1

    .line 49
    :cond_17d
    const-string v0, "L_plusrequire"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 50
    iget-object p1, p0, Lio/dcloud/p/d5;->f0:Ljava/lang/String;

    return-object p1

    .line 51
    :cond_188
    const-string v0, "S_pluserquire"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 52
    iget-object p1, p0, Lio/dcloud/p/d5;->g0:Ljava/lang/String;

    return-object p1

    .line 53
    :cond_193
    const-string v0, "L_geolocation"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 54
    iget-object p1, p0, Lio/dcloud/p/d5;->h0:Ljava/lang/String;

    return-object p1

    .line 55
    :cond_19e
    const-string v0, "S_geolocation"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 56
    iget-object p1, p0, Lio/dcloud/p/d5;->i0:Ljava/lang/String;

    return-object p1

    .line 57
    :cond_1a9
    const-string v0, "StatusBarBackground"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1c3
    const-string v0, "status_bar_mode"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 60
    iget-object p1, p0, Lio/dcloud/p/d5;->a1:Ljava/lang/String;

    return-object p1

    .line 61
    :cond_1ce
    const-string v0, "immersed"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->b1:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1e8
    const-string v0, "launch_is_statusbar"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 64
    iget-boolean p1, p0, Lio/dcloud/p/d5;->c1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1f7
    const-string v0, "launch_statusbar_color"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 66
    iget-object p1, p0, Lio/dcloud/p/d5;->e1:Ljava/lang/String;

    return-object p1

    .line 67
    :cond_202
    const-string v0, "second_is_statusbar"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 68
    iget-boolean p1, p0, Lio/dcloud/p/d5;->d1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_211
    const-string v0, "second_statusbar_color"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 70
    iget-object p1, p0, Lio/dcloud/p/d5;->f1:Ljava/lang/String;

    return-object p1

    .line 71
    :cond_21c
    const-string v0, "coordType"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 72
    iget-object p1, p0, Lio/dcloud/p/d5;->p1:Ljava/lang/String;

    return-object p1

    .line 73
    :cond_227
    const-string v0, "uniapp_weex_js_service"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 74
    iget-boolean p1, p0, Lio/dcloud/p/d5;->g1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_236
    const-string v0, "appUniVersion"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_241

    .line 76
    iget-object p1, p0, Lio/dcloud/p/d5;->u0:Ljava/lang/String;

    return-object p1

    .line 77
    :cond_241
    const-string v0, "control"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_253

    .line 78
    iget-boolean p1, p0, Lio/dcloud/p/e5;->q:Z

    if-eqz p1, :cond_250

    .line 79
    iget-object p1, p0, Lio/dcloud/p/d5;->z0:Ljava/lang/String;

    return-object p1

    .line 102
    :cond_250
    const-string p1, "h5+"

    return-object p1

    .line 103
    :cond_253
    const-string v0, "uni_nvue_data"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_266

    .line 104
    iget-object p1, p0, Lio/dcloud/p/d5;->v0:Lorg/json/JSONObject;

    if-nez p1, :cond_261

    return-object v2

    :cond_261
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :cond_266
    const-string v0, "concatenate"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_280

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lio/dcloud/p/d5;->Q:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :cond_280
    const-string v0, "nvueLaunchMode"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 110
    iget-object p1, p0, Lio/dcloud/p/d5;->A0:Ljava/lang/String;

    return-object p1

    .line 111
    :cond_28b
    const-string v0, "debugRefresh"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_296

    .line 112
    iget-object p1, p0, Lio/dcloud/p/d5;->r1:Ljava/lang/String;

    return-object p1

    .line 113
    :cond_296
    const-string v0, "uni_restart_to_direct"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 114
    iget-boolean p1, p0, Lio/dcloud/p/d5;->q1:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :cond_2a5
    const-string v0, "isUniapp"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 116
    iget-boolean p1, p0, Lio/dcloud/p/e5;->q:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :cond_2b4
    const-string v0, "use_v3_encryption"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c3

    .line 118
    iget-boolean p1, p0, Lio/dcloud/p/d5;->V0:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_2c3
    const-string v0, "unimp_run_extra_info"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2ce

    .line 120
    iget-object p1, p0, Lio/dcloud/p/d5;->u1:Ljava/lang/String;

    return-object p1

    :cond_2ce
    return-object v2
.end method

.method public obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->v1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

    return-object v0
.end method

.method public obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainOriginalAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->z:Ljava/lang/String;

    return-object v0
.end method

.method public obtainResInStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lio/dcloud/p/d5;->obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public obtainResInStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/d5;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-byte p2, p0, Lio/dcloud/p/d5;->V:B

    const/4 v0, 0x1

    const-string v1, "WebApp.obtainResInStream"

    if-ne p2, v0, :cond_24

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 5
    :try_start_11
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 7
    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 10
    :cond_1f
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_24
    if-nez p2, :cond_33

    .line 14
    :try_start_26
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    move-exception p1

    .line 16
    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainRunningAppMode()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->V:B

    return v0
.end method

.method public obtainRuntimeArgs(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lio/dcloud/p/d5;->E:Ljava/lang/String;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    iget-object p1, p0, Lio/dcloud/p/d5;->E:Ljava/lang/String;

    return-object p1
.end method

.method public obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->m:Lio/dcloud/common/util/AppStatusBarManager;

    return-object v0
.end method

.method public obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2e

    const/4 p1, 0x0

    return-object p1

    .line 20
    :pswitch_d
    iget-object p1, p0, Lio/dcloud/p/d5;->E0:Lorg/json/JSONObject;

    return-object p1

    .line 21
    :pswitch_10
    iget-object p1, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    return-object p1

    .line 22
    :pswitch_13
    iget-object p1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    iget-object p1, p1, Lio/dcloud/p/r;->g:Lorg/json/JSONObject;

    return-object p1

    .line 23
    :pswitch_18
    invoke-virtual {p0}, Lio/dcloud/p/d5;->m()V

    .line 24
    iget-object p1, p0, Lio/dcloud/p/d5;->x1:Lorg/json/JSONObject;

    return-object p1

    .line 25
    :pswitch_1e
    iget-object p1, p0, Lio/dcloud/p/d5;->J0:Lorg/json/JSONObject;

    return-object p1

    .line 26
    :pswitch_21
    iget-object p1, p0, Lio/dcloud/p/d5;->H0:Lorg/json/JSONObject;

    return-object p1

    .line 27
    :pswitch_24
    iget-object p1, p0, Lio/dcloud/p/d5;->G0:Lorg/json/JSONObject;

    return-object p1

    .line 28
    :pswitch_27
    iget-object p1, p0, Lio/dcloud/p/d5;->F0:Lorg/json/JSONObject;

    return-object p1

    .line 29
    :pswitch_2a
    iget-object p1, p0, Lio/dcloud/p/d5;->D0:Lorg/json/JSONObject;

    return-object p1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_18
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public obtainVersionSitemap()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->C:Ljava/lang/String;

    return-object v0
.end method

.method public obtainWebAppIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    return-object v0
.end method

.method public obtainWebviewBaseUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->V:B

    invoke-direct {p0, v0}, Lio/dcloud/p/d5;->a(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->u:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/d5;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-ne v0, p2, :cond_19

    .line 3
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p1, p2, :cond_16

    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_19

    .line 4
    :cond_16
    invoke-virtual {p0}, Lio/dcloud/p/d5;->s()V

    :cond_19
    return v1
.end method

.method public onSplashClosed()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->diyStatusBarState()V

    return-void
.end method

.method public p()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->u:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/d5;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-boolean v1, p0, Lio/dcloud/p/d5;->G1:Z

    const-string v2, "is_stream_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/p/d5;->G1:Z

    .line 6
    :cond_11
    iget-boolean v0, p0, Lio/dcloud/p/d5;->G1:Z

    return v0
.end method

.method public r()Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appmgr"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/p/d5;->P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onStop()Z

    move-result v0

    return v0

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    .line 4
    :cond_c
    iget-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->l1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lio/dcloud/p/d5;->m1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    if-eqz v0, :cond_19

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_19

    .line 4
    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onAppStop(Ljava/lang/String;)V

    .line 6
    :cond_19
    const-string v0, "appmgr"

    const-string v1, "webapp.onStoped"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/dcloud/common/util/BaseInfo;->s_Runing_App_Count:I

    .line 8
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, v0, p0}, Lio/dcloud/p/d5;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lio/dcloud/p/d5;->d()V

    .line 10
    iget-object v0, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PermissionUtil;->removeTempPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lio/dcloud/p/d5;->b()V

    .line 14
    invoke-virtual {p0}, Lio/dcloud/p/d5;->deleteAppTemp()V

    .line 15
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/core/permission/PermissionControler;->unregisterRootPermission(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    invoke-virtual {v0, p0}, Lio/dcloud/p/r;->e(Lio/dcloud/p/d5;)V

    .line 18
    invoke-virtual {p0}, Lio/dcloud/p/d5;->getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 19
    invoke-virtual {p0}, Lio/dcloud/p/d5;->getIAppStatusListener()Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;->onStoped(ZLjava/lang/String;)Ljava/lang/String;

    .line 20
    :cond_54
    iget-object v0, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2, p0}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/ui/PrivacyManager;->unRegisterPrivacyAgreeAllListener()V

    return-void
.end method

.method public setAppDataPath(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-byte v0, p0, Lio/dcloud/p/d5;->V:B

    const/4 v1, 0x1

    const-string v2, "/"

    if-ne v0, v1, :cond_30

    .line 2
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    iput-object p1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    return-void

    .line 5
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sBaseResAppsPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    return-void

    .line 8
    :cond_30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 9
    iput-object p1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    return-void

    .line 10
    :cond_3e
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sCacheRootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    return-void

    .line 13
    :cond_5d
    iput-object p1, p0, Lio/dcloud/p/d5;->k0:Ljava/lang/String;

    return-void
.end method

.method public setAppDocPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->appendByDeviceRootDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/d5;->B1:Ljava/lang/String;

    return-void
.end method

.method public setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "autoclose"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    iget-boolean p1, p0, Lio/dcloud/p/d5;->Y:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->Y:Z

    return-void

    .line 3
    :cond_12
    const-string v0, "commit"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-direct {p0}, Lio/dcloud/p/d5;->a()V

    return-void

    .line 5
    :cond_1e
    const-string v0, "timeout"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6
    iget p1, p0, Lio/dcloud/p/d5;->a0:I

    invoke-static {p2, p1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/dcloud/p/d5;->a0:I

    return-void

    .line 7
    :cond_2f
    const-string v0, "delay"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8
    iget p1, p0, Lio/dcloud/p/d5;->b0:I

    invoke-static {p2, p1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/dcloud/p/d5;->b0:I

    return-void

    .line 9
    :cond_40
    const-string v0, "splashscreen"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 10
    iget-boolean p1, p0, Lio/dcloud/p/d5;->W:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->W:Z

    return-void

    .line 11
    :cond_51
    const-string v0, "waiting"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 12
    iget-boolean p1, p0, Lio/dcloud/p/d5;->X:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->X:Z

    return-void

    .line 13
    :cond_62
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 14
    iput-object p2, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    return-void

    .line 15
    :cond_6d
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 16
    iput-object p2, p0, Lio/dcloud/p/d5;->G:Ljava/lang/String;

    return-void

    .line 17
    :cond_76
    const-string v2, "email"

    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 18
    iput-object p2, p0, Lio/dcloud/p/d5;->H:Ljava/lang/String;

    return-void

    .line 19
    :cond_81
    const-string v2, "url"

    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 20
    iput-object p2, p0, Lio/dcloud/p/d5;->J:Ljava/lang/String;

    return-void

    .line 21
    :cond_8c
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 22
    iput-object p2, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    .line 23
    sput-object p2, Lio/dcloud/common/util/BaseInfo;->sLastAppVersionName:Ljava/lang/String;

    return-void

    .line 24
    :cond_97
    const-string v0, "code"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 25
    iput-object p2, p0, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    return-void

    .line 26
    :cond_a2
    const-string v0, "liberate"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 27
    iget-boolean p1, p0, Lio/dcloud/p/d5;->W:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->j0:Z

    return-void

    .line 28
    :cond_b3
    const-string v0, "h5plus"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c3

    .line 29
    invoke-static {p2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->R:Z

    return-void

    .line 30
    :cond_c3
    const-string v0, "funSetUA"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 31
    invoke-static {p2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->S:Z

    return-void

    .line 32
    :cond_d2
    const-string v0, "useragent"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 33
    iput-object p2, p0, Lio/dcloud/p/d5;->L:Ljava/lang/String;

    return-void

    .line 34
    :cond_dd
    const-string v0, "fullscreen"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 35
    iget-boolean p1, p0, Lio/dcloud/p/e5;->i:Z

    invoke-static {p2, p1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/e5;->i:Z

    return-void

    .line 36
    :cond_ee
    const-string v0, "webcache_path"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 37
    iput-object p2, p0, Lio/dcloud/p/d5;->C1:Ljava/lang/String;

    return-void

    .line 38
    :cond_f9
    const-string v0, "wap2app_running_mode"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 39
    invoke-static {p2, v1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->O:Z

    return-void

    .line 40
    :cond_108
    const-string v0, "loadedTime"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 41
    iput-object p2, p0, Lio/dcloud/p/d5;->Q0:Ljava/lang/String;

    return-void

    .line 42
    :cond_113
    const-string v0, "StatusBarBackground"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 43
    iput-object p2, p0, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    return-void

    .line 44
    :cond_11e
    const-string v0, "status_bar_mode"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 45
    iput-object p2, p0, Lio/dcloud/p/d5;->a1:Ljava/lang/String;

    return-void

    .line 46
    :cond_129
    const-string v0, "immersed"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->b1:Z

    return-void

    .line 48
    :cond_13c
    const-string v0, "launch_is_statusbar"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->c1:Z

    return-void

    .line 50
    :cond_14f
    const-string v0, "launch_statusbar_color"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 51
    iput-object p2, p0, Lio/dcloud/p/d5;->e1:Ljava/lang/String;

    return-void

    .line 52
    :cond_15a
    const-string v0, "second_is_statusbar"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 53
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->d1:Z

    return-void

    .line 54
    :cond_16d
    const-string v0, "second_statusbar_color"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 55
    iput-object p2, p0, Lio/dcloud/p/d5;->f1:Ljava/lang/String;

    return-void

    .line 56
    :cond_178
    const-string v0, "uniapp_weex_js_service"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 57
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->g1:Z

    return-void

    .line 58
    :cond_18b
    const-string v0, "debugRefresh"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 59
    iput-object p2, p0, Lio/dcloud/p/d5;->r1:Ljava/lang/String;

    return-void

    .line 60
    :cond_196
    const-string v0, "uni_restart_to_direct"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 61
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/p/d5;->q1:Z

    return-void

    .line 62
    :cond_1a9
    const-string v0, "unimp_run_extra_info"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b3

    .line 63
    iput-object p2, p0, Lio/dcloud/p/d5;->u1:Ljava/lang/String;

    :cond_1b3
    return-void
.end method

.method public setDirectPage(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    return-void
.end method

.method public setHideNavBarState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/p/e5;->p:Z

    return-void
.end method

.method public setIAppStatusListener(Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5;->P0:Lio/dcloud/common/DHInterface/IApp$IAppStatusListener;

    return-void
.end method

.method public setLaunchPageStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5;->v1:Lio/dcloud/common/DHInterface/IWebviewStateListener;

    return-void
.end method

.method public setNeedRefreshApp(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/p/d5;->k1:Z

    return-void
.end method

.method public setQuitModel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/p/d5;->s1:I

    return-void
.end method

.method public setRuntimeArgs(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iput-object p1, p0, Lio/dcloud/p/d5;->E:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setStatus(B)V
    .registers 4

    .line 1
    iput-byte p1, p0, Lio/dcloud/p/d5;->u:B

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/p/d5;->h1:J

    :cond_b
    return-void
.end method

.method public setWebAppActivity(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/e5;->a:Landroid/app/Activity;

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public setWebAppIntent(Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "background"

    const-string v4, "="

    const-string v5, "statusbar"

    const-string v6, "&"

    const-string v0, "webviewParameter"

    .line 1
    const-string v7, "exec_new_intent"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_21

    .line 2
    iget-object v10, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    if-nez v10, :cond_1d

    goto :goto_21

    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_1dc

    .line 3
    :cond_21
    :goto_21
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v10, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    .line 4
    iget-object v10, v1, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 5
    iget-object v10, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    const-string v11, "__name__"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    .line 7
    :cond_3a
    iget-object v10, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    const-string v11, "__first_web_url__"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    iget-object v11, v1, Lio/dcloud/p/d5;->r0:Ljava/lang/String;

    const-string v12, "__no__"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4e

    .line 9
    iput-object v10, v1, Lio/dcloud/p/d5;->r0:Ljava/lang/String;

    .line 11
    :cond_4e
    iget-object v10, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    const-string v11, "direct_page"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1d

    .line 14
    :try_start_5c
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v12}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_12a

    .line 17
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_6b
    .catch Ljava/net/MalformedURLException; {:try_start_5c .. :try_end_6b} :catch_1d6
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6b} :catch_1cf

    const-string v14, "__html5plusWebviewParameter"

    if-nez v15, :cond_75

    :try_start_6f
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12a

    .line 19
    :cond_75
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7c

    move-object v14, v0

    .line 24
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "://"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    .line 25
    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_127

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    .line 28
    :goto_ab
    array-length v0, v10

    if-ge v12, v0, :cond_122

    .line 29
    aget-object v0, v10, v12

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    aget-object v15, v0, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c5

    .line 31
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_c2
    .catch Ljava/net/MalformedURLException; {:try_start_6f .. :try_end_c2} :catch_1d6
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_c2} :catch_1cf

    const/16 v17, 0x0

    goto :goto_11e

    :cond_c5
    if-eqz v13, :cond_e4

    .line 35
    :try_start_c7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cc} :catch_e0

    const/16 v17, 0x0

    :try_start_ce
    iget-object v9, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "?"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    const/4 v13, 0x0

    goto :goto_fc

    :catch_e0
    move-exception v0

    const/16 v17, 0x0

    goto :goto_11b

    :cond_e4
    const/16 v17, 0x0

    .line 37
    array-length v9, v10

    if-ge v12, v9, :cond_fc

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    .line 40
    :cond_fc
    :goto_fc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v0, v17

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_119} :catch_11a

    goto :goto_11e

    :catch_11a
    move-exception v0

    .line 42
    :goto_11b
    :try_start_11b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11e
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_ab

    :cond_122
    const/16 v17, 0x0

    move-object/from16 v14, v16

    goto :goto_12f

    :cond_127
    const/16 v17, 0x0

    goto :goto_12e

    :cond_12a
    const/16 v17, 0x0

    .line 48
    iput-object v10, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    :goto_12e
    const/4 v14, 0x0

    .line 50
    :goto_12f
    iget-object v0, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    iput-object v0, v1, Lio/dcloud/p/d5;->o1:Ljava/lang/String;

    .line 51
    iget-object v4, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    invoke-virtual {v4, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v0, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/dcloud/p/d5;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;
    :try_end_140
    .catch Ljava/net/MalformedURLException; {:try_start_11b .. :try_end_140} :catch_1cd
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_140} :catch_1cb

    if-nez v0, :cond_157

    .line 55
    :try_start_142
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    goto :goto_157

    .line 58
    :cond_150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    .line 61
    :cond_157
    :goto_157
    iget-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    const-string v4, "webviewid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v4, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lio/dcloud/p/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 64
    iget-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    const-string v4, "launch_path"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_188

    iget-object v0, v1, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    :cond_188
    iput-object v0, v1, Lio/dcloud/p/d5;->m0:Ljava/lang/String;

    .line 67
    :cond_18a
    iget-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 68
    iget-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1b2

    .line 69
    const-string v4, "immersed"

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1b2

    .line 71
    iput-boolean v8, v1, Lio/dcloud/p/d5;->c1:Z

    .line 72
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b2

    .line 73
    iget-object v4, v1, Lio/dcloud/p/d5;->X0:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/p/d5;->e1:Ljava/lang/String;

    .line 78
    :cond_1b2
    iget-object v0, v1, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 79
    iget-object v0, v1, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    const-string v3, "titleNView"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/p/d5;->J0:Lorg/json/JSONObject;

    goto :goto_1dc

    .line 81
    :cond_1c2
    invoke-direct {v1}, Lio/dcloud/p/d5;->e()V
    :try_end_1c5
    .catch Lorg/json/JSONException; {:try_start_142 .. :try_end_1c5} :catch_1c6
    .catch Ljava/net/MalformedURLException; {:try_start_142 .. :try_end_1c5} :catch_1cd
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_1c5} :catch_1cb

    goto :goto_1dc

    :catch_1c6
    move-exception v0

    .line 84
    :try_start_1c7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1ca
    .catch Ljava/net/MalformedURLException; {:try_start_1c7 .. :try_end_1ca} :catch_1cd
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1ca} :catch_1cb

    goto :goto_1dc

    :catch_1cb
    move-exception v0

    goto :goto_1d2

    :catch_1cd
    move-exception v0

    goto :goto_1d9

    :catch_1cf
    move-exception v0

    const/16 v17, 0x0

    .line 89
    :goto_1d2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1dc

    :catch_1d6
    move-exception v0

    const/16 v17, 0x0

    .line 90
    :goto_1d9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :goto_1dc
    invoke-virtual {v1}, Lio/dcloud/p/d5;->q()Z

    move-result v0

    if-eqz v0, :cond_204

    iget-object v0, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_204

    if-nez v7, :cond_204

    const-string v0, "just_download"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_204

    iget-boolean v0, v1, Lio/dcloud/p/d5;->D1:Z

    if-eqz v0, :cond_204

    .line 99
    iget-object v0, v1, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v4, 0x32

    invoke-virtual {v0, v2, v4, v1}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    iput-boolean v3, v1, Lio/dcloud/p/d5;->D1:Z

    :cond_204
    return-void
.end method

.method public shortcutQuit()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->z1:Ljava/lang/String;

    return-object v0
.end method

.method public showSplash()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    if-eqz v1, :cond_13

    .line 3
    move-object v1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    .line 4
    iget-object v2, p0, Lio/dcloud/p/d5;->O0:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IOnCreateSplashView;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public startFromShortCut()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/d5;->y1:Z

    return v0
.end method

.method t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lio/dcloud/common/core/permission/PermissionControler;->registerPermission(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->b(Z)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v1}, Lio/dcloud/p/d5;->setStatus(B)V

    .line 10
    iget-object v1, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/dcloud/common/util/AppStatus;->setAppStatus(Ljava/lang/String;I)V

    .line 11
    iget-object v1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v3}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " will active change to unrunning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appmgr"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->sUsePermissionWebviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 6
    iget-object p1, p0, Lio/dcloud/p/d5;->C0:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method public updateDirectPage(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object p1, p0, Lio/dcloud/p/d5;->n1:Ljava/lang/String;

    .line 4
    :cond_8
    invoke-virtual {p0, p1}, Lio/dcloud/p/d5;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 6
    iput-object p1, p0, Lio/dcloud/p/d5;->K0:Lorg/json/JSONObject;

    .line 8
    invoke-direct {p0}, Lio/dcloud/p/d5;->e()V

    .line 10
    iget-object p1, p0, Lio/dcloud/p/d5;->y:Lio/dcloud/p/r;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, p0}, Lio/dcloud/p/r;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public v()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "appid"

    iget-object v2, p0, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "version"

    iget-object v2, p0, Lio/dcloud/p/d5;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "name"

    iget-object v2, p0, Lio/dcloud/p/d5;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "versionCode"

    iget-object v2, p0, Lio/dcloud/p/d5;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "description"

    iget-object v2, p0, Lio/dcloud/p/d5;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "author"

    iget-object v2, p0, Lio/dcloud/p/d5;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "email"

    iget-object v2, p0, Lio/dcloud/p/d5;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "license"

    iget-object v2, p0, Lio/dcloud/p/d5;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "licensehref"

    iget-object v2, p0, Lio/dcloud/p/d5;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "features"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lio/dcloud/p/d5;->B0:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/p/d5;->b(Z)V

    return-void
.end method

###### Class io.dcloud.p.d5.a (io.dcloud.p.d5$a)
.class Lio/dcloud/p/d5$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d5;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/d5;


# direct methods
.method constructor <init>(Lio/dcloud/p/d5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5$a;->a:Lio/dcloud/p/d5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wap2app_temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.p.d5.b (io.dcloud.p.d5$b)
.class Lio/dcloud/p/d5$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d5;->i()Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/d5;


# direct methods
.method constructor <init>(Lio/dcloud/p/d5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5$b;->a:Lio/dcloud/p/d5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wap2app_temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wap2app__template.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.p.d5.c (io.dcloud.p.d5$c)
.class Lio/dcloud/p/d5$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d5;->a(Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic b:Lio/dcloud/p/d5;


# direct methods
.method constructor <init>(Lio/dcloud/p/d5;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    iput-object p2, p0, Lio/dcloud/p/d5$c;->a:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    iget-object v1, v1, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->APP_WWW_FS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    sget-object v3, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    iget-object v5, v5, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " copy resoure begin!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    .line 6
    iget-object v3, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    invoke-static {v3}, Lio/dcloud/p/d5;->a(Lio/dcloud/p/d5;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/io/DHFile;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    sget-object v5, Lio/dcloud/p/d5;->H1:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    iget-object v7, v7, Lio/dcloud/p/e5;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " copy resoure end!!! useTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/dcloud/p/d5;->a(Lio/dcloud/p/d5;B)B

    .line 10
    iget-object v1, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    invoke-virtual {v1, v0}, Lio/dcloud/p/d5;->setAppDataPath(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/p/d5$c;->b:Lio/dcloud/p/d5;

    iget-object v1, v0, Lio/dcloud/p/d5;->t:Lio/dcloud/common/util/BaseInfo$BaseAppInfo;

    if-eqz v1, :cond_83

    .line 12
    invoke-virtual {v0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->saveToBundleData(Landroid/content/Context;)V

    .line 14
    :cond_83
    new-instance v0, Lio/dcloud/p/d5$c$a;

    invoke-direct {v0, p0}, Lio/dcloud/p/d5$c$a;-><init>(Lio/dcloud/p/d5$c;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.p.d5.c.a (io.dcloud.p.d5$c$a)
.class Lio/dcloud/p/d5$c$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d5$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/d5$c;


# direct methods
.method constructor <init>(Lio/dcloud/p/d5$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5$c$a;->a:Lio/dcloud/p/d5$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/p/d5$c$a;->a:Lio/dcloud/p/d5$c;

    iget-object p1, p1, Lio/dcloud/p/d5$c;->a:Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.p.d5.d (io.dcloud.p.d5$d)
.class Lio/dcloud/p/d5$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d5;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/p/d5;


# direct methods
.method constructor <init>(Lio/dcloud/p/d5;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5$d;->b:Lio/dcloud/p/d5;

    iput-object p2, p0, Lio/dcloud/p/d5$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/p/d5$d;->b:Lio/dcloud/p/d5;

    invoke-virtual {v0}, Lio/dcloud/p/e5;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/d5$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/p/d5$d;->b:Lio/dcloud/p/d5;

    iget-object v2, v2, Lio/dcloud/p/d5;->N0:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v2, v4}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.p.d5.e (io.dcloud.p.d5$e)
.class Lio/dcloud/p/d5$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/d5;->deleteAppTemp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/d5;


# direct methods
.method constructor <init>(Lio/dcloud/p/d5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/d5$e;->a:Lio/dcloud/p/d5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/p/d5$e;->a:Lio/dcloud/p/d5;

    invoke-virtual {v0}, Lio/dcloud/p/d5;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.p.d5.f (io.dcloud.p.d5$f)
.class abstract synthetic Lio/dcloud/p/d5$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/d5;
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
    invoke-static {}, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->values()[Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/p/d5$f;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideUrlJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->OverrideResourceJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SitemapJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->URDJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/p/d5$f;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method
