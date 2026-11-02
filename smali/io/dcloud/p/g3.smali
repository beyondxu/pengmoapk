###### Class io.dcloud.p.g3 (io.dcloud.p.g3)
.class public Lio/dcloud/p/g3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/u1;
.implements Lio/dcloud/p/j;
.implements Lio/dcloud/p/y;


# instance fields
.field private a:Lio/dcloud/p/z4;

.field private b:Z

.field private c:Z

.field private d:Lio/dcloud/p/x;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lio/dcloud/p/j;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field protected final n:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

.field protected final o:Landroid/app/Activity;

.field private final p:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/g3;->b:Z

    .line 3
    iput-boolean v0, p0, Lio/dcloud/p/g3;->c:Z

    .line 5
    iput-boolean v0, p0, Lio/dcloud/p/g3;->e:Z

    .line 6
    iput-boolean v0, p0, Lio/dcloud/p/g3;->f:Z

    .line 11
    iput-boolean v0, p0, Lio/dcloud/p/g3;->j:Z

    .line 12
    iput-boolean v0, p0, Lio/dcloud/p/g3;->k:Z

    .line 14
    iput-boolean v0, p0, Lio/dcloud/p/g3;->l:Z

    .line 15
    iput-boolean v0, p0, Lio/dcloud/p/g3;->m:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lio/dcloud/p/g3;->n:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    .line 24
    iput-object p2, p0, Lio/dcloud/p/g3;->o:Landroid/app/Activity;

    return-void
.end method

.method private m()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/g3;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7f

    iget-boolean v2, p0, Lio/dcloud/p/g3;->b:Z

    if-eqz v2, :cond_7f

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/g3;->l()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3
    iget-object v0, p0, Lio/dcloud/p/g3;->n:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v0

    iget-object v2, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v2}, Lio/dcloud/p/z4;->e()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v3}, Lio/dcloud/p/z4;->e()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/List;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Lio/dcloud/p/m;->a(I[Ljava/util/List;)Lio/dcloud/p/m$a;

    move-result-object v0

    if-nez v0, :cond_33

    .line 5
    invoke-virtual {p0}, Lio/dcloud/p/g3;->n()V

    return-void

    .line 8
    :cond_33
    iput-boolean v1, p0, Lio/dcloud/p/g3;->k:Z

    .line 9
    iget-object v1, v0, Lio/dcloud/p/m$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 10
    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 11
    iget v3, v0, Lio/dcloud/p/m$a;->b:I

    iget v4, v0, Lio/dcloud/p/m$a;->c:I

    invoke-virtual {v2, v3, v4}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingSuccess(II)V

    goto :goto_3b

    .line 14
    :cond_55
    iget-object v1, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    iget-object v0, v0, Lio/dcloud/p/m$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7b

    .line 17
    :cond_5d
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/x;->a()I

    move-result v0

    iget-object v2, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v2}, Lio/dcloud/p/z4;->a()I

    move-result v2

    if-lt v0, v2, :cond_6e

    .line 18
    iput-boolean v1, p0, Lio/dcloud/p/g3;->j:Z

    goto :goto_7b

    .line 21
    :cond_6e
    iput-boolean v1, p0, Lio/dcloud/p/g3;->k:Z

    .line 22
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    iget-object v1, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v1}, Lio/dcloud/p/z4;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/x;->b(I)V

    .line 25
    :goto_7b
    invoke-virtual {p0}, Lio/dcloud/p/g3;->o()V

    return-void

    :cond_7f
    if-eqz v0, :cond_96

    .line 26
    iget-boolean v0, p0, Lio/dcloud/p/g3;->c:Z

    if-eqz v0, :cond_96

    .line 27
    iput-boolean v1, p0, Lio/dcloud/p/g3;->j:Z

    .line 28
    iget-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v1}, Lio/dcloud/p/z4;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {p0}, Lio/dcloud/p/g3;->o()V

    return-void

    .line 30
    :cond_96
    iget-boolean v0, p0, Lio/dcloud/p/g3;->f:Z

    if-eqz v0, :cond_af

    iget-boolean v2, p0, Lio/dcloud/p/g3;->b:Z

    if-eqz v2, :cond_af

    .line 31
    iput-boolean v1, p0, Lio/dcloud/p/g3;->k:Z

    .line 32
    iget-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v1}, Lio/dcloud/p/z4;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {p0}, Lio/dcloud/p/g3;->o()V

    return-void

    :cond_af
    if-eqz v0, :cond_b8

    .line 34
    iget-boolean v0, p0, Lio/dcloud/p/g3;->c:Z

    if-eqz v0, :cond_b8

    .line 35
    invoke-virtual {p0}, Lio/dcloud/p/g3;->n()V

    :cond_b8
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 5
    invoke-virtual {p0}, Lio/dcloud/p/g3;->l()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_28

    .line 6
    iget-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 7
    iget-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    invoke-static {v0}, Lio/dcloud/p/m;->a(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v0

    return v0

    :cond_27
    return v1

    .line 12
    :cond_28
    iget-boolean v0, p0, Lio/dcloud/p/g3;->j:Z

    if-eqz v0, :cond_33

    .line 13
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/x;->a()I

    move-result v0

    return v0

    .line 14
    :cond_33
    iget-boolean v0, p0, Lio/dcloud/p/g3;->k:Z

    if-eqz v0, :cond_3e

    .line 15
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->a()I

    move-result v0

    return v0

    :cond_3e
    return v1
.end method

.method public a(I)V
    .registers 3

    .line 16
    iput p1, p0, Lio/dcloud/p/g3;->i:I

    .line 17
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v0, p1}, Lio/dcloud/p/z4;->a(I)V

    .line 19
    :cond_9
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    if-eqz v0, :cond_10

    .line 20
    invoke-virtual {v0, p1}, Lio/dcloud/p/z4;->a(I)V

    :cond_10
    return-void
