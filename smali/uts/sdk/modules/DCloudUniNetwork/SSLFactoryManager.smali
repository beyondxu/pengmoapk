###### Class uts.sdk.modules.DCloudUniNetwork.SSLFactoryManager (uts.sdk.modules.DCloudUniNetwork.SSLFactoryManager)
.class public Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0006H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;",
        "",
        "<init>",
        "()V",
        "cacheSSLFactory",
        "Lio/dcloud/uts/Map;",
        "Luts/sdk/modules/DCloudUniNetwork/SSLConfig;",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSSLSocketFactory",
        "sslConfig",
        "Companion",
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


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;

.field private static instance:Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;


# instance fields
.field private cacheSSLFactory:Lio/dcloud/uts/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/Map<",
            "Luts/sdk/modules/DCloudUniNetwork/SSLConfig;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->Companion:Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Lio/dcloud/uts/Map;

    invoke-direct {v0}, Lio/dcloud/uts/Map;-><init>()V

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->cacheSSLFactory:Lio/dcloud/uts/Map;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;
    .registers 1

    .line 489
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->instance:Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;)V
    .registers 1

    .line 489
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->instance:Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;

    return-void
.end method


# virtual methods
.method public getSSLSocketFactory(Luts/sdk/modules/DCloudUniNetwork/SSLConfig;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    const-string v0, "PKCS12"

    const-string v1, "sslConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->cacheSSLFactory:Lio/dcloud/uts/Map;

    invoke-virtual {v1, p1}, Lio/dcloud/uts/Map;->has(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 496
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->cacheSSLFactory:Lio/dcloud/uts/Map;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    return-object p1

    .line 502
    :cond_18
    :try_start_18
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 503
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 504
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    .line 505
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->getKeystore()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/SSLConfig;->getStorePass()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 508
    :cond_3d
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 509
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_45} :catch_45

    :catch_45
    const/4 p1, 0x0

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.SSLFactoryManager.Companion (uts.sdk.modules.DCloudUniNetwork.SSLFactoryManager$Companion)
.class public final Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;",
        "getInstance",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;
    .registers 2

    .line 517
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 518
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;-><init>()V

    invoke-static {v0}, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;)V

    .line 520
    :cond_e
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/SSLFactoryManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
