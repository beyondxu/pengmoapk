###### Class com.hjq.permissions.PermissionChecker (com.hjq.permissions.PermissionChecker)
.class final Lcom/hjq/permissions/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkActivityStatus(Landroid/app/Activity;Z)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_e

    if-nez p1, :cond_6

    return v0

    .line 32
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The instance of the context must be an activity object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-nez p1, :cond_17

    return v0

    .line 41
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The activity has been finishing, please manually determine the status of the activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_1f
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_2()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_36

    if-nez p1, :cond_2e

    return v0

    .line 51
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The activity has been destroyed, please manually determine the status of the activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method static checkBodySensorsPermission(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_51

    .line 265
    :cond_9
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "android.permission.BODY_SENSORS"

    .line 266
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    .line 268
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Applying for background sensor permissions must contain android.permission.BODY_SENSORS"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 278
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_24

    .line 280
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Applying for permissions android.permission.BODY_SENSORS_BACKGROUND and android.permission.ACCESS_MEDIA_LOCATION at the same time is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Applying for permissions android.permission.BODY_SENSORS_BACKGROUND and android.permission.ACCESS_BACKGROUND_LOCATION at the same time is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    :goto_51
    return-void
.end method

.method static checkLocationPermission(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4d

    .line 318
    :cond_9
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v2, :cond_22

    .line 319
    invoke-static {p0, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_22

    .line 320
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Applying for background positioning permissions must include android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    invoke-static {v2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 326
    invoke-static {v2, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 327
    invoke-static {v2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_26

    .line 334
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Because it includes background location permissions, do not apply for permissions unrelated to location"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    :goto_4d
    return-void
.end method

.method static checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 627
    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method static checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 640
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;

    .line 641
    iget-object v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_6d

    .line 657
    iget p0, v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    if-ge p0, p2, :cond_6c

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The AndroidManifest.xml file <uses-permission android:name=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" android:maxSdkVersion=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" /> does not meet the requirements, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7fffffff

    if-eq p2, p1, :cond_4e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "the minimum requirement for maxSdkVersion is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_61

    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "please delete the android:maxSdkVersion=\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\" attribute"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    return-void

    .line 653
    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Please register permissions in the AndroidManifest.xml file <uses-permission android:name=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" />"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkManifestPermissions(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_4

    goto/16 :goto_107

    .line 518
    :cond_4
    iget-object v0, p2, Lcom/hjq/permissions/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 519
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_108

    .line 524
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid7()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-static {p2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ApplicationInfo;)I

    move-result p2

    goto :goto_26

    .line 527
    :cond_1b
    iget-object v1, p2, Lcom/hjq/permissions/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    if-eqz v1, :cond_24

    .line 528
    iget-object p2, p2, Lcom/hjq/permissions/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    iget p2, p2, Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;->minSdkVersion:I

    goto :goto_26

    :cond_24
    const/16 p2, 0xe

    .line 534
    :goto_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_107

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 536
    invoke-static {v1}, Lcom/hjq/permissions/Permission;->isMustRegisterInManifestFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_2a

    .line 542
    :cond_3d
    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    .line 544
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 546
    const-string v1, "android.permission.BODY_SENSORS"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2a

    .line 550
    :cond_4e
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v4, 0x1e

    if-eqz v2, :cond_6f

    .line 553
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_6b

    .line 554
    invoke-static {v0, v3, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 555
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2a

    .line 557
    :cond_6b
    invoke-static {v0, v3}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2a

    .line 563
    :cond_6f
    const-string v2, "com.android.permission.GET_INSTALLED_APPS"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 567
    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2a

    .line 572
    :cond_7d
    invoke-static {v1}, Lcom/hjq/permissions/Permission;->getPermissionFromAndroidVersion(Ljava/lang/String;)I

    move-result v2

    if-lt p2, v2, :cond_85

    goto/16 :goto_107

    .line 578
    :cond_85
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/16 v5, 0x20

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v2, :cond_102

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    .line 579
    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_102

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    .line 580
    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto :goto_102

    .line 585
    :cond_a2
    const-string v2, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 586
    invoke-static {v0, v3, v5}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 592
    :cond_af
    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    if-eqz v2, :cond_c1

    .line 593
    invoke-static {v0, v5, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 595
    invoke-static {v0, v3, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 599
    :cond_c1
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 600
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 604
    :cond_d0
    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 605
    invoke-static {v0, v5, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 611
    :cond_dd
    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const/16 v1, 0x1d

    .line 612
    invoke-static {v0, v6, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 613
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 619
    :cond_f1
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 620
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 581
    :cond_102
    :goto_102
    invoke-static {v0, v6, v5}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2a

    :cond_107
    :goto_107
    return-void

    .line 520
    :cond_108
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No permissions are registered in the AndroidManifest.xml file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkMediaLocationPermission(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_89

    .line 121
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-static {v2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 123
    invoke-static {v2, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 124
    invoke-static {v2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 125
    invoke-static {v2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 126
    invoke-static {v2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 127
    invoke-static {v2, v6}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_e

    .line 132
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Because it includes access media location permissions, do not apply for permissions unrelated to access media location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_51
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x21

    if-lt p0, v0, :cond_74

    .line 137
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_89

    .line 138
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_89

    .line 139
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6c

    goto :goto_89

    .line 141
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must add android.permission.READ_MEDIA_IMAGES or android.permission.READ_MEDIA_VIDEO or android.permission.MANAGE_EXTERNAL_STORAGE rights to apply for android.permission.ACCESS_MEDIA_LOCATION rights"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_74
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_89

    .line 146
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_81

    goto :goto_89

    .line 148
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must add android.permission.READ_EXTERNAL_STORAGE or android.permission.MANAGE_EXTERNAL_STORAGE rights to apply for android.permission.ACCESS_MEDIA_LOCATION rights"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    :goto_89
    return-void
.end method

.method static checkNearbyDevicesPermission(Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 346
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.NEARBY_WIFI_DEVICES"

    if-nez v1, :cond_12

    .line 347
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_af

    .line 352
    :cond_12
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto/16 :goto_af

    :cond_1c
    if-nez p1, :cond_20

    goto/16 :goto_af

    .line 360
    :cond_20
    iget-object p0, p1, Lcom/hjq/permissions/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 362
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_af

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;

    .line 364
    iget-object v1, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    .line 365
    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_26

    .line 369
    :cond_43
    invoke-virtual {p1}, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->neverForLocation()Z

    move-result v1

    if-nez v1, :cond_26

    .line 377
    iget p0, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    const v0, 0x7fffffff

    const-string v1, "\" "

    if-eq p0, v0, :cond_66

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "android:maxSdkVersion=\""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    :cond_66
    const-string p0, ""

    .line 383
    :goto_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "If your app doesn\'t use "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to get physical location, please change the <uses-permission android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/> node in the manifest file to <uses-permission android:name=\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" android:usesPermissionFlags=\"neverForLocation\" "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/> node, if your app need use "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to get physical location, also need to add android.permission.ACCESS_FINE_LOCATION permissions"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    :goto_af
    return-void
.end method

.method static checkNotificationListenerPermission(Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 400
    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_23

    :cond_9
    if-nez p1, :cond_c

    goto :goto_23

    .line 408
    :cond_c
    iget-object p0, p1, Lcom/hjq/permissions/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    const/4 p1, 0x0

    .line 409
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_27

    .line 410
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;

    iget-object v1, v1, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;->permission:Ljava/lang/String;

    .line 411
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_23
    return-void

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 419
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No service registered permission attribute, please register <service android:permission=\"android.permission.BIND_NOTIFICATION_LISTENER_SERVICE\" > in AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkPermissionArgument(Ljava/util/List;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7b

    .line 68
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_7b

    .line 76
    :cond_b
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->getAndroidVersionCode()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-le v1, v2, :cond_15

    return v3

    :cond_15
    if-eqz p1, :cond_7a

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const-class v1, Lcom/hjq/permissions/Permission;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    array-length v2, v1

    if-nez v2, :cond_26

    return v3

    .line 89
    :cond_26
    array-length v2, v1

    :goto_27
    if-ge v0, v2, :cond_4a

    aget-object v4, v1, v0

    .line 90
    const-class v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_47

    :cond_38
    const/4 v5, 0x0

    .line 94
    :try_start_39
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 99
    :cond_4a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_4e

    .line 104
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a dangerous permission or special permission, please do not request dynamically"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7a
    return v3

    :cond_7b
    :goto_7b
    if-nez p1, :cond_7e

    return v0

    .line 71
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The requested permission cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkPictureInPicturePermission(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 430
    const-string v0, "android.permission.PICTURE_IN_PICTURE"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1f

    :cond_9
    if-nez p2, :cond_c

    goto :goto_1f

    .line 438
    :cond_c
    iget-object p1, p2, Lcom/hjq/permissions/AndroidManifestInfo;->activityInfoList:Ljava/util/List;

    const/4 p2, 0x0

    .line 439
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_23

    .line 440
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;

    iget-boolean v0, v0, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;->supportsPictureInPicture:Z

    if-eqz v0, :cond_20

    :goto_1f
    return-void

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 447
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 450
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No activity registered supportsPictureInPicture attribute, please register \n<activity android:name=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" android:supportsPictureInPicture=\"true\" > in AndroidManifest.xml"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static checkReadMediaVisualUserSelectedPermission(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 459
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 463
    :cond_9
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 464
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_22

    .line 469
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot request the android.permission.READ_MEDIA_VISUAL_USER_SELECTED permission alone. must add either android.permission.READ_MEDIA_IMAGES or android.permission.READ_MEDIA_VIDEO permission, or maybe both"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method static checkStoragePermission(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 160
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-nez v1, :cond_32

    .line 161
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 162
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 163
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 164
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 165
    invoke-static {p1, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    goto/16 :goto_ca

    .line 169
    :cond_32
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v1

    const/16 v7, 0x21

    if-lt v1, v7, :cond_49

    .line 170
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_49

    .line 173
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "When targetSdkVersion >= 33 should use android.permission.READ_MEDIA_IMAGES, android.permission.READ_MEDIA_VIDEO, android.permission.READ_MEDIA_AUDIO instead of android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_49
    :goto_49
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 179
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 180
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_be

    .line 199
    :cond_5c
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 201
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 202
    invoke-static {p1, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_77

    .line 205
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you have applied for MANAGE_EXTERNAL_STORAGE permissions, do not apply for the READ_EXTERNAL_STORAGE and WRITE_EXTERNAL_STORAGE permissions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_77
    :goto_77
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_ca

    :cond_80
    if-nez p2, :cond_83

    goto :goto_ca

    .line 219
    :cond_83
    iget-object p2, p2, Lcom/hjq/permissions/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;

    if-nez p2, :cond_88

    goto :goto_ca

    .line 226
    :cond_88
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->isScopedStorage(Landroid/content/Context;)Z

    move-result v0

    .line 228
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result p0

    .line 230
    iget-boolean p2, p2, Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;->requestLegacyExternalStorage:Z

    const/16 v1, 0x1d

    if-lt p0, v1, :cond_a9

    if-nez p2, :cond_a9

    .line 233
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a1

    if-eqz v0, :cond_a1

    goto :goto_a9

    .line 238
    :cond_a1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please register the android:requestLegacyExternalStorage=\"true\" attribute in the AndroidManifest.xml file, otherwise it will cause incompatibility with the old version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    :goto_a9
    const/16 p2, 0x1e

    if-lt p0, p2, :cond_ca

    .line 244
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_ca

    if-eqz v0, :cond_b6

    goto :goto_ca

    .line 250
    :cond_b6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The storage permission application is abnormal. If you have adapted the scope storage, please register the <meta-data android:name=\"ScopedStorage\" android:value=\"true\" /> attribute in the AndroidManifest.xml file. If there is no adaptation scope storage, please use android.permission.MANAGE_EXTERNAL_STORAGE to apply for permission"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_be
    :goto_be
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d3

    .line 189
    invoke-static {p1, v6}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_cb

    :cond_ca
    :goto_ca
    return-void

    .line 191
    :cond_cb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Because the MANAGE_EXTERNAL_STORAGE permission range is very large, you can read media files with it, and there is no need to apply for additional media permissions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_d3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you have applied for media permissions, do not apply for the READ_EXTERNAL_STORAGE and WRITE_EXTERNAL_STORAGE permissions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkTargetSdkVersion(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 479
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0x21

    goto :goto_2a

    .line 487
    :cond_1b
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x17

    goto :goto_2a

    .line 492
    :cond_26
    invoke-static {v0}, Lcom/hjq/permissions/Permission;->getPermissionFromAndroidVersion(Ljava/lang/String;)I

    move-result v1

    .line 496
    :goto_2a
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v1, :cond_31

    goto :goto_4

    .line 500
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Request "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " permission, The targetSdkVersion SDK must be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or more, if you do not want to upgrade targetSdkVersion, please apply with the old permission"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    return-void
.end method

.method static optimizeDeprecatedPermission(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 682
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    if-nez v0, :cond_4f

    .line 683
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 684
    const-string v0, "android.permission.NOTIFICATION_SERVICE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 686
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_1d
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 690
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 692
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_2e
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 696
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 697
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 700
    :cond_46
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 701
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_4f
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid12()Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 708
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 709
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 711
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_66
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 717
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_88

    .line 719
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 720
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_7d
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 724
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_88
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 730
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 731
    const-string v0, "android.permission.BODY_SENSORS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 733
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_a1
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid8()Z

    move-result v0

    if-nez v0, :cond_ba

    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 737
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 738
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 740
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ba
    return-void
.end method
