###### Class com.hjq.permissions.PermissionFragment (com.hjq.permissions.PermissionFragment)
.class public final Lcom/hjq/permissions/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REQUEST_CODE:Ljava/lang/String; = "request_code"

.field private static final REQUEST_CODE_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_PERMISSIONS:Ljava/lang/String; = "request_permissions"


# instance fields
.field private mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

.field private mDangerousRequest:Z

.field private mInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

.field private mRequestFlag:Z

.field private mScreenOrientation:I

.field private mSpecialRequest:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionFragment;->REQUEST_CODE_ARRAY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static launch(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionInterceptor;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/hjq/permissions/PermissionFragment;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionFragment;-><init>()V

    .line 44
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    :cond_a
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 49
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 50
    sget-object v3, Lcom/hjq/permissions/PermissionFragment;->REQUEST_CODE_ARRAY:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v3, "request_code"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    instance-of v2, p1, Ljava/util/ArrayList;

    const-string v3, "request_permissions"

    if-eqz v2, :cond_40

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_48

    .line 59
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    :goto_48
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/PermissionFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {v0, p1}, Lcom/hjq/permissions/PermissionFragment;->setRetainInstance(Z)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/hjq/permissions/PermissionFragment;->setRequestFlag(Z)V

    .line 67
    invoke-virtual {v0, p3}, Lcom/hjq/permissions/PermissionFragment;->setOnPermissionCallback(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/hjq/permissions/PermissionFragment;->setOnPermissionInterceptor(Lcom/hjq/permissions/OnPermissionInterceptor;)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/hjq/permissions/PermissionFragment;->attachByActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public attachByActivity(Landroid/app/Activity;)V
    .registers 3

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 102
    :cond_7
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public detachByActivity(Landroid/app/Activity;)V
    .registers 2

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 113
    :cond_7
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 436
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 437
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p2, :cond_2e

    if-eqz p3, :cond_2e

    .line 438
    iget-boolean p2, p0, Lcom/hjq/permissions/PermissionFragment;->mDangerousRequest:Z

    if-nez p2, :cond_2e

    const-string p2, "request_code"

    .line 439
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_19

    goto :goto_2e

    .line 443
    :cond_19
    const-string p1, "request_permissions"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 444
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_28

    goto :goto_2e

    :cond_28
    const/4 p2, 0x1

    .line 448
    iput-boolean p2, p0, Lcom/hjq/permissions/PermissionFragment;->mDangerousRequest:Z

    .line 449
    invoke-static {p1, p0}, Lcom/hjq/permissions/PermissionUtils;->postActivityResult(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_13

    .line 146
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/hjq/permissions/PermissionFragment;->mScreenOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    :goto_13
    return-void

    .line 152
    :cond_14
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->lockActivityOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 169
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    return-void
.end method

.method public onDetach()V
    .registers 4

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 158
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 159
    iget v1, p0, Lcom/hjq/permissions/PermissionFragment;->mScreenOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v2, :cond_15

    goto :goto_18

    .line 164
    :cond_15
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 11

    if-eqz p2, :cond_71

    .line 378
    array-length v0, p2

    if-eqz v0, :cond_71

    if-eqz p3, :cond_71

    array-length v0, p3

    if-nez v0, :cond_b

    goto :goto_71

    .line 382
    :cond_b
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 383
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_71

    if-eqz v0, :cond_71

    .line 384
    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    if-eqz v1, :cond_71

    const-string v1, "request_code"

    .line 385
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_24

    goto :goto_71

    .line 389
    :cond_24
    iget-object v6, p0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 392
    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 393
    iput-object v0, p0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 396
    invoke-static {v2, p2, p3}, Lcom/hjq/permissions/PermissionUtils;->optimizePermissionResults(Landroid/app/Activity;[Ljava/lang/String;[I)V

    .line 399
    invoke-static {p2}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 402
    sget-object p2, Lcom/hjq/permissions/PermissionFragment;->REQUEST_CODE_ARRAY:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p0, v2}, Lcom/hjq/permissions/PermissionFragment;->detachByActivity(Landroid/app/Activity;)V

    .line 407
    invoke-static {v3, p3}, Lcom/hjq/permissions/PermissionApi;->getGrantedPermissions(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v4

    .line 410
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_57

    const/4 v5, 0x1

    .line 412
    invoke-interface/range {v1 .. v6}, Lcom/hjq/permissions/OnPermissionInterceptor;->grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 414
    invoke-interface {v1, v2, v3, v0, v6}, Lcom/hjq/permissions/OnPermissionInterceptor;->finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void

    :cond_57
    move-object p1, v4

    .line 419
    invoke-static {v3, p3}, Lcom/hjq/permissions/PermissionApi;->getDeniedPermissions(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v4

    .line 423
    invoke-static {v2, v4}, Lcom/hjq/permissions/PermissionApi;->isDoNotAskAgainPermissions(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v5

    .line 422
    invoke-interface/range {v1 .. v6}, Lcom/hjq/permissions/OnPermissionInterceptor;->deniedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 426
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6e

    const/4 v5, 0x0

    move-object v4, p1

    .line 427
    invoke-interface/range {v1 .. v6}, Lcom/hjq/permissions/OnPermissionInterceptor;->grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 431
    :cond_6e
    invoke-interface {v1, v2, v3, v0, v6}, Lcom/hjq/permissions/OnPermissionInterceptor;->finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 179
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionFragment;->mRequestFlag:Z

    if-nez v0, :cond_f

    .line 180
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionFragment;->detachByActivity(Landroid/app/Activity;)V

    return-void

    .line 186
    :cond_f
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionFragment;->mSpecialRequest:Z

    if-eqz v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/hjq/permissions/PermissionFragment;->mSpecialRequest:Z

    .line 191
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->requestSpecialPermission()V

    return-void
.end method

.method public requestDangerousPermission()V
    .registers 9

    .line 243
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_c8

    if-nez v1, :cond_e

    goto/16 :goto_c8

    .line 249
    :cond_e
    const-string v2, "request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 251
    const-string v3, "request_permissions"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_c8

    .line 256
    :cond_24
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v3

    if-nez v3, :cond_54

    .line 258
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v3, :cond_48

    .line 260
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v7, 0x0

    goto :goto_43

    :cond_42
    const/4 v7, -0x1

    :goto_43
    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 263
    :cond_48
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v4}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    .line 268
    :cond_54
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_75

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_75

    .line 269
    const-string v3, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {v1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V

    return-void

    .line 279
    :cond_75
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_95

    .line 280
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V

    return-void

    .line 290
    :cond_95
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 291
    const-string v3, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b7

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 292
    invoke-static {v1, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V

    return-void

    .line 302
    :cond_b7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Lcom/hjq/permissions/PermissionFragment;[Ljava/lang/String;I)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public requestSpecialPermission()V
    .registers 6

    .line 198
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_6b

    if-nez v1, :cond_d

    goto :goto_6b

    .line 204
    :cond_d
    const-string v2, "request_permissions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_6b

    .line 213
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    invoke-static {v3}, Lcom/hjq/permissions/PermissionApi;->isSpecialPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_21

    .line 218
    :cond_34
    invoke-static {v1, v3}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_21

    .line 222
    :cond_3b
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v4

    if-nez v4, :cond_4a

    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_21

    .line 227
    :cond_4a
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 227
    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "request_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 227
    invoke-static {p0, v2, v3}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z

    const/4 v2, 0x1

    goto :goto_21

    :cond_65
    if-eqz v2, :cond_68

    goto :goto_6b

    .line 236
    :cond_68
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->requestDangerousPermission()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public run()V
    .registers 2

    .line 457
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 461
    :cond_7
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->requestDangerousPermission()V

    return-void
.end method

.method public setOnPermissionCallback(Lcom/hjq/permissions/OnPermissionCallback;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    return-void
.end method

.method public setOnPermissionInterceptor(Lcom/hjq/permissions/OnPermissionInterceptor;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/OnPermissionInterceptor;

    return-void
.end method

.method public setRequestFlag(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/hjq/permissions/PermissionFragment;->mRequestFlag:Z

    return-void
.end method

.method public splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 316
    :cond_19
    new-instance v6, Lcom/hjq/permissions/PermissionFragment$1;

    invoke-direct {v6, p0}, Lcom/hjq/permissions/PermissionFragment$1;-><init>(Lcom/hjq/permissions/PermissionFragment;)V

    new-instance v0, Lcom/hjq/permissions/PermissionFragment$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hjq/permissions/PermissionFragment$2;-><init>(Lcom/hjq/permissions/PermissionFragment;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V

    invoke-static {v2, p3, v6, v0}, Lcom/hjq/permissions/PermissionFragment;->launch(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

###### Class com.hjq.permissions.PermissionFragment.AnonymousClass1 (com.hjq.permissions.PermissionFragment$1)
.class Lcom/hjq/permissions/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/permissions/PermissionFragment;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$1;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic deniedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$deniedPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$finishPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$grantedPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic launchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$launchPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

###### Class com.hjq.permissions.PermissionFragment.AnonymousClass2 (com.hjq.permissions.PermissionFragment$2)
.class Lcom/hjq/permissions/PermissionFragment$2;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/permissions/PermissionFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$allPermissions:Ljava/util/List;

.field final synthetic val$requestCode:I

.field final synthetic val$secondPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V
    .registers 6

    .line 316
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iput-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$secondPermissions:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/List;

    iput p5, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V
    .registers 7

    .line 328
    new-instance v0, Lcom/hjq/permissions/PermissionFragment$2$1;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/PermissionFragment$2$1;-><init>(Lcom/hjq/permissions/PermissionFragment$2;)V

    new-instance v1, Lcom/hjq/permissions/PermissionFragment$2$2;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/hjq/permissions/PermissionFragment$2$2;-><init>(Lcom/hjq/permissions/PermissionFragment$2;Ljava/util/List;ILjava/util/ArrayList;)V

    invoke-static {p1, p2, v0, v1}, Lcom/hjq/permissions/PermissionFragment;->launch(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public onDenied(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 363
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 368
    :cond_9
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, -0x1

    .line 369
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 370
    iget-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iget v0, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$requestCode:I

    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_27

    .line 320
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_27

    .line 327
    :cond_b
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result p1

    if-eqz p1, :cond_14

    const-wide/16 p1, 0x96

    goto :goto_16

    :cond_14
    const-wide/16 p1, 0x0

    .line 328
    :goto_16
    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$secondPermissions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$allPermissions:Ljava/util/List;

    iget v5, p0, Lcom/hjq/permissions/PermissionFragment$2;->val$requestCode:I

    new-instance v0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/hjq/permissions/PermissionFragment$2;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/PermissionUtils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_27
    :goto_27
    return-void
.end method

###### Class com.hjq.permissions.PermissionFragment.AnonymousClass2.AnonymousClass1 (com.hjq.permissions.PermissionFragment$2$1)
.class Lcom/hjq/permissions/PermissionFragment$2$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment$2;->lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hjq/permissions/PermissionFragment$2;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment$2;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$1;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic deniedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$deniedPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$finishPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$grantedPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

.method public synthetic launchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/hjq/permissions/OnPermissionInterceptor$-CC;->$default$launchPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method

###### Class com.hjq.permissions.PermissionFragment.AnonymousClass2.C00182 (com.hjq.permissions.PermissionFragment$2$2)
.class Lcom/hjq/permissions/PermissionFragment$2$2;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment$2;->lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hjq/permissions/PermissionFragment$2;

.field final synthetic val$allPermissions:Ljava/util/List;

.field final synthetic val$requestCode:I

.field final synthetic val$secondPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment$2;Ljava/util/List;ILjava/util/ArrayList;)V
    .registers 5

    .line 329
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iput-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    iput p3, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$requestCode:I

    iput-object p4, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$secondPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 345
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object p1, p1, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 350
    :cond_b
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 351
    :goto_15
    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 352
    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$secondPermissions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, -0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 355
    :cond_35
    iget-object v0, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object v0, v0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iget v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$requestCode:I

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2c

    .line 333
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object p1, p1, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-virtual {p1}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2c

    .line 338
    :cond_d
    iget-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 339
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 340
    iget-object v0, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->this$1:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object v0, v0, Lcom/hjq/permissions/PermissionFragment$2;->this$0:Lcom/hjq/permissions/PermissionFragment;

    iget v1, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$requestCode:I

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$2;->val$allPermissions:Ljava/util/List;

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p1}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2c
    :goto_2c
    return-void
.end method

###### Class com.hjq.permissions.PermissionFragment$2$$ExternalSyntheticLambda0 (com.hjq.permissions.PermissionFragment$2$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hjq/permissions/PermissionFragment$2;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/permissions/PermissionFragment$2;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$0:Lcom/hjq/permissions/PermissionFragment$2;

    iput-object p2, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iput p5, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$0:Lcom/hjq/permissions/PermissionFragment$2;

    iget-object v1, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iget v4, p0, Lcom/hjq/permissions/PermissionFragment$2$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hjq/permissions/PermissionFragment$2;->lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/List;I)V

    return-void
.end method
