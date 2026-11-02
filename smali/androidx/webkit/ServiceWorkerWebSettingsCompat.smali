###### Class androidx.webkit.ServiceWorkerWebSettingsCompat (androidx.webkit.ServiceWorkerWebSettingsCompat)
.class public abstract Landroidx/webkit/ServiceWorkerWebSettingsCompat;
.super Ljava/lang/Object;
.source "ServiceWorkerWebSettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/ServiceWorkerWebSettingsCompat$CacheMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllowContentAccess()Z
.end method

.method public abstract getAllowFileAccess()Z
.end method

.method public abstract getBlockNetworkLoads()Z
.end method

.method public abstract getCacheMode()I
.end method

.method public abstract getRequestedWithHeaderMode()I
.end method

.method public abstract setAllowContentAccess(Z)V
.end method

.method public abstract setAllowFileAccess(Z)V
.end method

.method public abstract setBlockNetworkLoads(Z)V
.end method

.method public abstract setCacheMode(I)V
.end method

.method public abstract setRequestedWithHeaderMode(I)V
.end method

###### Class androidx.webkit.ServiceWorkerWebSettingsCompat.CacheMode (androidx.webkit.ServiceWorkerWebSettingsCompat$CacheMode)
.class public interface abstract annotation Landroidx/webkit/ServiceWorkerWebSettingsCompat$CacheMode;
.super Ljava/lang/Object;
.source "ServiceWorkerWebSettingsCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/ServiceWorkerWebSettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CacheMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