.end method

.method public a(Lio/dcloud/p/j;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lio/dcloud/p/g3;->h:Lio/dcloud/p/j;

    return-void
.end method

.method public a(Lio/dcloud/p/u1;)V
    .registers 4

    .line 25
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 26
    iput-boolean v1, p0, Lio/dcloud/p/g3;->b:Z

    goto :goto_e

    .line 27
    :cond_8
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-ne p1, v0, :cond_e

    .line 28
    iput-boolean v1, p0, Lio/dcloud/p/g3;->e:Z

    .line 30
    :cond_e
    :goto_e
    invoke-direct {p0}, Lio/dcloud/p/g3;->m()V

    return-void
.end method

.method public a(Lio/dcloud/p/v4;)V
    .registers 2

    return-void
.end method

.method public a(Lio/dcloud/p/x;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    return-void
.end method

.method public a(Lio/dcloud/p/z4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 21
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0, p1}, Lio/dcloud/p/z4;->a(Ljava/lang/String;)V

    .line 23
    :cond_7
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual {v0, p1}, Lio/dcloud/p/z4;->a(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public b(I)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lio/dcloud/p/g3;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0, p1}, Lio/dcloud/p/x;->b(I)V

    :cond_b
    return-void
.end method

.method public b(Lio/dcloud/p/u1;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 3
    iput-boolean v1, p0, Lio/dcloud/p/g3;->c:Z

    goto :goto_e

    .line 4
    :cond_8
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-ne p1, v0, :cond_e

    .line 5
    iput-boolean v1, p0, Lio/dcloud/p/g3;->f:Z

    .line 7
    :cond_e
    :goto_e
    invoke-direct {p0}, Lio/dcloud/p/g3;->m()V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/g3;->j:Z

    return v0
.end method

.method public c()I
    .registers 2

    .line 2
    iget v0, p0, Lio/dcloud/p/g3;->g:I

    return v0
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public d()Ljava/util/List;
    .registers 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-eqz v1, :cond_10

    .line 4
    invoke-virtual {v1}, Lio/dcloud/p/z4;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_10
    iget-object v1, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    if-eqz v1, :cond_1b

    .line 6
    invoke-virtual {v1}, Lio/dcloud/p/z4;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    return-object v0
.end method

.method public d(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/p/g3;->g:I

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/g3;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, p0, Lio/dcloud/p/g3;->p:Ljava/util/List;

    return-object v0

    .line 5
    :cond_9
    iget-boolean v0, p0, Lio/dcloud/p/g3;->j:Z

    if-eqz v0, :cond_14

    .line 6
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->e()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7
    :cond_14
    iget-boolean v0, p0, Lio/dcloud/p/g3;->k:Z

    if-eqz v0, :cond_1f

    .line 8
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->e()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public f()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/g3;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/x;->f()V

    :cond_b
    return-void
.end method

.method public g()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lio/dcloud/p/z4;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/g3;->l:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/g3;->n()V

    return-void

    .line 6
    :cond_8
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {v0, p0}, Lio/dcloud/p/z4;->a(Lio/dcloud/p/j;)V

    .line 8
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->h()V

    .line 11
    :cond_14
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    if-eqz v0, :cond_20

    .line 12
    invoke-virtual {v0, p0}, Lio/dcloud/p/z4;->a(Lio/dcloud/p/j;)V

    .line 13
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->h()V

    :cond_20
    return-void
.end method

.method public i()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/g3;->j:Z

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->j()V

    .line 3
    :cond_9
    iget-boolean v0, p0, Lio/dcloud/p/g3;->k:Z

    if-eqz v0, :cond_12

    .line 4
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    invoke-virtual {v0}, Lio/dcloud/p/z4;->j()V

    :cond_12
    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/g3;->l:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lio/dcloud/p/x;->k()V

    .line 4
    :cond_a
    iget-object v0, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0}, Lio/dcloud/p/z4;->k()V

    :cond_11
    return-void
.end method

.method l()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/p/g3;->i:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method protected n()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/g3;->m:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/g3;->m:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/p/g3;->h:Lio/dcloud/p/j;

    if-eqz v0, :cond_e

    .line 4
    invoke-interface {v0, p0}, Lio/dcloud/p/j;->b(Lio/dcloud/p/u1;)V

    :cond_e
    return-void
.end method

.method protected o()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/g3;->m:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/g3;->m:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/p/g3;->h:Lio/dcloud/p/j;

    if-eqz v0, :cond_e

    .line 4
    invoke-interface {v0, p0}, Lio/dcloud/p/j;->a(Lio/dcloud/p/u1;)V

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bidding:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/p/g3;->d:Lio/dcloud/p/x;

    invoke-virtual {v1}, Lio/dcloud/p/z4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Usual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/g3;->a:Lio/dcloud/p/z4;

    .line 2
    invoke-virtual {v1}, Lio/dcloud/p/z4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
