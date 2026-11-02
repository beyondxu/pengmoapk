###### Class io.dcloud.nineoldandroids.animation.AnimatorSet (io.dcloud.nineoldandroids.animation.AnimatorSet)
.class public final Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.super Lio/dcloud/nineoldandroids/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
    }
.end annotation


# instance fields
.field private mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Animator;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 104
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, 0x0

    .line 107
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    .line 110
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-void
.end method

.method static synthetic access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 1

    .line 58
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
    .registers 1

    .line 66
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 1

    .line 80
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return-void
.end method

.method static synthetic access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 1

    .line 73
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private sortNodes()V
    .registers 11

    .line 785
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a0

    .line 786
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 788
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-lt v3, v2, :cond_85

    .line 795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3d

    .line 816
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 817
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_35

    goto/16 :goto_a9

    .line 818
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_42
    if-lt v2, v5, :cond_4e

    .line 812
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1d

    .line 799
    :cond_4e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 800
    iget-object v6, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v6, :cond_82

    .line 802
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_64
    if-lt v7, v6, :cond_67

    goto :goto_82

    .line 804
    :cond_67
    iget-object v8, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 805
    iget-object v9, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 806
    iget-object v9, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7f

    .line 807
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_82
    :goto_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 790
    :cond_85
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 791
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_99

    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9c

    .line 792
    :cond_99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    .line 825
    :cond_a0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a7
    if-lt v2, v0, :cond_aa

    :goto_a9
    return-void

    .line 827
    :cond_aa
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 828
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v4, :cond_ef

    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ef

    .line 829
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_c5
    if-lt v5, v4, :cond_c8

    goto :goto_ef

    .line 831
    :cond_c8
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 832
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v7, :cond_db

    .line 833
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 835
    :cond_db
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v8, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ec

    .line 836
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v6, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    add-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 842
    :cond_ef
    :goto_ef
    iput-boolean v1, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7
.end method


