###### Class androidx.fragment.app.FragmentTransition (androidx.fragment.app.FragmentTransition)
.class Landroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;,
        Landroidx/fragment/app/FragmentTransition$Callback;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field static final PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

.field static final SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xb

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 78
    new-instance v0, Landroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    .line 79
    sput-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 81
    invoke-static {}, Landroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 695
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 696
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 697
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 698
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private static addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroidx/fragment/app/FragmentTransaction$Op;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1173
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_6

    goto/16 :goto_e7

    .line 1177
    :cond_6
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_c

    goto/16 :goto_e7

    :cond_c
    if-eqz p3, :cond_15

    .line 1181
    sget-object v2, Landroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget p1, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget p1, v2, p1

    goto :goto_17

    :cond_15
    iget p1, p1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    :goto_17
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_83

    const/4 v4, 0x3

    if-eq p1, v4, :cond_59

    const/4 v4, 0x4

    if-eq p1, v4, :cond_41

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2f

    const/4 v4, 0x6

    if-eq p1, v4, :cond_59

    const/4 v4, 0x7

    if-eq p1, v4, :cond_83

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_2c
    const/4 v4, 0x0

    goto/16 :goto_96

    :cond_2f
    if-eqz p4, :cond_3e

    .line 1189
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_92

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_92

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_92

    goto :goto_90

    .line 1191
    :cond_3e
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_93

    :cond_41
    if-eqz p4, :cond_50

    .line 1206
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_74

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_74

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_74

    :goto_4f
    goto :goto_72

    .line 1208
    :cond_50
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_74

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_74

    goto :goto_4f

    :cond_59
    if-eqz p4, :cond_76

    .line 1215
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_74

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_74

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_74

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_74

    :goto_72
    const/4 p1, 0x1

    goto :goto_7f

    :cond_74
    const/4 p1, 0x0

    goto :goto_7f

    .line 1219
    :cond_76
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_74

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_74

    goto :goto_72

    :goto_7f
    move v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    goto :goto_96

    :cond_83
    if-eqz p4, :cond_88

    .line 1198
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_93

    .line 1200
    :cond_88
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_92

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_92

    :goto_90
    const/4 p1, 0x1

    goto :goto_93

    :cond_92
    const/4 p1, 0x0

    :goto_93
    move v2, p1

    const/4 p1, 0x0

    goto :goto_2c

    .line 1224
    :goto_96
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v2, :cond_a8

    .line 1227
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v5

    .line 1228
    iput-object v0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 1229
    iput-boolean p3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1230
    iput-object p0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_a8
    const/4 v2, 0x0

    if-nez p4, :cond_c9

    if-eqz v3, :cond_c9

    if-eqz v5, :cond_b5

    .line 1233
    iget-object v3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_b5

    .line 1234
    iput-object v2, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1237
    :cond_b5
    iget-boolean v3, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_c9

    .line 1242
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 1244
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v6

    .line 1245
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentStore()Landroidx/fragment/app/FragmentStore;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1246
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    :cond_c9
    if-eqz v4, :cond_db

    if-eqz v5, :cond_d1

    .line 1249
    iget-object v3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_db

    .line 1251
    :cond_d1
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/FragmentTransition;->ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v5

    .line 1252
    iput-object v0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 1253
    iput-boolean p3, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1254
    iput-object p0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_db
    if-nez p4, :cond_e7

    if-eqz p1, :cond_e7

    if-eqz v5, :cond_e7

    .line 1257
    iget-object p0, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_e7

    .line 1259
    iput-object v2, v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    :cond_e7
    :goto_e7
    return-void
.end method

