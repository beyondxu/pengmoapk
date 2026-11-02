###### Class com.hjq.permissions.OnPermissionInterceptor (com.hjq.permissions.OnPermissionInterceptor)
.class public interface abstract Lcom/hjq/permissions/OnPermissionInterceptor;
.super Ljava/lang/Object;
.source "OnPermissionInterceptor.java"


# virtual methods
.method public abstract deniedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract launchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation
.end method

###### Class com.hjq.permissions.OnPermissionInterceptor.CC (com.hjq.permissions.OnPermissionInterceptor$-CC)
.class public final synthetic Lcom/hjq/permissions/OnPermissionInterceptor$-CC;
.super Ljava/lang/Object;
.source "OnPermissionInterceptor.java"


# direct methods
.method public static $default$deniedPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 6
    .param p0, "_this"    # Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 0
    if-nez p5, :cond_3

    return-void

    .line 59
    :cond_3
    invoke-interface {p5, p3, p4}, Lcom/hjq/permissions/OnPermissionCallback;->onDenied(Ljava/util/List;Z)V

    return-void
.end method

.method public static $default$finishPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 5
    .param p0, "_this"    # Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 0
    return-void
.end method

.method public static $default$grantedPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .registers 6
    .param p0, "_this"    # Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 0
    if-nez p5, :cond_3

    return-void

    .line 42
    :cond_3
    invoke-interface {p5, p3, p4}, Lcom/hjq/permissions/OnPermissionCallback;->onGranted(Ljava/util/List;Z)V

    return-void
.end method

.method public static $default$launchPermissionRequest(Lcom/hjq/permissions/OnPermissionInterceptor;Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V
    .registers 4
    .param p0, "_this"    # Lcom/hjq/permissions/OnPermissionInterceptor;

    .line 25
    invoke-static {p1, p2, p0, p3}, Lcom/hjq/permissions/PermissionFragment;->launch(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void
.end method