# virtual methods
.method public cancel()V
    .registers 4

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 285
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 287
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 288
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_2b

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 290
    invoke-interface {v2, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_19

    :cond_2a
    const/4 v0, 0x0

    .line 293
    :goto_2b
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 296
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    goto :goto_5c

    .line 297
    :cond_3b
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 298
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_5c

    :cond_50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 299
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_49

    :cond_5c
    :goto_5c
    if-eqz v0, :cond_73

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_73

    :cond_69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 304
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_62

    :cond_73
    :goto_73
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    :cond_76
    return-void
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet;
    .registers 9

    .line 551
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    const/4 v1, 0x1

    .line 560
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    .line 561
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 562
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 564
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 571
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 604
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_48

    return-object v0

    :cond_48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 605
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 606
    iget-object v5, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_41

    .line 607
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_41

    :cond_65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 608
    iget-object v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 609
    new-instance v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 610
    iget v5, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    .line 609
    invoke-direct {v7, v6, v5}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 611
    invoke-virtual {v4, v7}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    goto :goto_5e

    .line 572
    :cond_7e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 573
    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v4

    .line 574
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v3, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v3, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 578
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 579
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 580
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 581
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 584
    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 587
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_ac
    :goto_ac
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_ca

    if-eqz v3, :cond_35

    .line 596
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c0

    goto/16 :goto_35

    :cond_c0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 597
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b8

    .line 587
    :cond_ca
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 588
    instance-of v7, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v7, :cond_ac

    if-nez v3, :cond_db

    .line 590
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :cond_db
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac
.end method

.method public end()V
    .registers 4

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 320
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 321
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_40

    .line 323
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 324
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_40

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 325
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v2, :cond_38

    .line 326
    new-instance v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V

    iput-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 328
    :cond_38
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_20

    .line 331
    :cond_40
    :goto_40
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_47

    .line 332
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 334
    :cond_47
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 335
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_68

    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 336
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->end()V

    goto :goto_55

    .line 339
    :cond_68
    :goto_68
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_89

    .line 341
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_89

    :cond_7f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 343
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_78

    :cond_89
    :goto_89
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    :cond_8c
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    return-object v0

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 202
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getDuration()J
    .registers 3

    .line 402
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 378
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .registers 3

    .line 357
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 358
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 3

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 270
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/Animator;)V

    return-object v0

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public playSequentially(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3a

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3a

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1c

    .line 182
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    return-void

    .line 184
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_24

    goto :goto_3a

    .line 185
    :cond_24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_1c

    :cond_3a
    :goto_3a
    return-void
.end method

.method public varargs playSequentially([Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 6

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 162
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_f

    .line 163
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    return-void

    .line 165
    :cond_f
    :goto_f
    array-length v1, p1

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_14

    goto :goto_22

    .line 166
    :cond_14
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_f

    :cond_22
    :goto_22
    return-void
.end method

.method public playTogether(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 140
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_28

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    if-nez v0, :cond_24

    .line 145
    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_10

    .line 147
    :cond_24
    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_10

    :cond_28
    :goto_28
    return-void
.end method

.method public varargs playTogether([Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    .line 127
    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 128
    :goto_c
    array-length v2, p1

    if-lt v0, v2, :cond_10

    goto :goto_18

    .line 129
    :cond_10
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    :goto_18
    return-void
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 418
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    .line 423
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-object p0

    .line 418
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 421
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, p1, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;

    goto :goto_c

    .line 416
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be a value of zero or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 234
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 235
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_6
.end method

.method public setStartDelay(J)V
    .registers 3

    .line 389
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 5

    .line 216
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 217
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    .line 218
    instance-of v2, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    if-eqz v2, :cond_1f

    .line 219
    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_6

    .line 220
    :cond_1f
    instance-of v2, v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    if-eqz v2, :cond_6

    .line 221
    check-cast v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setupEndValues()V
    .registers 3

    .line 436
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 437
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->setupEndValues()V

    goto :goto_6
.end method

.method public setupStartValues()V
    .registers 3

    .line 429
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 430
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->setupStartValues()V

    goto :goto_6
.end method

.method public start()V
    .registers 11

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 456
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 458
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-lt v2, v1, :cond_10b

    .line 480
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_18
    if-lt v2, v1, :cond_b0

    .line 500
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_40

    .line 501
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_60

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 502
    iget-object v3, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 503
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_40
    const/4 v1, 0x2

    .line 506
    new-array v1, v1, [F

    fill-array-data v1, :array_14a

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 507
    iget-wide v6, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v1, v6, v7}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 508
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;

    invoke-direct {v2, p0, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    .line 526
    :goto_60
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_80

    .line 528
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_71
    if-lt v3, v2, :cond_74

    goto :goto_80

    .line 531
    :cond_74
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 534
    :cond_80
    :goto_80
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_af

    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    cmp-long v3, v1, v4

    if-nez v3, :cond_af

    .line 537
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 538
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_af

    .line 540
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_a0
    if-lt v0, v2, :cond_a3

    goto :goto_af

    .line 543
    :cond_a3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    :cond_af
    :goto_af
    return-void

    .line 482
    :cond_b0
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 483
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v5, :cond_c3

    .line 484
    new-instance v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v5, p0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V

    iput-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 486
    :cond_c3
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_fd

    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_d0

    goto :goto_fd

    .line 489
    :cond_d0
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_d7
    if-lt v6, v5, :cond_e4

    .line 495
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_100

    .line 491
    :cond_e4
    iget-object v7, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 492
    iget-object v8, v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v8, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    .line 493
    new-instance v9, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;

    iget v7, v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v9, p0, v4, v7}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 492
    invoke-virtual {v8, v9}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d7

    .line 487
    :cond_fd
    :goto_fd
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_100
    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    .line 460
    :cond_10b
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 462
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_145

    .line 463
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_145

    .line 465
    new-instance v5, Ljava/util/ArrayList;

    .line 464
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12a
    :goto_12a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_131

    goto :goto_145

    :cond_131
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 468
    instance-of v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;

    if-nez v6, :cond_13f

    .line 469
    instance-of v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v6, :cond_12a

    .line 470
    :cond_13f
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v6, v5}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_12a

    :cond_145
    :goto_145
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    nop

    :array_14a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.AnonymousClass1 (io.dcloud.nineoldandroids.animation.AnimatorSet$1)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;
.super Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field private final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    .line 508
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 511
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 514
    iget-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    if-nez p1, :cond_29

    .line 515
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_b
    if-lt v0, p1, :cond_e

    goto :goto_29

    .line 517
    :cond_e
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 518
    iget-object v2, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 519
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    :goto_29
    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.AnimatorSetListener (io.dcloud.nineoldandroids.animation.AnimatorSet$AnimatorSetListener)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V
    .registers 3

    .line 711
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 716
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez p1, :cond_36

    .line 719
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_36

    .line 720
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_36

    .line 721
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_21
    if-lt v0, p1, :cond_24

    goto :goto_36

    .line 723
    :cond_24
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_36
    :goto_36
    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 7

    .line 732
    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 733
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 736
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez p1, :cond_69

    .line 739
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$4(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2d
    if-lt v2, v0, :cond_5b

    .line 751
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_55

    .line 753
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 754
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_44
    if-lt v2, v0, :cond_47

    goto :goto_55

    .line 756
    :cond_47
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v3, v4}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 759
    :cond_55
    :goto_55
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$5(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Z)V

    return-void

    .line 743
    :cond_5b
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v3, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    if-nez v3, :cond_66

    return-void

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_69
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

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.Builder (io.dcloud.nineoldandroids.animation.AnimatorSet$Builder)
.class public Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 1027
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_2c

    .line 1030
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 1031
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method


# virtual methods
.method public after(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 4

    const/4 v0, 0x2

    .line 1105
    new-array v0, v0, [F

    fill-array-data v0, :array_12

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 1106
    invoke-virtual {v0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 1107
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->after(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    return-object p0

    nop

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 4

    .line 1084
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_25

    .line 1086
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 1087
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_25
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 1091
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 5

    .line 1064
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_25

    .line 1066
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 1067
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_25
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 1071
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .registers 5

    .line 1044
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_25

    .line 1046
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 1047
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_25
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 1051
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.Dependency (io.dcloud.nineoldandroids.animation.AnimatorSet$Dependency)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V
    .registers 3

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 864
    iput p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.DependencyListener (io.dcloud.nineoldandroids.animation.AnimatorSet$DependencyListener)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field private mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V
    .registers 4

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    .line 637
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 638
    iput p3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    return-void
.end method

.method private startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 7

    .line 680
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-eqz v0, :cond_7

    goto :goto_53

    .line 685
    :cond_7
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-lt v1, v0, :cond_14

    const/4 p1, 0x0

    goto :goto_2e

    .line 687
    :cond_14
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 688
    iget v3, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    iget v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v3, v4, :cond_54

    .line 689
    iget-object v3, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v3, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    if-ne v3, p1, :cond_54

    .line 693
    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    move-object p1, v2

    .line 697
    :goto_2e
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_53

    .line 700
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 701
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    :goto_53
    return-void

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 4

    .line 653
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 654
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_8
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 668
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_7

    .line 669
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.nineoldandroids.animation.AnimatorSet.Node (io.dcloud.nineoldandroids.animation.AnimatorSet$Node)
.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public animation:Lio/dcloud/nineoldandroids/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 883
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 894
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 900
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 907
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 924
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    return-void
.end method


# virtual methods
.method public addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V
    .registers 4

    .line 933
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 937
    :cond_12
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 939
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_28
    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 942
    iget-object v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v0, :cond_35

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 945
    :cond_35
    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
    .registers 3

    .line 951
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 952
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 955
    :catch_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