.method public static calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_18

    .line 1127
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1128
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_7
    if-lt p4, p3, :cond_5c

    .line 189
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 190
    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_59

    .line 193
    :cond_16
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 194
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_59

    .line 195
    iget-object v3, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_31

    .line 199
    iget-object v2, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 200
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_38

    .line 202
    :cond_31
    iget-object v2, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 203
    iget-object v1, v1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_38
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_59

    .line 206
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v6}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_53

    .line 210
    invoke-virtual {v0, v5, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 212
    :cond_53
    invoke-virtual {v0, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_59
    :goto_59
    add-int/lit8 p4, p4, -0x1

    goto :goto_7

    :cond_5c
    return-object v0
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_25

    .line 1145
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_15
    if-ltz v0, :cond_25

    .line 1147
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 1148
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Landroidx/fragment/app/BackStackRecord;Landroidx/fragment/app/FragmentTransaction$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_25
    :goto_25
    return-void
.end method

.method static callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1030
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p0

    goto :goto_b

    .line 1031
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_3d

    .line 1033
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    .line 1035
    :cond_1c
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    :goto_20
    if-ge v0, v1, :cond_33

    .line 1037
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p3, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_33
    const/4 p3, 0x0

    if-eqz p4, :cond_3a

    .line 1041
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 1043
    :cond_3a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3d
    return-void
.end method

.method private static canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 518
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_16

    .line 519
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method static captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 889
    iget-object v0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 890
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 891
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    if-eqz p2, :cond_7c

    if-nez v1, :cond_11

    goto :goto_7c

    .line 895
    :cond_11
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 896
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 900
    iget-object p0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 901
    iget-boolean p3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz p3, :cond_26

    .line 902
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p3

    .line 903
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_2c

    .line 905
    :cond_26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p3

    .line 906
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_2c
    if-eqz p0, :cond_38

    .line 910
    invoke-virtual {p2, p0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 911
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_38
    if-eqz p3, :cond_78

    .line 914
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 915
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_43
    if-ltz p3, :cond_77

    .line 916
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5d

    .line 919
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 921
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 923
    :cond_5d
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 924
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentTransition;->findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 926
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    :goto_74
    add-int/lit8 p3, p3, -0x1

    goto :goto_43

    :cond_77
    return-object p2

    .line 931
    :cond_78
    invoke-static {p1, p2}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-object p2

    .line 892
    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    if-nez p2, :cond_9

    goto :goto_71

    .line 835
    :cond_9
    iget-object p2, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 836
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 837
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 841
    iget-object p0, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 842
    iget-boolean p3, p3, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz p3, :cond_24

    .line 843
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p2

    .line 844
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_2a

    .line 846
    :cond_24
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object p2

    .line 847
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_2a
    if-eqz p0, :cond_2f

    .line 851
    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2f
    if-eqz p2, :cond_69

    .line 854
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 855
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3a
    if-ltz p2, :cond_68

    .line 856
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 857
    invoke-virtual {v0, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_4e

    .line 859
    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 860
    :cond_4e
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 861
    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 862
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    :goto_65
    add-int/lit8 p2, p2, -0x1

    goto :goto_3a

    :cond_68
    return-object v0

    .line 866
    :cond_69
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    return-object v0

    .line 832
    :cond_71
    :goto_71
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 4

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_22

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 484
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p1, :cond_3f

    .line 488
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 490
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 494
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_36
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 498
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_47

    return-object p1

    .line 505
    :cond_47
    sget-object p0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz p0, :cond_52

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_52

    return-object p0

    .line 508
    :cond_52
    sget-object v1, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_5d

    invoke-static {v1, v0}, Landroidx/fragment/app/FragmentTransition;->canHandleAll(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-object v1

    :cond_5d
    if-nez p0, :cond_62

    if-nez v1, :cond_62

    return-object p1

    .line 512
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 1057
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_10
    if-eqz p3, :cond_15

    .line 1060
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1062
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_21

    .line 1063
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_21
    return-object v0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 738
    iget-object v7, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 739
    iget-object v8, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v7, :cond_74

    if-nez v8, :cond_11

    goto/16 :goto_74

    .line 745
    :cond_11
    iget-boolean v9, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 746
    invoke-virtual/range {p3 .. p3}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v2, v1

    goto :goto_1f

    .line 747
    :cond_1b
    invoke-static {p0, v7, v8, v9}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    :goto_1f
    move-object/from16 v12, p3

    .line 749
    invoke-static {p0, v12, v2, v6}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v3

    .line 752
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object v2, v1

    goto :goto_34

    .line 755
    :cond_2d
    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_34
    if-nez v11, :cond_3b

    if-nez p8, :cond_3b

    if-nez v2, :cond_3b

    return-object v1

    :cond_3b
    const/4 v4, 0x1

    .line 763
    invoke-static {v7, v8, v9, v3, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v2, :cond_5e

    .line 767
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v14, p2

    .line 768
    invoke-virtual {p0, v2, v14, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 770
    iget-boolean v4, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 771
    iget-object v5, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v0, p0

    move-object v1, v2

    move-object/from16 v2, p8

    .line 772
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    move-object v3, v1

    if-eqz v11, :cond_5c

    .line 775
    invoke-virtual {p0, v11, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_5c
    move-object v1, v13

    goto :goto_61

    :cond_5e
    move-object/from16 v14, p2

    move-object v3, v2

    .line 783
    :goto_61
    new-instance v0, Landroidx/fragment/app/FragmentTransition$6;

    move-object/from16 v5, p6

    move-object v4, v6

    move-object v2, v12

    move-object v6, v14

    move-object v12, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/FragmentTransition$6;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-object v3

    :cond_74
    :goto_74
    return-object v1
.end method

.method private static configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    .line 609
    iget-object v8, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 610
    iget-object v9, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_1a

    .line 612
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    const/4 v5, 0x0

    if-eqz v8, :cond_99

    if-nez v9, :cond_21

    goto/16 :goto_99

    .line 618
    :cond_21
    iget-boolean v10, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 619
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2b

    move-object v11, v5

    goto :goto_2f

    .line 620
    :cond_2b
    invoke-static {p0, v8, v9, v10}, Landroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    .line 622
    :goto_2f
    invoke-static {p0, v2, v11, v6}, Landroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v12

    .line 625
    invoke-static {p0, v2, v11, v6}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v13

    .line 628
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_49

    if-eqz v12, :cond_42

    .line 631
    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->clear()V

    :cond_42
    if-eqz v13, :cond_47

    .line 634
    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->clear()V

    :cond_47
    move-object v11, v5

    goto :goto_57

    .line 638
    :cond_49
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 637
    invoke-static {v3, v12, v14}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 640
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 639
    invoke-static {v4, v13, v2}, Landroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    :goto_57
    if-nez v7, :cond_5e

    if-nez p8, :cond_5e

    if-nez v11, :cond_5e

    return-object v5

    :cond_5e
    const/4 v2, 0x1

    .line 648
    invoke-static {v8, v9, v10, v12, v2}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v11, :cond_87

    .line 653
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {p0, v11, v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 656
    iget-boolean v4, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 657
    iget-object v5, v6, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

    move-object v0, p0

    move-object/from16 v2, p8

    move-object v1, v11

    move-object v3, v12

    .line 658
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V

    .line 660
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 661
    invoke-static {v13, v6, v7, v10}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 664
    invoke-virtual {p0, v7, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_84
    move-object v7, v5

    move-object v5, v1

    goto :goto_88

    :cond_87
    move-object v7, v5

    .line 671
    :goto_88
    new-instance v0, Landroidx/fragment/app/FragmentTransition$5;

    move-object v6, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v13

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransition$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object v1, v0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-object v11

    :cond_99
    :goto_99
    return-object v5
.end method

.method private static configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p1

    move-object/from16 v9, p4

    .line 354
    iget-object v10, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 355
    iget-object v11, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 356
    invoke-static {v11, v10}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_a2

    .line 360
    :cond_10
    iget-boolean v1, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 361
    iget-boolean v2, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 363
    invoke-static {v0, v10, v1}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    .line 364
    invoke-static {v0, v11, v2}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 366
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v1

    move-object/from16 v1, p0

    .line 369
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v2

    move-object v14, v3

    move-object v1, v7

    move-object v7, v6

    move-object v6, v5

    if-nez v1, :cond_3e

    if-nez v12, :cond_3e

    if-nez v8, :cond_3e

    goto/16 :goto_a2

    .line 378
    :cond_3e
    invoke-static {v0, v8, v11, v6, v13}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_4a

    .line 381
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_4a
    const/4 v8, 0x0

    :cond_4b
    move-object v2, v8

    .line 387
    invoke-virtual {v0, v1, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 389
    iget-boolean v5, v4, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v4, v10

    move-object v3, v12

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v4

    if-eqz v11, :cond_78

    if-eqz v15, :cond_78

    .line 393
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_68

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_78

    .line 394
    :cond_68
    new-instance v4, Landroidx/core/os/CancellationSignal;

    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 395
    invoke-interface {v9, v11, v4}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 396
    new-instance v6, Landroidx/fragment/app/FragmentTransition$3;

    invoke-direct {v6, v9, v11, v4}, Landroidx/fragment/app/FragmentTransition$3;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v11, v5, v4, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :cond_78
    if-eqz v5, :cond_a2

    .line 405
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    move-object v6, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v15

    .line 406
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v6, v5

    move-object v5, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v4

    move-object v4, v6

    move-object v9, v1

    move-object v6, v3

    move-object v3, v13

    move-object/from16 v1, p0

    .line 409
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v7, v4

    .line 411
    invoke-virtual {v0, v1, v7, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 413
    invoke-virtual {v0, v1, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v0, v1, v7, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p4

    .line 237
    iget-object v10, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroidx/fragment/app/Fragment;

    .line 238
    iget-object v11, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroidx/fragment/app/Fragment;

    .line 239
    invoke-static {v11, v10}, Landroidx/fragment/app/FragmentTransition;->chooseImpl(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_9b

    .line 243
    :cond_e
    iget-boolean v12, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 244
    iget-boolean v1, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {v0, v10, v12}, Landroidx/fragment/app/FragmentTransition;->getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 249
    invoke-static {v0, v11, v1}, Landroidx/fragment/app/FragmentTransition;->getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    move-object v1, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 251
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v7

    move-object v3, v8

    move-object v8, v5

    if-nez v1, :cond_3b

    if-nez v4, :cond_3b

    if-nez v3, :cond_3b

    goto/16 :goto_9b

    .line 260
    :cond_3b
    invoke-static {v0, v3, v11, v8, v2}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v7

    .line 263
    invoke-static {v0, v1, v10, v6, v2}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v2, 0x4

    .line 266
    invoke-static {v13, v2}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    move v5, v12

    .line 268
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    if-eqz v11, :cond_6f

    if-eqz v7, :cond_6f

    .line 272
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_5f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6f

    .line 273
    :cond_5f
    new-instance v5, Landroidx/core/os/CancellationSignal;

    invoke-direct {v5}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 274
    invoke-interface {v9, v11, v5}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 275
    new-instance v10, Landroidx/fragment/app/FragmentTransition$1;

    invoke-direct {v10, v9, v11, v5}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v11, v4, v5, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :cond_6f
    if-eqz v4, :cond_9b

    .line 284
    invoke-static {v0, v2, v11, v7}, Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 286
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    move-object v5, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v6

    move-object v6, v3

    move-object v3, v13

    .line 287
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v2, v7

    move-object v7, v6

    move-object v6, v2

    move-object v2, v1

    move-object v10, v3

    .line 290
    invoke-virtual {v0, p0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v1, p0

    move-object/from16 v5, p3

    move-object v3, v6

    move-object v2, v8

    move-object v4, v9

    .line 291
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 293
    invoke-static {v10, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 294
    invoke-virtual {v0, v7, v2, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method private static ensureContainer(Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_a

    .line 1272
    new-instance p0, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1273
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method static findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 942
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 943
    invoke-virtual {p0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getEnterTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    .line 558
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 559
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 557
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getExitTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    .line 571
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 572
    :cond_b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 570
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 962
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroidx/fragment/app/BackStackRecord;

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2d

    .line 963
    iget-object p2, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz p2, :cond_2d

    iget-object p2, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 965
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    const/4 p2, 0x0

    if-eqz p3, :cond_1e

    .line 967
    iget-object p1, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_26

    .line 968
    :cond_1e
    iget-object p1, p1, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 969
    :goto_26
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSharedElementTransition(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    :cond_5
    if-eqz p3, :cond_c

    .line 544
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_10

    .line 545
    :cond_c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 543
    :goto_10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static mergeTransitions(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-eqz p4, :cond_12

    if-eqz p5, :cond_d

    .line 1092
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_13

    .line 1093
    :cond_d
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_13

    :cond_12
    const/4 p4, 0x1

    :goto_13
    if-eqz p4, :cond_1a

    .line 1103
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1108
    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_25

    if-eqz p1, :cond_25

    .line 307
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 311
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 310
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 327
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 328
    new-instance p1, Landroidx/fragment/app/FragmentTransition$2;

    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_25
    return-void
.end method

.method private static resolveSupportImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 2

    const/4 v0, 0x0

    .line 86
    :try_start_1
    const-string v1, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    return-object v0
.end method

.method static retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 1008
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1009
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private static scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 441
    new-instance v0, Landroidx/fragment/app/FragmentTransition$4;

    move-object v2, p0

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    move-object v1, p5

    move-object v6, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/FragmentTransition$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/BackStackRecord;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 986
    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    if-eqz p4, :cond_18

    .line 989
    iget-object p4, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_20

    .line 990
    :cond_18
    iget-object p4, p5, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 991
    :goto_20
    invoke-virtual {p3, p4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 992
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_2e

    .line 995
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_17

    .line 1077
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1079
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    :goto_17
    return-void
.end method

.method static startTransitions(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/FragmentTransition$Callback;",
            ")V"
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p4

    :goto_6
    if-ge v1, p5, :cond_24

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 131
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 133
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/FragmentTransition;->calculatePopFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_21

    .line 135
    :cond_1e
    invoke-static {v2, v0, p6}, Landroidx/fragment/app/FragmentTransition;->calculateFragments(Landroidx/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 139
    :cond_24
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 140
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_34
    if-ge v2, p0, :cond_5f

    .line 143
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 144
    invoke-static {v3, p2, p3, p4, p5}, Landroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/collection/ArrayMap;

    move-result-object v4

    .line 148
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 151
    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_53

    goto :goto_5c

    :cond_53
    if-eqz p6, :cond_59

    .line 158
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    goto :goto_5c

    .line 161
    :cond_59
    invoke-static {v3, v5, v1, v4, p7}, Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_5f
    return-void
.end method

.method static supportsTransition()Z
    .registers 1

    .line 1153
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_b

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass1 (androidx.fragment.app.FragmentTransition$1)
.class Landroidx/fragment/app/FragmentTransition$1;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 4

    .line 275
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$1;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$1;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$1;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 278
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$1;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$1;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$1;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass2 (androidx.fragment.app.FragmentTransition$2)
.class Landroidx/fragment/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->replaceHide(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exitingViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 328
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 331
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass3 (androidx.fragment.app.FragmentTransition$3)
.class Landroidx/fragment/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$signal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 4

    .line 396
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 399
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$3;->val$callback:Landroidx/fragment/app/FragmentTransition$Callback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/FragmentTransition$Callback;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass4 (androidx.fragment.app.FragmentTransition$4)
.class Landroidx/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 9

    .line 441
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 444
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 445
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 452
    :cond_1e
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    .line 453
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_39

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 459
    :cond_39
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$4;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass5 (androidx.fragment.app.FragmentTransition$5)
.class Landroidx/fragment/app/FragmentTransition$5;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Landroidx/collection/ArrayMap;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .registers 8

    .line 671
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$5;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inIsPop:Z

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inSharedElements:Landroidx/collection/ArrayMap;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$5;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 674
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$5;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inIsPop:Z

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$5;->val$inSharedElements:Landroidx/collection/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 676
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenterView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 677
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$5;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$5;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_17
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.AnonymousClass6 (androidx.fragment.app.FragmentTransition$6)
.class Landroidx/fragment/app/FragmentTransition$6;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Landroidx/collection/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 13

    .line 783
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$6;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    iput-object p10, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/FragmentTransition$6;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 786
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 790
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_1e
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 796
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_48

    .line 797
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentTransition$6;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 801
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 804
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$6;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$6;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_48
    return-void
.end method

###### Class androidx.fragment.app.FragmentTransition.Callback (androidx.fragment.app.FragmentTransition$Callback)
.class interface abstract Landroidx/fragment/app/FragmentTransition$Callback;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
.end method

.method public abstract onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
.end method

###### Class androidx.fragment.app.FragmentTransition.FragmentContainerTransition (androidx.fragment.app.FragmentTransition$FragmentContainerTransition)
.class Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Landroidx/fragment/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Landroidx/fragment/app/BackStackRecord;

.field public lastIn:Landroidx/fragment/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Landroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
