###### Class io.dcloud.p.v4 (io.dcloud.p.v4)
.class public Lio/dcloud/p/v4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/v4$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Lorg/json/JSONObject;

.field private r:I

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/dcloud/p/v4$b;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/p/v4;->k:Z

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lio/dcloud/p/v4;->o:I

    .line 13
    iput-boolean v0, p0, Lio/dcloud/p/v4;->p:Z

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lio/dcloud/p/v4;->s:Z

    .line 26
    iput v1, p0, Lio/dcloud/p/v4;->t:I

    .line 30
    invoke-static {p1}, Lio/dcloud/p/v4$b;->a(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->a:I

    .line 31
    invoke-static {p1}, Lio/dcloud/p/v4$b;->b(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->b:I

    .line 32
    invoke-static {p1}, Lio/dcloud/p/v4$b;->m(Lio/dcloud/p/v4$b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/p/v4;->c:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lio/dcloud/p/v4$b;->n(Lio/dcloud/p/v4$b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/p/v4;->d:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lio/dcloud/p/v4$b;->o(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->e:I

    .line 35
    invoke-static {p1}, Lio/dcloud/p/v4$b;->p(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->f:I

    .line 36
    invoke-static {p1}, Lio/dcloud/p/v4$b;->q(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->g:I

    .line 37
    invoke-static {p1}, Lio/dcloud/p/v4$b;->r(Lio/dcloud/p/v4$b;)Z

    move-result v2

    iput-boolean v2, p0, Lio/dcloud/p/v4;->h:Z

    .line 38
    invoke-static {p1}, Lio/dcloud/p/v4$b;->s(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->i:I

    .line 39
    invoke-static {p1}, Lio/dcloud/p/v4$b;->t(Lio/dcloud/p/v4$b;)I

    move-result v2

    iput v2, p0, Lio/dcloud/p/v4;->j:I

    .line 40
    iget v2, p0, Lio/dcloud/p/v4;->e:I

    if-gtz v2, :cond_54

    iget v2, p0, Lio/dcloud/p/v4;->f:I

    if-lez v2, :cond_55

    :cond_54
    const/4 v0, 0x1

    :cond_55
    iput-boolean v0, p0, Lio/dcloud/p/v4;->k:Z

    .line 41
    invoke-static {p1}, Lio/dcloud/p/v4$b;->c(Lio/dcloud/p/v4$b;)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/v4;->l:I

    .line 42
    invoke-static {p1}, Lio/dcloud/p/v4$b;->d(Lio/dcloud/p/v4$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/v4;->m:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lio/dcloud/p/v4$b;->e(Lio/dcloud/p/v4$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/v4;->n:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lio/dcloud/p/v4$b;->f(Lio/dcloud/p/v4$b;)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/v4;->o:I

    .line 45
    invoke-static {p1}, Lio/dcloud/p/v4$b;->g(Lio/dcloud/p/v4$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/p/v4;->p:Z

    .line 46
    invoke-static {p1}, Lio/dcloud/p/v4$b;->h(Lio/dcloud/p/v4$b;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/v4;->q:Lorg/json/JSONObject;

    .line 47
    invoke-static {p1}, Lio/dcloud/p/v4$b;->i(Lio/dcloud/p/v4$b;)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/v4;->r:I

    .line 48
    invoke-static {p1}, Lio/dcloud/p/v4$b;->j(Lio/dcloud/p/v4$b;)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/v4;->t:I

    .line 49
    invoke-static {p1}, Lio/dcloud/p/v4$b;->k(Lio/dcloud/p/v4$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/p/v4;->s:Z

    .line 50
    invoke-static {p1}, Lio/dcloud/p/v4$b;->l(Lio/dcloud/p/v4$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/v4;->u:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/p/v4$b;Lio/dcloud/p/v4$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/p/v4;-><init>(Lio/dcloud/p/v4$b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 2
    iget v0, p0, Lio/dcloud/p/v4;->r:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/p/v4;->b:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->j:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->g:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->l:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->t:I

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->a:I

    return v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->f:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v4;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->o:I

    return v0
.end method

.method public j()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v4;->q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v4;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v4;->u:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->b:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/v4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->i:I

    return v0
.end method

.method public q()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/v4;->e:I

    return v0
.end method

.method public r()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/v4;->p:Z

    return v0
.end method

.method public s()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/v4;->s:Z

    return v0
.end method

.method public t()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/v4;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cfg{level="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/dcloud/p/v4;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/p/v4;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/v4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', p=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/p/v4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/p/v4;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/p/v4;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/p/v4;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bdt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/dcloud/p/v4;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/p/v4;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/p/v4;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/v4;->h:Z

    return v0
.end method

###### Class io.dcloud.p.v4.a (io.dcloud.p.v4$a)
.class abstract synthetic Lio/dcloud/p/v4$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.p.v4.b (io.dcloud.p.v4$b)
.class public final Lio/dcloud/p/v4$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:Lorg/json/JSONObject;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/v4$b;->t:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->a:I

    return p0
.end method

.method static synthetic b(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->b:I

    return p0
.end method

.method static synthetic c(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->k:I

    return p0
.end method

.method static synthetic d(Lio/dcloud/p/v4$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v4$b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/p/v4$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v4$b;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->n:I

    return p0
.end method

.method static synthetic g(Lio/dcloud/p/v4$b;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/p/v4$b;->o:Z

    return p0
.end method

.method static synthetic h(Lio/dcloud/p/v4$b;)Lorg/json/JSONObject;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v4$b;->p:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->q:I

    return p0
.end method

.method static synthetic j(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->r:I

    return p0
.end method

.method static synthetic k(Lio/dcloud/p/v4$b;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/p/v4$b;->t:Z

    return p0
.end method

.method static synthetic l(Lio/dcloud/p/v4$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v4$b;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lio/dcloud/p/v4$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v4$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lio/dcloud/p/v4$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v4$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->e:I

    return p0
.end method

.method static synthetic p(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->f:I

    return p0
.end method

.method static synthetic q(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->g:I

    return p0
.end method

.method static synthetic r(Lio/dcloud/p/v4$b;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/p/v4$b;->h:Z

    return p0
.end method

.method static synthetic s(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->i:I

    return p0
.end method

.method static synthetic t(Lio/dcloud/p/v4$b;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/p/v4$b;->j:I

    return p0
.end method


# virtual methods
.method public a(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 5
    iput p1, p0, Lio/dcloud/p/v4$b;->q:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/v4$b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lio/dcloud/p/v4$b;
    .registers 2

    .line 4
    iput-object p1, p0, Lio/dcloud/p/v4$b;->p:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lio/dcloud/p/v4$b;
    .registers 2

    .line 3
    iput-boolean p1, p0, Lio/dcloud/p/v4$b;->o:Z

    return-object p0
.end method

.method public a()Lio/dcloud/p/v4;
    .registers 3

    .line 6
    new-instance v0, Lio/dcloud/p/v4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/p/v4;-><init>(Lio/dcloud/p/v4$b;Lio/dcloud/p/v4$a;)V

    return-object v0
.end method

.method public b(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->j:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lio/dcloud/p/v4$b;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/p/v4$b;->m:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lio/dcloud/p/v4$b;
    .registers 2

    .line 4
    iput-boolean p1, p0, Lio/dcloud/p/v4$b;->t:Z

    return-object p0
.end method

.method public c(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 3
    iput p1, p0, Lio/dcloud/p/v4$b;->g:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/v4$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lio/dcloud/p/v4$b;
    .registers 2

    .line 4
    iput-boolean p1, p0, Lio/dcloud/p/v4$b;->h:Z

    return-object p0
.end method

.method public d(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->k:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lio/dcloud/p/v4$b;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/p/v4$b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 3
    iput p1, p0, Lio/dcloud/p/v4$b;->r:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/v4$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->a:I

    return-object p0
.end method

.method public g(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->f:I

    return-object p0
.end method

.method public h(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->n:I

    return-object p0
.end method

.method public i(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->b:I

    return-object p0
.end method

.method public j(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->i:I

    return-object p0
.end method

.method public k(I)Lio/dcloud/p/v4$b;
    .registers 2

    .line 2
    iput p1, p0, Lio/dcloud/p/v4$b;->e:I

    return-object p0
.end method
