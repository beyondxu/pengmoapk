###### Class uts.sdk.modules.DCloudUniNetwork.SSLConfig (uts.sdk.modules.DCloudUniNetwork.SSLConfig)
.class public Luts/sdk/modules/DCloudUniNetwork/SSLConfig;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0015\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0016\u00a2\u0006\u0002\u0010\u0015R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SSLConfig;",
        "",
        "<init>",
        "()V",
        "keystore",
        "",
        "storePass",
        "ca",
        "",
        "[Ljava/lang/String;",
        "getKeystore",
        "setKeystore",
        "",
        "reassignedKs",
        "getStorePass",
        "setStorePass",
        "reassignedSp",
        "getCa",
        "()[Ljava/lang/String;",
        "setCa",
        "reassignedCa",
        "([Ljava/lang/String;)V",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private ca:[Ljava/lang/String;

.field private keystore:Ljava/lang/String;

.field private storePass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCa()[Ljava/lang/String;
    .registers 2

    .line 479
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->ca:[Ljava/lang/String;

    return-object v0
.end method

.method public getKeystore()Ljava/lang/String;
    .registers 2

    .line 459
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->keystore:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePass()Ljava/lang/String;
    .registers 2

    .line 469
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->storePass:Ljava/lang/String;

    return-object v0
.end method

.method public setCa([Ljava/lang/String;)V
    .registers 3

    const-string v0, "reassignedCa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->ca:[Ljava/lang/String;

    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .registers 3

    const-string v0, "reassignedKs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->keystore:Ljava/lang/String;

    return-void
.end method

.method public setStorePass(Ljava/lang/String;)V
    .registers 3

    const-string v0, "reassignedSp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->storePass:Ljava/lang/String;

    return-void
.end method
