###### Class io.dcloud.feature.utsplugin.ParamConvertHelper (io.dcloud.feature.utsplugin.ParamConvertHelper)
.class public Lio/dcloud/feature/utsplugin/ParamConvertHelper;
.super Ljava/lang/Object;
.source "ParamConvertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParamConvertHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParamConvertHelper.kt\nio/dcloud/feature/utsplugin/ParamConvertHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,484:1\n1869#2,2:485\n1285#2,2:487\n1299#2,2:489\n1869#2,2:491\n1302#2:493\n*S KotlinDebug\n*F\n+ 1 ParamConvertHelper.kt\nio/dcloud/feature/utsplugin/ParamConvertHelper\n*L\n306#1:485,2\n346#1:487,2\n346#1:489,2\n359#1:491,2\n346#1:493\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0016\u0018\u0000 :2\u00020\u0001:\u0001:B5\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u00108\u001a\u0004\u0018\u00010\u00012\u0008\u00109\u001a\u0004\u0018\u00010\u0001R\u0014\u0010\r\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u001a\u0010\u0014\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u001a\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\u001c\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015\"\u0004\u0008\u001f\u0010\u0017R\u001a\u0010 \u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0015\"\u0004\u0008!\u0010\u0017R\u001a\u0010\"\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R\u001c\u0010$\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R \u0010)\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R$\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00105\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0015\"\u0004\u00087\u0010\u0017\u00a8\u0006;"
    }
    d2 = {
        "Lio/dcloud/feature/utsplugin/ParamConvertHelper;",
        "",
        "classTypeName",
        "",
        "actualTypeArguments",
        "",
        "Ljava/lang/reflect/Type;",
        "hostCallback",
        "Lcom/taobao/weex/bridge/JSCallback;",
        "isKeepAlive",
        "",
        "<init>",
        "(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;Z)V",
        "UTSCallbackType",
        "getUTSCallbackType",
        "()Ljava/lang/String;",
        "UTSObjectType",
        "getUTSObjectType",
        "StringClassFlag",
        "getStringClassFlag",
        "isUTSCallback",
        "()Z",
        "setUTSCallback",
        "(Z)V",
        "isUTSObject",
        "setUTSObject",
        "isPrimitive",
        "setPrimitive",
        "isListType",
        "setListType",
        "isUTSArray",
        "setUTSArray",
        "isMapType",
        "setMapType",
        "isAnyType",
        "setAnyType",
        "mHostCallback",
        "getMHostCallback",
        "()Lcom/taobao/weex/bridge/JSCallback;",
        "setMHostCallback",
        "(Lcom/taobao/weex/bridge/JSCallback;)V",
        "tClass",
        "Ljava/lang/Class;",
        "getTClass",
        "()Ljava/lang/Class;",
        "setTClass",
        "(Ljava/lang/Class;)V",
        "hostTypeArguments",
        "getHostTypeArguments",
        "()[Ljava/lang/reflect/Type;",
        "setHostTypeArguments",
        "([Ljava/lang/reflect/Type;)V",
        "[Ljava/lang/reflect/Type;",
        "mIsKeepAlive",
        "getMIsKeepAlive",
        "setMIsKeepAlive",
        "getInstance",
        "value",
        "Companion",
        "utsplugin_release"
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
.field public static final Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;


# instance fields
.field private final StringClassFlag:Ljava/lang/String;

.field private final UTSCallbackType:Ljava/lang/String;

.field private final UTSObjectType:Ljava/lang/String;

.field private hostTypeArguments:[Ljava/lang/reflect/Type;

.field private isAnyType:Z

.field private isListType:Z

.field private isMapType:Z

.field private isPrimitive:Z

.field private isUTSArray:Z

.field private isUTSCallback:Z

.field private isUTSObject:Z

.field private mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

.field private mIsKeepAlive:Z

.field private tClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;Z)V
    .registers 8

    const-string v0, "classTypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "io.dcloud.uts.UTSCallback"

    iput-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->UTSCallbackType:Ljava/lang/String;

    .line 100
    const-string v1, "io.dcloud.uts.UTSJSONObject"

    iput-object v1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->UTSObjectType:Ljava/lang/String;

    .line 101
    const-string v2, "java.lang.String"

    iput-object v2, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->StringClassFlag:Ljava/lang/String;

    .line 134
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mIsKeepAlive:Z

    .line 136
    iput-object p2, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->hostTypeArguments:[Ljava/lang/reflect/Type;

    .line 138
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_22

    .line 139
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSObject:Z

    return-void

    .line 143
    :cond_22
    sget-object p2, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 144
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isPrimitive:Z

    return-void

    .line 149
    :cond_2d
    invoke-virtual {p2, p1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->isListType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 150
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isListType:Z

    return-void

    .line 154
    :cond_36
    invoke-virtual {p2, p1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->isUTSArray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 155
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSArray:Z

    return-void

    .line 161
    :cond_3f
    invoke-virtual {p2, p1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->isAnyType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 162
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isAnyType:Z

    return-void

    .line 167
    :cond_48
    invoke-virtual {p2, p1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->isMapType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 168
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isMapType:Z

    return-void

    .line 173
    :cond_51
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    .line 175
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 176
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSCallback:Z

    goto :goto_8a

    .line 177
    :cond_67
    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_88

    iget-object p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    goto :goto_88

    :cond_82
    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSCallback:Z

    .line 181
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isPrimitive:Z

    goto :goto_8a

    .line 178
    :cond_88
    :goto_88
    iput-boolean p4, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isPrimitive:Z

    .line 183
    :goto_8a
    iput-object p3, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 133
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;Z)V

    return-void
.end method


# virtual methods
.method public final getHostTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .line 129
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->hostTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    return-object v2

    .line 198
    :cond_8
    const-string v3, "UTSNull"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    return-object v2

    .line 204
    :cond_11
    iget-boolean v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSObject:Z

    if-eqz v3, :cond_29

    .line 206
    new-instance v2, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v2}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lio/dcloud/uts/UTSJSONObject;->fillJSON(Ljava/lang/Object;)V

    return-object v2

    .line 212
    :cond_29
    iget-boolean v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isMapType:Z

    if-eqz v3, :cond_46

    .line 214
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v3, "parseObject(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 217
    :cond_46
    iget-boolean v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isAnyType:Z

    if-eqz v3, :cond_60

    .line 223
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_54

    .line 224
    new-instance v2, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v2, v0}, Lio/dcloud/uts/UTSJSONObject;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 226
    :cond_54
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_f2

    .line 227
    new-instance v2, Lio/dcloud/uts/UTSArray;

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Lio/dcloud/uts/UTSArray;-><init>(Ljava/util/List;)V

    return-object v2

    .line 234
    :cond_60
    iget-boolean v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isPrimitive:Z

    if-nez v3, :cond_71

    iget-boolean v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isListType:Z

    if-nez v4, :cond_71

    iget-boolean v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSArray:Z

    if-nez v4, :cond_71

    iget-object v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    if-nez v4, :cond_71

    return-object v2

    .line 240
    :cond_71
    iget-boolean v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSCallback:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_f0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_ef

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    iget-boolean v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mIsKeepAlive:Z

    if-eqz v4, :cond_9b

    .line 249
    invoke-static {}, Lio/dcloud/feature/utsplugin/ParamConvertHelperKt;->getUtsCallbackCache()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/uts/UTSCallback;

    if-eqz v4, :cond_9b

    .line 252
    iget-object v0, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-virtual {v4, v0}, Lio/dcloud/uts/UTSCallback;->setHostCallback(Lcom/taobao/weex/bridge/JSCallback;)V

    return-object v4

    :cond_9b
    const/4 v4, -0x1

    if-ne v0, v4, :cond_9f

    return-object v2

    .line 266
    :cond_9f
    :try_start_9f
    iget-object v0, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x3

    .line 269
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Lcom/taobao/weex/bridge/JSCallback;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 266
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 271
    iget-object v7, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v6

    aput-object v3, v4, v5

    const-string v5, ""

    aput-object v5, v4, v9

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c8
    .catch Ljava/lang/IllegalAccessException; {:try_start_9f .. :try_end_c8} :catch_d8
    .catch Ljava/lang/InstantiationException; {:try_start_9f .. :try_end_c8} :catch_d3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9f .. :try_end_c8} :catch_ce
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9f .. :try_end_c8} :catch_c9

    goto :goto_dc

    :catch_c9
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_dc

    :catch_ce
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_dc

    :catch_d3
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_dc

    :catch_d8
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 282
    :goto_dc
    iget-boolean v0, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mIsKeepAlive:Z

    if-eqz v0, :cond_ef

    .line 284
    invoke-static {}, Lio/dcloud/feature/utsplugin/ParamConvertHelperKt;->getUtsCallbackCache()Ljava/util/Map;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type io.dcloud.uts.UTSCallback"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Lio/dcloud/uts/UTSCallback;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ef
    return-object v2

    :cond_f0
    if-eqz v3, :cond_f3

    :cond_f2
    return-object v0

    .line 293
    :cond_f3
    iget-boolean v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSArray:Z

    if-eqz v3, :cond_13a

    .line 295
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONArray;

    if-nez v3, :cond_fc

    return-object v2

    .line 299
    :cond_fc
    iget-object v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->hostTypeArguments:[Ljava/lang/reflect/Type;

    if-eqz v3, :cond_139

    array-length v3, v3

    if-nez v3, :cond_104

    goto :goto_139

    .line 304
    :cond_104
    new-instance v2, Lio/dcloud/uts/UTSArray;

    invoke-direct {v2}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 305
    new-instance v7, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    sget-object v3, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    iget-object v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->hostTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 306
    check-cast v0, Ljava/lang/Iterable;

    .line 485
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_127
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_139

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 307
    invoke-virtual {v7, v3}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    invoke-virtual {v2, v3}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    goto :goto_127

    :cond_139
    :goto_139
    return-object v2

    .line 315
    :cond_13a
    iget-boolean v3, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isListType:Z

    if-eqz v3, :cond_15d

    .line 316
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_149

    .line 318
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 319
    :cond_149
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_15d

    .line 320
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_15d

    .line 322
    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 329
    :cond_15d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-nez v3, :cond_168

    return-object v2

    .line 331
    :cond_168
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 334
    :try_start_16f
    iget-object v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    if-eqz v4, :cond_2fd

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_186

    goto/16 :goto_2fd

    .line 338
    :cond_186
    iget-object v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v5, :cond_2ec

    .line 342
    iget-object v4, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KFunction;

    .line 343
    invoke-interface {v4}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2e3

    .line 344
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v7

    .line 346
    invoke-interface {v4}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 487
    new-instance v9, Ljava/util/LinkedHashMap;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 489
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1dd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2da

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 490
    move-object v11, v9

    check-cast v11, Ljava/util/Map;

    move-object v12, v10

    check-cast v12, Lkotlin/reflect/KParameter;

    .line 348
    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2c1

    .line 353
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/reflect/KClass;->getSupertypes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2c1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lkotlin/reflect/KClassifier;

    const/16 v19, 0x7

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/reflect/full/KClassifiers;->createType$default(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object v14

    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_232

    goto/16 :goto_2c1

    .line 355
    :cond_232
    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v14

    const-class v15, Lio/dcloud/uts/UTSArray;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_297

    instance-of v14, v13, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v14, :cond_297

    .line 357
    new-instance v15, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-interface {v14}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v14}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 358
    new-instance v14, Lio/dcloud/uts/UTSArray;

    invoke-direct {v14}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 359
    check-cast v13, Ljava/lang/Iterable;

    .line 491
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_27d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_281
    .catch Ljava/lang/IllegalAccessException; {:try_start_16f .. :try_end_281} :catch_307
    .catch Ljava/lang/InstantiationException; {:try_start_16f .. :try_end_281} :catch_300

    if-eqz v16, :cond_293

    move-object/from16 v16, v2

    :try_start_285
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 360
    invoke-virtual {v15, v2}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 361
    invoke-virtual {v14, v2}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    goto :goto_27d

    :cond_293
    move-object/from16 v16, v2

    move-object v13, v14

    goto :goto_2c3

    :cond_297
    move-object/from16 v16, v2

    .line 364
    instance-of v2, v13, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2c3

    .line 366
    sget-object v2, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-static {v14}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-virtual {v2, v14}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v18

    .line 367
    new-instance v17, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v23}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v17

    .line 368
    invoke-virtual {v2, v13}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_2c3

    :cond_2c1
    :goto_2c1
    move-object/from16 v16, v2

    .line 373
    :cond_2c3
    :goto_2c3
    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d3

    .line 374
    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_2d3
    invoke-interface {v11, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    goto/16 :goto_1dd

    :cond_2da
    move-object/from16 v16, v2

    .line 493
    check-cast v9, Ljava/util/Map;

    .line 381
    invoke-interface {v4, v9}, Lkotlin/reflect/KFunction;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f7

    :cond_2e3
    move-object/from16 v16, v2

    .line 383
    new-array v0, v6, [Ljava/lang/Object;

    invoke-interface {v4, v0}, Lkotlin/reflect/KFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f7

    :cond_2ec
    move-object/from16 v16, v2

    .line 387
    iget-object v0, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_2f7
    .catch Ljava/lang/IllegalAccessException; {:try_start_285 .. :try_end_2f7} :catch_2fb
    .catch Ljava/lang/InstantiationException; {:try_start_285 .. :try_end_2f7} :catch_2f9

    :goto_2f7
    move-object v2, v0

    goto :goto_30f

    :catch_2f9
    move-exception v0

    goto :goto_303

    :catch_2fb
    move-exception v0

    goto :goto_30a

    :cond_2fd
    :goto_2fd
    move-object/from16 v16, v2

    goto :goto_30d

    :catch_300
    move-exception v0

    move-object/from16 v16, v2

    .line 394
    :goto_303
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_30d

    :catch_307
    move-exception v0

    move-object/from16 v16, v2

    .line 392
    :goto_30a
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_30d
    move-object/from16 v2, v16

    :goto_30f
    if-nez v2, :cond_312

    return-object v16

    .line 403
    :cond_312
    iget-object v0, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 406
    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    :cond_31f
    :goto_31f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 408
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 409
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 410
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 417
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31f

    .line 418
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 419
    iget-object v8, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->UTSCallbackType:Ljava/lang/String;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_363

    .line 421
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    .line 422
    new-instance v8, Lio/dcloud/uts/UTSCallback;

    iget-object v9, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v9, v7, v6}, Lio/dcloud/uts/UTSCallback;-><init>(Lcom/taobao/weex/bridge/JSCallback;ILjava/lang/String;)V

    .line 424
    :try_start_35a
    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35d
    .catch Ljava/lang/IllegalAccessException; {:try_start_35a .. :try_end_35d} :catch_35e

    goto :goto_31f

    :catch_35e
    move-exception v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_31f

    .line 430
    :cond_363
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_410

    sget-object v7, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v10}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_376

    goto/16 :goto_410

    .line 437
    :cond_376
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Boolean;

    if-nez v7, :cond_401

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Number;

    if-eqz v7, :cond_388

    goto/16 :goto_401

    .line 445
    :cond_388
    const-string v7, "io.dcloud.uts.UTSArray"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d5

    .line 448
    new-instance v9, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    iget-object v12, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3b5

    .line 451
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    move-object v11, v7

    goto :goto_3b7

    :cond_3b5
    move-object/from16 v11, v16

    .line 456
    :goto_3b7
    new-instance v9, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    iget-object v12, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 457
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 458
    invoke-virtual {v9, v6}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 460
    :try_start_3ca
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3cd
    .catch Ljava/lang/IllegalAccessException; {:try_start_3ca .. :try_end_3cd} :catch_3cf

    goto/16 :goto_31f

    :catch_3cf
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_31f

    .line 467
    :cond_3d5
    new-instance v7, Lio/dcloud/feature/utsplugin/ParamConvertHelper;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getName(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v1, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/taobao/weex/bridge/JSCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 468
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 469
    invoke-virtual {v7, v6}, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 471
    :try_start_3f6
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f9
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f6 .. :try_end_3f9} :catch_3fb

    goto/16 :goto_31f

    :catch_3fb
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_31f

    .line 440
    :cond_401
    :goto_401
    :try_start_401
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_408
    .catch Ljava/lang/IllegalAccessException; {:try_start_401 .. :try_end_408} :catch_40a

    goto/16 :goto_31f

    :catch_40a
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_31f

    .line 433
    :cond_410
    :goto_410
    :try_start_410
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_417
    .catch Ljava/lang/IllegalAccessException; {:try_start_410 .. :try_end_417} :catch_419

    goto/16 :goto_31f

    :catch_419
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_31f

    :cond_41f
    return-object v2
.end method

.method public final getMHostCallback()Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 125
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    return-object v0
.end method

.method public final getMIsKeepAlive()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mIsKeepAlive:Z

    return v0
.end method

.method public final getStringClassFlag()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->StringClassFlag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getUTSCallbackType()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->UTSCallbackType:Ljava/lang/String;

    return-object v0
.end method

.method public final getUTSObjectType()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->UTSObjectType:Ljava/lang/String;

    return-object v0
.end method

.method public final isAnyType()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isAnyType:Z

    return v0
.end method

.method public final isListType()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isListType:Z

    return v0
.end method

.method public final isMapType()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isMapType:Z

    return v0
.end method

.method public final isPrimitive()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isPrimitive:Z

    return v0
.end method

.method public final isUTSArray()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSArray:Z

    return v0
.end method

.method public final isUTSCallback()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSCallback:Z

    return v0
.end method

.method public final isUTSObject()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSObject:Z

    return v0
.end method

.method public final setAnyType(Z)V
    .registers 2

    .line 123
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isAnyType:Z

    return-void
.end method

.method public final setHostTypeArguments([Ljava/lang/reflect/Type;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->hostTypeArguments:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public final setListType(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isListType:Z

    return-void
.end method

.method public final setMHostCallback(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mHostCallback:Lcom/taobao/weex/bridge/JSCallback;

    return-void
.end method

.method public final setMIsKeepAlive(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->mIsKeepAlive:Z

    return-void
.end method

.method public final setMapType(Z)V
    .registers 2

    .line 118
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isMapType:Z

    return-void
.end method

.method public final setPrimitive(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isPrimitive:Z

    return-void
.end method

.method public final setTClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->tClass:Ljava/lang/Class;

    return-void
.end method

.method public final setUTSArray(Z)V
    .registers 2

    .line 114
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSArray:Z

    return-void
.end method

.method public final setUTSCallback(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSCallback:Z

    return-void
.end method

.method public final setUTSObject(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->isUTSObject:Z

    return-void
.end method

###### Class io.dcloud.feature.utsplugin.ParamConvertHelper.Companion (io.dcloud.feature.utsplugin.ParamConvertHelper$Companion)
.class public final Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;
.super Ljava/lang/Object;
.source "ParamConvertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/utsplugin/ParamConvertHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;",
        "",
        "<init>",
        "()V",
        "typeNameCompat",
        "",
        "type",
        "Ljava/lang/reflect/Type;",
        "isPrimitiveType",
        "",
        "classTypeName",
        "isListType",
        "isUTSArray",
        "isMapType",
        "isAnyType",
        "utsplugin_release"
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
.method public static synthetic $r8$lambda$cCQHGEPwQAcoXGP_wNAc0BLM2Uk(Ljava/lang/reflect/Type;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat$lambda$0(Ljava/lang/reflect/Type;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;-><init>()V

    return-void
.end method

.method private static final typeNameCompat$lambda$0(Ljava/lang/reflect/Type;)Ljava/lang/CharSequence;
    .registers 2

    .line 34
    sget-object v0, Lio/dcloud/feature/utsplugin/ParamConvertHelper;->Companion:Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final isAnyType(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "classTypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "java.lang.Object"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "kotlin.Any"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x1

    return p1
.end method

.method public final isListType(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "classTypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 66
    const-string v2, "java.util.List"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    return v3
.end method

.method public final isMapType(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "classTypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string v0, "java.util.LinkedHashMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "io.dcloud.uts.Map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x1

    return p1
.end method

.method public final isPrimitiveType(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "classTypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "int"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 43
    const-string v0, "byte"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 44
    const-string v0, "float"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 45
    const-string v0, "double"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 46
    const-string v0, "short"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 47
    const-string v0, "kotlin.Int"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 48
    const-string v0, "kotlin.Long"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 49
    const-string v0, "kotlin.Double"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 50
    const-string v0, "kotlin.Float"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 51
    const-string v0, "kotlin.Byte"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 52
    const-string v0, "kotlin.String"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 53
    const-string v0, "java.lang.Number"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 54
    const-string v0, "java.lang.String"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 55
    const-string v0, "java.lang.Boolean"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 56
    const-string v0, "java.lang.Byte"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 57
    const-string v0, "boolean"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 58
    const-string v0, "long"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 p1, 0x0

    return p1

    :cond_90
    :goto_90
    const/4 p1, 0x1

    return p1
.end method

.method public final isUTSArray(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "classTypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 75
    const-string v2, "io.dcloud.uts.UTSArray"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    return v3
.end method

.method public final typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 13

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_15

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 32
    :cond_15
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_63

    .line 33
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getRawType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->typeNameCompat(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v1, "getActualTypeArguments(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    const-string p1, ", "

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.feature.utsplugin.ParamConvertHelper$Companion$$ExternalSyntheticLambda0 (io.dcloud.feature.utsplugin.ParamConvertHelper$Companion$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lio/dcloud/feature/utsplugin/ParamConvertHelper$Companion;->$r8$lambda$cCQHGEPwQAcoXGP_wNAc0BLM2Uk(Ljava/lang/reflect/Type;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
