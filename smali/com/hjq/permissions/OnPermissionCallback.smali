###### Class com.hjq.permissions.OnPermissionCallback (com.hjq.permissions.OnPermissionCallback)
.class public interface abstract Lcom/hjq/permissions/OnPermissionCallback;
.super Ljava/lang/Object;
.source "OnPermissionCallback.java"


# virtual methods
.method public abstract onDenied(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onGranted(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

###### Class com.hjq.permissions.OnPermissionCallback.CC (com.hjq.permissions.OnPermissionCallback$-CC)
.class public final synthetic Lcom/hjq/permissions/OnPermissionCallback$-CC;
.super Ljava/lang/Object;
.source "OnPermissionCallback.java"


# direct methods
.method public static $default$onDenied(Lcom/hjq/permissions/OnPermissionCallback;Ljava/util/List;Z)V
    .registers 3
    .param p0, "_this"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 0
    return-void
.end method
