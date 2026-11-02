###### Class io.dcloud.feature.weex.config.MimeInfoParser (io.dcloud.feature.weex.config.MimeInfoParser)
.class public Lio/dcloud/feature/weex/config/MimeInfoParser;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    }
.end annotation


# instance fields
.field final DATA_FLAG:Ljava/lang/String;

.field final ENCODE_FORMAT_FLAG:Ljava/lang/String;

.field final FILE_FORMAT_FLAG:Ljava/lang/String;

.field final FILE_TYPE_FLAG:Ljava/lang/String;

.field registerEncodeFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field registerFileFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field registerFileTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    .line 162
    const-string v0, "data:"

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->DATA_FLAG:Ljava/lang/String;

    .line 163
    const-string v0, "/"

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->FILE_TYPE_FLAG:Ljava/lang/String;

    .line 164
    const-string v0, ";"

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->FILE_FORMAT_FLAG:Ljava/lang/String;

    .line 165
    const-string v0, ","

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->ENCODE_FORMAT_FLAG:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    const-string v1, "keystore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    const-string v1, "cert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    const-string v1, "p12"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    const-string v1, "pem"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v1

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {v1, p0, v3, v2}, Lio/dcloud/feature/uniapp/adapter/AbsURIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    :try_start_15
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 9
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    .line 12
    :cond_2b
    invoke-static {p1}, Lio/dcloud/feature/weex/config/UniPathParser;->getAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_40

    .line 15
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_41

    return-object p0

    :cond_40
    return-object v0

    :catch_41
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_45
    return-object v0
.end method

.method public static getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/config/MimeInfoParser;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/MimeInfoParser;-><init>()V

    return-object v0
.end method

.method private parseMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    .registers 9

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;-><init>()V

    .line 4
    const-string v1, "data:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return-object v2

    .line 8
    :cond_f
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    return-object v2

    .line 11
    :cond_18
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    return-object v2

    .line 14
    :cond_21
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    return-object v2

    :cond_2a
    const/4 v2, 0x5

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v0, v2}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$102(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$202(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$302(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$402(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser;->parseMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3
    invoke-static {p1, p0}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$000(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Lio/dcloud/feature/weex/config/MimeInfoParser;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1
.end method

###### Class io.dcloud.feature.weex.config.MimeInfoParser.MimeInfo (io.dcloud.feature.weex.config.MimeInfoParser$MimeInfo)
.class public Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/config/MimeInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeInfo"
.end annotation


# instance fields
.field private dataContent:Ljava/lang/String;

.field private encodeFormat:Ljava/lang/String;

.field private fileFormat:Ljava/lang/String;

.field private fileType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Lio/dcloud/feature/weex/config/MimeInfoParser;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->isValid(Lio/dcloud/feature/weex/config/MimeInfoParser;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    return-object p1
.end method

.method private isValid(Lio/dcloud/feature/weex/config/MimeInfoParser;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_45

    .line 5
    :cond_22
    iget-object v0, p1, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    iget-object v2, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    return v1

    .line 8
    :cond_2d
    iget-object v0, p1, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    iget-object v2, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    return v1

    .line 11
    :cond_38
    iget-object p1, p1, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v1

    :cond_43
    const/4 p1, 0x1

    return p1

    :cond_45
    :goto_45
    return v1
.end method


# virtual methods
.method public getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 6
    :cond_17
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 8
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 10
    :cond_2d
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    const-string v1, "filepath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    if-eqz p1, :cond_62

    .line 14
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {v0, p1, v3, v2}, Lio/dcloud/feature/uniapp/adapter/AbsURIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    :try_start_4e
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 21
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_5e

    return-object p1

    :catch_5e
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_62
    return-object v1
.end method

.method public getDataContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodeFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFileFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public setDataContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->dataContent:Ljava/lang/String;

    return-void
.end method

.method public setEncodeFormat(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->encodeFormat:Ljava/lang/String;

    return-void
.end method

.method public setFileFormat(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileFormat:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->fileType:Ljava/lang/String;

    return-void
.end method
