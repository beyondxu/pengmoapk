###### Class io.dcloud.p.u (io.dcloud.p.u)
.class public Lio/dcloud/p/u;
.super Lio/dcloud/p/k4;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private E:Z

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Z

.field I:Lio/dcloud/p/j4;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Z

.field N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

.field O:J

.field private P:J

.field Q:Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

.field private R:Z

.field private S:Z


# direct methods
.method public static synthetic $r8$lambda$IEeB4smmtS4FCSZuP13rXtR0dMg(Lio/dcloud/p/u;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/dcloud/p/u;->c(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vq6Ac58fvsVG2bmPVslL3tZJDro(Lio/dcloud/p/u;Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/p/u;->a(Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/p/k4;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/p/u;->E:Z

    .line 3
    iput p1, p0, Lio/dcloud/p/u;->F:I

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/p/u;->G:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lio/dcloud/p/u;->H:Z

    .line 8
    iput-object v0, p0, Lio/dcloud/p/u;->J:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lio/dcloud/p/u;->K:Ljava/lang/String;

    .line 10
    iput-boolean p1, p0, Lio/dcloud/p/u;->L:Z

    .line 12
    iput-boolean p1, p0, Lio/dcloud/p/u;->M:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lio/dcloud/p/u;->O:J

    .line 17
    iput-wide v0, p0, Lio/dcloud/p/u;->P:J

    .line 19
    iput-boolean p1, p0, Lio/dcloud/p/u;->R:Z

    .line 20
    iput-boolean p1, p0, Lio/dcloud/p/u;->S:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/u;I)I
    .registers 2

    .line 6
    iput p1, p0, Lio/dcloud/p/u;->F:I

    return p1
.end method

.method private synthetic a(Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 177
    iget-object p3, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-nez p1, :cond_2a

    .line 179
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 181
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p4, p4, -0x401

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    invoke-static {p2}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_27

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1c

    if-lt p2, p4, :cond_27

    const/4 p2, 0x0

    .line 183
    invoke-static {p3, p2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 184
    :cond_27
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    :cond_2a
    invoke-virtual {p0}, Lio/dcloud/p/u;->w()V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/p/u;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5
    iput-object p1, p0, Lio/dcloud/p/u;->J:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/p/u;ILjava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/k4;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/u;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/p/i4;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/u;Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/p/k4;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V
    .registers 4

    .line 198
    new-instance v0, Lio/dcloud/p/u$e;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/p/u$e;-><init>(Lio/dcloud/p/u;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V

    iput-object v0, p0, Lio/dcloud/p/u;->I:Lio/dcloud/p/j4;

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/u;)Z
    .registers 1

    .line 4
    iget-boolean p0, p0, Lio/dcloud/p/u;->H:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/p/u;Z)Z
    .registers 2

    .line 3
    iput-boolean p1, p0, Lio/dcloud/p/u;->M:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/p/u;)Ljava/lang/String;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/dcloud/p/u;->J:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/p/u;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/p/u;->K:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/dcloud/p/u;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/p/b5;->a(Z)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/p/u;)I
    .registers 1

    .line 3
    iget p0, p0, Lio/dcloud/p/u;->F:I

    return p0
.end method

.method static synthetic c(Lio/dcloud/p/u;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/u;->G:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic c(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .line 7
    iget-object v0, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    instance-of v1, v0, Lio/dcloud/p/j4;

    if-eqz v1, :cond_b

    .line 8
    check-cast v0, Lio/dcloud/p/j4;

    invoke-interface {v0, p1, p2}, Lio/dcloud/p/j4;->redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_b
    return-void
.end method

.method static synthetic c(Lio/dcloud/p/u;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/p/b5;->a(Z)V

    return-void
.end method

.method static synthetic d(Lio/dcloud/p/u;)Landroid/app/Activity;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/dcloud/p/i4;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/p/u;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/p/u;->H:Z

    return p1
.end method

.method static synthetic e(Lio/dcloud/p/u;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/i4;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/p/u;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/p/u;->R:Z

    return p1
.end method

.method static synthetic f(Lio/dcloud/p/u;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/p/u;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/p/u;->E:Z

    return p1
.end method

.method static synthetic g(Lio/dcloud/p/u;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/i4;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/p/u;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/p/u;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/u;->u()V

    return-void
.end method

.method static synthetic j(Lio/dcloud/p/u;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/p/u;->S:Z

    return p0
.end method

.method static synthetic k(Lio/dcloud/p/u;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/p/u;->P:J

    return-wide v0
.end method

.method static synthetic l(Lio/dcloud/p/u;)Landroid/app/Activity;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private u()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->onFinishShow()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;
    .registers 6

    .line 136
    iget-boolean v0, p0, Lio/dcloud/p/u;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 137
    iget-boolean v0, p0, Lio/dcloud/p/u;->M:Z

    if-nez v0, :cond_a

    return-object v1

    .line 139
    :cond_a
    iget-object v0, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    if-nez v0, :cond_18

    .line 140
    new-instance v0, Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    .line 142
    invoke-virtual {v0, p0}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->showAd(Lio/dcloud/p/u;)V

    .line 144
    :cond_18
    iget-boolean p1, p0, Lio/dcloud/p/u;->H:Z

    if-eqz p1, :cond_27

    .line 145
    iget-object p1, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->getBottomIcon()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_27
    iget-object p1, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    iget-wide v0, p0, Lio/dcloud/p/u;->O:J

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->setPullTime(J)V

    .line 148
    iget-object p1, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->setAppid(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p1, p3}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->setCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 150
    iget-object p1, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    return-object p1

    :cond_3b
    return-object v1
.end method

.method protected a(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 8
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/p/y4;->a(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 5

    .line 151
    invoke-virtual {p0}, Lio/dcloud/p/u;->v()V

    .line 152
    iget-boolean v0, p0, Lio/dcloud/p/u;->E:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lio/dcloud/p/u;->M:Z

    if-eqz v0, :cond_3e

    .line 153
    new-instance v0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1}, Lio/dcloud/p/u$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/u;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-virtual {p0, p1, p2, v0}, Lio/dcloud/p/u;->a(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;

    .line 166
    iget-object p2, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-nez p2, :cond_3d

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 169
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 170
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 171
    invoke-static {p1}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3a

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_3a

    const/4 p1, 0x1

    .line 172
    invoke-static {p3, p1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 173
    :cond_3a
    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3d
    return-void

    .line 176
    :cond_3e
    invoke-virtual {p0}, Lio/dcloud/p/u;->w()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .line 131
    iget-object p1, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz p1, :cond_1b

    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/p/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_22

    .line 134
    :cond_1b
    iget-object p1, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    if-eqz p1, :cond_22

    .line 135
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/GGSplashView;->onWillCloseSplash()V

    :cond_22
    :goto_22
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 3

    .line 94
    new-instance v0, Lio/dcloud/p/u$b;

    invoke-direct {v0, p0}, Lio/dcloud/p/u$b;-><init>(Lio/dcloud/p/u;)V

    invoke-virtual {p0, v0}, Lio/dcloud/p/b5;->a(Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;)V

    .line 130
    invoke-super {p0, p1}, Lio/dcloud/p/k4;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/dcloud/p/u;->N:Lio/dcloud/feature/gg/dcloud/GGSplashView;

    .line 10
    iput-boolean p3, p0, Lio/dcloud/p/u;->L:Z

    .line 11
    new-instance v0, Lio/dcloud/p/u$a;

    invoke-direct {v0, p0, p3}, Lio/dcloud/p/u$a;-><init>(Lio/dcloud/p/u;Z)V

    invoke-virtual {p0, v0}, Lio/dcloud/p/i4;->a(Lio/dcloud/p/b0$a;)V

    .line 90
    invoke-direct {p0, p2, p3}, Lio/dcloud/p/u;->a(Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lio/dcloud/p/u;->O:J

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lio/dcloud/p/u;->E:Z

    iput-boolean p2, p0, Lio/dcloud/p/u;->M:Z

    .line 93
    iget-object p2, p0, Lio/dcloud/p/u;->I:Lio/dcloud/p/j4;

    invoke-super {p0, p1, p2}, Lio/dcloud/p/k4;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/p/w2;)V

    return-void
.end method

.method public a(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    .line 187
    :try_start_2
    iget-object v2, p0, Lio/dcloud/p/u;->K:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_b

    :catch_9
    nop

    move-wide v2, v0

    :goto_b
    cmp-long v4, v2, v0

    if-gtz v4, :cond_12

    const-wide/32 v2, 0x2bf20

    :cond_12
    add-long/2addr p1, v2

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_31

    .line 195
    iget-object p1, p0, Lio/dcloud/p/u;->J:Ljava/lang/String;

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_28

    return p2

    .line 197
    :cond_28
    iget-object p1, p0, Lio/dcloud/p/u;->G:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    return p2

    :cond_31
    return v2
.end method

.method protected b(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .line 4
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/u$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/p/u$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/p/u;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c()I
    .registers 2

    .line 5
    iget-boolean v0, p0, Lio/dcloud/p/u;->L:Z

    if-nez v0, :cond_9

    .line 6
    invoke-super {p0}, Lio/dcloud/p/k4;->c()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x3

    return v0
.end method

.method protected c(Ljava/util/List;)V
    .registers 2

    .line 4
    invoke-super {p0, p1}, Lio/dcloud/p/y4;->c(Ljava/util/List;)V

    return-void
.end method

.method public v()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/u;->R:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/p/u;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {}, Lio/dcloud/feature/gg/AolSplashUtil;->isShowingInterstitialAd()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    invoke-direct {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;-><init>()V

    iget-object v1, p0, Lio/dcloud/p/u;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->adpid(Ljava/lang/String;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    .line 4
    new-instance v1, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lio/dcloud/p/u;->Q:Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

    .line 5
    new-instance v2, Lio/dcloud/p/u$c;

    invoke-direct {v2, p0}, Lio/dcloud/p/u$c;-><init>(Lio/dcloud/p/u;)V

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;->setInterstitialAOLListener(Lio/dcloud/sdk/core/v3/inters/DCIntAOLListener;)V

    .line 36
    iget-object v1, p0, Lio/dcloud/p/u;->Q:Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

    new-instance v2, Lio/dcloud/p/u$d;

    invoke-direct {v2, p0}, Lio/dcloud/p/u$d;-><init>(Lio/dcloud/p/u;)V

    invoke-virtual {v1, v0, v2}, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;->load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v3/inters/DCIntAOLLoadListener;)V

    :cond_3d
    return-void
.end method

.method public w()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/u;->R:Z

    if-nez v0, :cond_16

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lio/dcloud/p/u;->F:I

    if-gtz v2, :cond_e

    const/16 v2, 0x9c4

    :cond_e
    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/dcloud/p/u;->P:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/p/u;->S:Z

    return-void

    .line 4
    :cond_16
    iget-object v0, p0, Lio/dcloud/p/u;->Q:Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;->isValid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5
    iget-object v0, p0, Lio/dcloud/p/u;->Q:Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;->show(Landroid/app/Activity;)V

    :cond_29
    return-void
.end method

###### Class io.dcloud.p.u.a (io.dcloud.p.u$a)
.class Lio/dcloud/p/u$a;
.super Lio/dcloud/p/k4$b;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/u;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lio/dcloud/p/u;


# direct methods
.method constructor <init>(Lio/dcloud/p/u;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    iput-boolean p2, p0, Lio/dcloud/p/u$a;->d:Z

    invoke-direct {p0, p1}, Lio/dcloud/p/k4$b;-><init>(Lio/dcloud/p/k4;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 3

    .line 62
    invoke-super {p0, p1, p2}, Lio/dcloud/p/k4$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 6

    if-eqz p1, :cond_2d

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    .line 2
    :goto_9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 5
    const-string v2, "action"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string v3, "redPackage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 7
    iget-object v2, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    invoke-static {v2, v1}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;Lorg/json/JSONObject;)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2d
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, ""

    if-eqz p1, :cond_d2

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_d2

    .line 12
    :cond_c
    iget-object v1, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    invoke-virtual {v1}, Lio/dcloud/p/k4;->t()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    iget-object v2, v2, Lio/dcloud/p/u;->I:Lio/dcloud/p/j4;

    if-eqz v2, :cond_44

    const/16 v3, -0x1388

    .line 18
    :try_start_1a
    invoke-interface {v2, p1}, Lio/dcloud/p/j4;->a(Lorg/json/JSONObject;)V

    .line 19
    iget-object v2, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    iget-object v2, v2, Lio/dcloud/p/u;->I:Lio/dcloud/p/j4;

    invoke-interface {v2}, Lio/dcloud/p/j4;->b()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    iget-object v2, v2, Lio/dcloud/p/u;->I:Lio/dcloud/p/j4;

    invoke-interface {v2}, Lio/dcloud/p/j4;->a()Z

    move-result v2

    if-nez v2, :cond_34

    .line 21
    invoke-super {p0, v3, v0}, Lio/dcloud/p/k4$b;->a(ILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_33

    return-void

    :catch_33
    nop

    .line 27
    :cond_34
    iget-object v2, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    invoke-static {v2}, Lio/dcloud/p/u;->f(Lio/dcloud/p/u;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/p/m;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 28
    invoke-super {p0, v3, v0}, Lio/dcloud/p/k4$b;->a(ILjava/lang/String;)V

    return-void

    :cond_44
    if-eqz v1, :cond_64

    .line 34
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    invoke-direct {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;-><init>()V

    invoke-virtual {v1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->height(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->width(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    invoke-static {v1, v0}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    .line 38
    :cond_64
    iget-boolean v0, p0, Lio/dcloud/p/u$a;->d:Z

    if-eqz v0, :cond_ce

    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/e;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "hw"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 39
    const-string v0, "cfgs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_ce

    .line 41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_ce

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 42
    :goto_8d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_af

    .line 43
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_ac

    .line 44
    const-string v7, "p"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 48
    :cond_af
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ce

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b9
    if-ge v4, v1, :cond_cb

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 50
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_b9

    .line 53
    :cond_cb
    :try_start_cb
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_cb .. :try_end_ce} :catch_ce

    .line 60
    :catch_ce
    :cond_ce
    invoke-super {p0, p1}, Lio/dcloud/p/k4$b;->a(Lorg/json/JSONObject;)V

    return-void

    .line 61
    :cond_d2
    :goto_d2
    iget-object p1, p0, Lio/dcloud/p/u$a;->e:Lio/dcloud/p/u;

    const/16 v0, -0x1389

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.u.b (io.dcloud.p.u$b)
.class Lio/dcloud/p/u$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/u;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/u;


# direct methods
.method constructor <init>(Lio/dcloud/p/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/u$b;->a:Lio/dcloud/p/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 1

    return-void
.end method

.method public onClose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$b;->a:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->i(Lio/dcloud/p/u;)V

    return-void
.end method

.method public onPaidGet(JLjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/p/u$b;->a:Lio/dcloud/p/u;

    invoke-static {p1}, Lio/dcloud/p/u;->i(Lio/dcloud/p/u;)V

    return-void
.end method

.method public onSkip()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$b;->a:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->i(Lio/dcloud/p/u;)V

    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$b;->a:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->i(Lio/dcloud/p/u;)V

    return-void
.end method

###### Class io.dcloud.p.u.c (io.dcloud.p.u$c)
.class Lio/dcloud/p/u$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/v3/inters/DCIntAOLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/u;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/u;


# direct methods
.method constructor <init>(Lio/dcloud/p/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/u$c;->a:Lio/dcloud/p/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 1

    return-void
.end method

.method public onClose()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lio/dcloud/feature/gg/AolSplashUtil;->setShowInterstitialAd(Z)V

    return-void
.end method

.method public onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lio/dcloud/feature/gg/AolSplashUtil;->setShowInterstitialAd(Z)V

    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .registers 3

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lio/dcloud/feature/gg/AolSplashUtil;->setShowInterstitialAd(Z)V

    return-void
.end method

.method public onSkip()V
    .registers 1

    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.p.u.d (io.dcloud.p.u$d)
.class Lio/dcloud/p/u$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/v3/inters/DCIntAOLLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/u;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/u;


# direct methods
.method constructor <init>(Lio/dcloud/p/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/p/u;->e(Lio/dcloud/p/u;Z)Z

    return-void
.end method

.method public onInterstitialAOLLoad()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/p/u;->e(Lio/dcloud/p/u;Z)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->j(Lio/dcloud/p/u;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->k(Lio/dcloud/p/u;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_33

    iget-object v0, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->k(Lio/dcloud/p/u;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_33

    .line 3
    iget-object v0, p0, Lio/dcloud/p/u$d;->a:Lio/dcloud/p/u;

    iget-object v1, v0, Lio/dcloud/p/u;->Q:Lio/dcloud/sdk/core/v3/inters/DCIntAOL;

    invoke-static {v0}, Lio/dcloud/p/u;->l(Lio/dcloud/p/u;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/sdk/core/v3/inters/DCIntAOL;->show(Landroid/app/Activity;)V

    :cond_33
    return-void
.end method

###### Class io.dcloud.p.u.e (io.dcloud.p.u$e)
.class Lio/dcloud/p/u$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/j4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/u;->a(Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

.field final synthetic b:Z

.field final synthetic c:Lio/dcloud/p/u;


# direct methods
.method constructor <init>(Lio/dcloud/p/u;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    iput-object p2, p0, Lio/dcloud/p/u$e;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    iput-boolean p3, p0, Lio/dcloud/p/u$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)I
    .registers 4

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNavigationBarShowing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 18
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    :cond_23
    return v0
.end method

.method private a(Landroid/content/Context;)I
    .registers 2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "cpadpid"

    if-eqz p1, :cond_5d

    .line 1
    :try_start_4
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const-string v2, "fs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    const/4 v3, 0x1

    :cond_11
    invoke-static {v1, v3}, Lio/dcloud/p/u;->d(Lio/dcloud/p/u;Z)Z

    .line 2
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const-string v2, "fr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const-string v2, "frt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/p/u;->b(Lio/dcloud/p/u;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 5
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/p/u;->c(Lio/dcloud/p/u;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const-string v1, "fwt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;I)I

    .line 7
    iget-object p1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {p1}, Lio/dcloud/p/u;->c(Lio/dcloud/p/u;)I

    move-result v0

    if-gtz v0, :cond_4f

    const/16 v0, 0x9c4

    goto :goto_55

    :cond_4f
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->c(Lio/dcloud/p/u;)I

    move-result v0

    :goto_55
    invoke-static {p1, v0}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;I)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5d
    return-void
.end method

.method public a()Z
    .registers 3

    .line 20
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->h(Lio/dcloud/p/u;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lio/dcloud/p/u$e;->b:Z

    if-eqz v0, :cond_24

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->b(Lio/dcloud/p/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lio/dcloud/sdk/core/entry/SplashAOLConfig;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v0}, Lio/dcloud/p/u;->d(Lio/dcloud/p/u;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/p/u$e;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v1}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v1}, Lio/dcloud/p/u;->e(Lio/dcloud/p/u;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/p/u$e;->a(Landroid/app/Activity;)I

    move-result v1

    goto :goto_2b

    .line 5
    :cond_1d
    iget-object v1, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v1}, Lio/dcloud/p/u;->g(Lio/dcloud/p/u;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/p/u$e;->a(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x11

    .line 6
    :goto_2b
    new-instance v2, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    invoke-direct {v2}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->width(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->height(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->build()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object v0

    return-object v0
.end method

.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/p/u;->f(Lio/dcloud/p/u;Z)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;Z)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v0, v1}, Lio/dcloud/p/u;->c(Lio/dcloud/p/u;Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/p/u$e;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    if-eqz v0, :cond_18

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_18
    return-void
.end method

.method public onLoaded()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/p/u;->f(Lio/dcloud/p/u;Z)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    invoke-static {v0, v1}, Lio/dcloud/p/u;->a(Lio/dcloud/p/u;Z)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/p/u$e;->c:Lio/dcloud/p/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/p/u;->b(Lio/dcloud/p/u;Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/p/u$e;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    if-eqz v0, :cond_18

    .line 5
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;->onSplashAOLLoad()V

    :cond_18
    return-void
.end method

.method public redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/u$e;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;->redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.p.u$$ExternalSyntheticLambda0 (io.dcloud.p.u$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/u$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/u;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/u;Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/u;

    iput-object p2, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/u;

    iget-object v1, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1, p2}, Lio/dcloud/p/u;->$r8$lambda$vq6Ac58fvsVG2bmPVslL3tZJDro(Lio/dcloud/p/u;Landroid/view/ViewGroup;Landroid/app/Activity;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.p.u$$ExternalSyntheticLambda1 (io.dcloud.p.u$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/p/u$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/u;

.field public final synthetic f$1:Landroid/widget/RelativeLayout;

.field public final synthetic f$2:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/u;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/u;

    iput-object p2, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda1;->f$1:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda1;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/u;

    iget-object v1, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda1;->f$1:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/p/u$$ExternalSyntheticLambda1;->f$2:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, v2}, Lio/dcloud/p/u;->$r8$lambda$IEeB4smmtS4FCSZuP13rXtR0dMg(Lio/dcloud/p/u;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method
