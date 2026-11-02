###### Class okhttp3.EventListener (okhttp3.EventListener)
.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lokhttp3/EventListener$1;

    invoke-direct {v0}, Lokhttp3/EventListener$1;-><init>()V

    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
    .registers 2

    .line 57
    new-instance v0, Lokhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lokhttp3/EventListener$2;-><init>(Lokhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .registers 5
    .param p4    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .registers 6
    .param p4    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .registers 3

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .registers 3

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .registers 4

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .registers 3

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .registers 4

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .registers 3
    .param p2    # Lokhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

###### Class okhttp3.EventListener.AnonymousClass1 (okhttp3.EventListener$1)
.class Lokhttp3/EventListener$1;
.super Lokhttp3/EventListener;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    return-void
.end method

###### Class okhttp3.EventListener.AnonymousClass2 (okhttp3.EventListener$2)
.class Lokhttp3/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/EventListener;->factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lokhttp3/EventListener;


# direct methods
.method constructor <init>(Lokhttp3/EventListener;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lokhttp3/EventListener$2;->val$listener:Lokhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .registers 2

    .line 59
    iget-object p1, p0, Lokhttp3/EventListener$2;->val$listener:Lokhttp3/EventListener;

    return-object p1
.end method

###### Class okhttp3.EventListener.Factory (okhttp3.EventListener$Factory)
.class public interface abstract Lokhttp3/EventListener$Factory;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Lokhttp3/Call;)Lokhttp3/EventListener;
.end method
