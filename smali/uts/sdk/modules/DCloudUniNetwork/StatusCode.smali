###### Class uts.sdk.modules.DCloudUniNetwork.StatusCode (uts.sdk.modules.DCloudUniNetwork.StatusCode)
.class public Luts/sdk/modules/DCloudUniNetwork/StatusCode;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/StatusCode;",
        "",
        "<init>",
        "()V",
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
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;

.field private static statusCodeMap:Lio/dcloud/uts/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/StatusCode;->Companion:Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getStatusCodeMap$cp()Lio/dcloud/uts/Map;
    .registers 1

    .line 2165
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/StatusCode;->statusCodeMap:Lio/dcloud/uts/Map;

    return-object v0
.end method

.method public static final synthetic access$setStatusCodeMap$cp(Lio/dcloud/uts/Map;)V
    .registers 1

    .line 2165
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/StatusCode;->statusCodeMap:Lio/dcloud/uts/Map;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.StatusCode.Companion (uts.sdk.modules.DCloudUniNetwork.StatusCode$Companion)
.class public final Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/StatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006R(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;",
        "",
        "<init>",
        "()V",
        "statusCodeMap",
        "Lio/dcloud/uts/Map;",
        "",
        "getStatusCodeMap",
        "()Lio/dcloud/uts/Map;",
        "setStatusCodeMap",
        "(Lio/dcloud/uts/Map;)V",
        "initStatusCodeMap",
        "",
        "getStatus",
        "code",
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

    .line 2166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;-><init>()V

    return-void
.end method

.method private final initStatusCodeMap()V
    .registers 4

    .line 2169
    new-instance v0, Lio/dcloud/uts/Map;

    invoke-direct {v0}, Lio/dcloud/uts/Map;-><init>()V

    .line 2170
    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;->setStatusCodeMap(Lio/dcloud/uts/Map;)V

    .line 2171
    const-string v1, "100"

    const-string v2, "Continue"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2172
    const-string v1, "101"

    const-string v2, "Switching Protocol"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2173
    const-string v1, "200"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2174
    const-string v1, "201"

    const-string v2, "Created"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2175
    const-string v1, "202"

    const-string v2, "Accepted"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2176
    const-string v1, "203"

    const-string v2, "Non-Authoritative Information"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2177
    const-string v1, "204"

    const-string v2, "No Content"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2178
    const-string v1, "205"

    const-string v2, "Reset Content"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2179
    const-string v1, "206"

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2180
    const-string v1, "300"

    const-string v2, "Multiple Choice"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2181
    const-string v1, "301"

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2182
    const-string v1, "302"

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2183
    const-string v1, "303"

    const-string v2, "See Other"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2184
    const-string v1, "304"

    const-string v2, "Not Modified"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2185
    const-string v1, "305"

    const-string v2, "Use Proxy"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2186
    const-string v1, "306"

    const-string v2, "unused"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2187
    const-string v1, "307"

    const-string v2, "Temporary Redirect"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2188
    const-string v1, "308"

    const-string v2, "Permanent Redirect"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2189
    const-string v1, "400"

    const-string v2, "Bad Request"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2190
    const-string v1, "401"

    const-string v2, "Unauthorized"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2191
    const-string v1, "402"

    const-string v2, "Payment Required"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2192
    const-string v1, "403"

    const-string v2, "Forbidden"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2193
    const-string v1, "404"

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2194
    const-string v1, "405"

    const-string v2, "Method Not Allowed"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2195
    const-string v1, "406"

    const-string v2, "Not Acceptable"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2196
    const-string v1, "407"

    const-string v2, "Proxy Authentication Required"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2197
    const-string v1, "408"

    const-string v2, "Request Timeout"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2198
    const-string v1, "409"

    const-string v2, "Conflict"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2199
    const-string v1, "410"

    const-string v2, "Gone"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2200
    const-string v1, "411"

    const-string v2, "Length Required"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2201
    const-string v1, "412"

    const-string v2, "Precondition Failed"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2202
    const-string v1, "413"

    const-string v2, "Payload Too Large"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2203
    const-string v1, "414"

    const-string v2, "URI Too Long"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2204
    const-string v1, "415"

    const-string v2, "Unsupported Media Type"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2205
    const-string v1, "416"

    const-string v2, "Requested Range Not Satisfiable"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2206
    const-string v1, "417"

    const-string v2, "Expectation Failed"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2207
    const-string v1, "418"

    const-string v2, "I\'m a teapot"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2208
    const-string v1, "421"

    const-string v2, "Misdirected Request"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2209
    const-string v1, "426"

    const-string v2, "Upgrade Required"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2210
    const-string v1, "428"

    const-string v2, "Precondition Required"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2211
    const-string v1, "429"

    const-string v2, "Too Many Requests"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2212
    const-string v1, "431"

    const-string v2, "Request Header Fields Too Large"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2213
    const-string v1, "500"

    const-string v2, "Internal Server Error"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2214
    const-string v1, "501"

    const-string v2, "Not Implemented"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2215
    const-string v1, "502"

    const-string v2, "Bad Gateway"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2216
    const-string v1, "503"

    const-string v2, "Service Unavailable"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2217
    const-string v1, "504"

    const-string v2, "Gateway Timeout"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2218
    const-string v1, "505"

    const-string v2, "HTTP Version Not Supported"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2219
    const-string v1, "506"

    const-string v2, "Variant Also Negotiates"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2220
    const-string v1, "507"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    .line 2221
    const-string v1, "511"

    const-string v2, "Network Authentication Required"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/Map;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/dcloud/uts/Map;

    return-void
.end method


# virtual methods
.method public final getStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2224
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;->getStatusCodeMap()Lio/dcloud/uts/Map;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2226
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;->initStatusCodeMap()V

    .line 2228
    :cond_e
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/StatusCode$Companion;->getStatusCodeMap()Lio/dcloud/uts/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2229
    invoke-virtual {v0, p1}, Lio/dcloud/uts/Map;->has(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2230
    const-string p1, "unknown status"

    return-object p1

    .line 2232
    :cond_1e
    invoke-virtual {v0, p1}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getStatusCodeMap()Lio/dcloud/uts/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2167
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/StatusCode;->access$getStatusCodeMap$cp()Lio/dcloud/uts/Map;

    move-result-object v0

    return-object v0
.end method

.method public final setStatusCodeMap(Lio/dcloud/uts/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2167
    invoke-static {p1}, Luts/sdk/modules/DCloudUniNetwork/StatusCode;->access$setStatusCodeMap$cp(Lio/dcloud/uts/Map;)V

    return-void
.end method
