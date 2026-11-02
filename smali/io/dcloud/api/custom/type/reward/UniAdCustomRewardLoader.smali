###### Class io.dcloud.api.custom.type.reward.UniAdCustomRewardLoader (io.dcloud.api.custom.type.reward.UniAdCustomRewardLoader)
.class public abstract Lio/dcloud/api/custom/type/reward/UniAdCustomRewardLoader;
.super Lio/dcloud/api/custom/type/UniAdCustomBaseLoader;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/api/custom/type/UniAdCustomBaseLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/UniAdCustomBaseLoader;->a:Lio/dcloud/p/w1;

    instance-of v1, v0, Lio/dcloud/p/w1$a;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/p/w1$a;

    invoke-interface {v0}, Lio/dcloud/p/w1$a;->g()V

    :cond_b
    return-void
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method

.method public final show(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lio/dcloud/api/custom/type/reward/UniAdCustomRewardLoader;->show(Landroid/app/Activity;)V

    return-void
.end method
