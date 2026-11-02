###### Class uts.sdk.modules.DCloudUniNetwork.SimpleDownloadCallback (uts.sdk.modules.DCloudUniNetwork.SimpleDownloadCallback)
.class public Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J+\u0010\u001c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0002\u0010 R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;",
        "Lokhttp3/Callback;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;",
        "specifyPath",
        "",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;Ljava/lang/String;)V",
        "downloadFilePath",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "exception",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "getTempFile",
        "Ljava/io/File;",
        "getRealPath",
        "getFile",
        "isAbsolute",
        "",
        "path",
        "isDescendant",
        "parent",
        "child",
        "stringSplit",
        "",
        "str",
        "delim",
        "(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;",
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
.field private downloadFilePath:Ljava/lang/String;

.field private listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

.field private specifyPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;Ljava/lang/String;)V
    .registers 6

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specifyPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    const-string v0, "/uni-download/"

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->downloadFilePath:Ljava/lang/String;

    .line 1848
    const-string v0, ""

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    .line 1850
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1851
    const-string v1, "unifile://"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1852
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    return-void

    .line 1854
    :cond_2b
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile(Lokhttp3/Response;)Ljava/io/File;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1946
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xa

    .line 1997
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1946
    const-string v7, "."

    const-string v8, "/"

    const-string v9, "cause"

    const-string v10, "errorMsg"

    const-string v11, "602001"

    const-string v12, "errorCode"

    const-string v13, "-1"

    const-string v14, "statusCode"

    const/4 v15, 0x1

    .line 2060
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    const/4 v4, 0x0

    .line 2059
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    if-nez v2, :cond_1ba

    .line 1947
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2, v8}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1948
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1949
    new-instance v2, Ljava/io/File;

    iget-object v6, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isDescendant(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6f

    new-array v0, v4, [Lkotlin/Pair;

    .line 1950
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 1951
    invoke-virtual {v0, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1952
    invoke-virtual {v0, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1953
    const-string v2, "This path is not supported"

    invoke-virtual {v0, v10, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1954
    invoke-virtual {v0, v9, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1955
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v2, :cond_69

    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1956
    :cond_69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6f
    const/4 v2, 0x0

    .line 1958
    iget-object v6, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v6, v8, v2, v15, v2}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    .line 1959
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v6, 0x2f

    if-eqz v2, :cond_b9

    .line 1960
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isAbsolute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1961
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    goto/16 :goto_1be

    .line 1963
    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v15}, Lio/dcloud/uts/UTSAndroid;->getAppTempPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1be

    .line 1967
    :cond_b9
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isAbsolute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1968
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    goto :goto_e4

    .line 1970
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1972
    :goto_e4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_f8

    .line 1975
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_f8

    .line 1976
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1979
    :cond_f8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_121

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_121

    new-array v6, v4, [Lkotlin/Pair;

    .line 1980
    invoke-static {v6}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v6

    .line 1981
    invoke-virtual {v6, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1982
    invoke-virtual {v6, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1983
    const-string v8, "The target file path is already a directory file, and file creation failed."

    invoke-virtual {v6, v10, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 1984
    invoke-virtual {v6, v9, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1985
    iget-object v15, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v15, :cond_122

    invoke-interface {v15, v6}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    goto :goto_122

    :cond_121
    const/4 v8, 0x0

    .line 1987
    :cond_122
    :goto_122
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_182

    const/4 v15, 0x2

    .line 1988
    invoke-static {v0, v7, v8, v15, v8}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    .line 1991
    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/Number;

    invoke-static {v2, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v6

    if-ltz v6, :cond_144

    .line 1992
    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/Number;

    invoke-static {v0, v3, v2}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    .line 1993
    invoke-static {v0, v2, v8, v15, v8}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_146

    :cond_144
    move-object v2, v3

    move-object v3, v0

    .line 1995
    :goto_146
    check-cast v16, Ljava/lang/Number;

    move-object/from16 v6, v16

    .line 1996
    :goto_14a
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    invoke-static {v6, v7}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1998
    invoke-static {v6}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v6

    goto :goto_14a

    .line 2000
    :cond_17d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2002
    :cond_182
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b9

    .line 2004
    :try_start_188
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18b} :catch_18c

    return-object v2

    :catch_18c
    move-exception v0

    .line 2006
    new-array v3, v4, [Lkotlin/Pair;

    .line 2007
    invoke-static {v3}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v3

    .line 2008
    invoke-virtual {v3, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2009
    invoke-virtual {v3, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2010
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2011
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v8, v4, v8}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2012
    new-instance v4, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v4, v0}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2013
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_1b9

    invoke-interface {v0, v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_1b9
    return-object v2

    .line 2019
    :cond_1ba
    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->getRealPath()Ljava/lang/String;

    move-result-object v2

    .line 2022
    :goto_1be
    const-string v6, "content-disposition"

    invoke-virtual {v0, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2023
    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_267

    .line 2024
    const-string v15, ";"

    invoke-virtual {v1, v6, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_267

    .line 2026
    move-object v15, v1

    check-cast v15, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;

    move-object/from16 v19, v3

    const/4 v15, 0x0

    .line 2028
    :goto_1db
    array-length v4, v6

    if-ge v15, v4, :cond_260

    .line 2029
    aget-object v4, v6, v15

    if-eqz v4, :cond_24a

    .line 2031
    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v20, v5

    const-string v5, "filename"

    move-object/from16 v21, v6

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v22, v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x2

    invoke-static {v4, v6, v9, v15, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_254

    .line 2032
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v1, v4, v6}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_254

    .line 2033
    array-length v6, v4

    const/4 v10, 0x1

    if-le v6, v10, :cond_254

    .line 2034
    aget-object v6, v4, v9

    .line 2035
    aget-object v4, v4, v10

    .line 2036
    new-instance v9, Lio/dcloud/uts/UTSRegExp;

    const-string v10, "^\"|\"$"

    const-string v15, "g"

    invoke-direct {v9, v10, v15}, Lio/dcloud/uts/UTSRegExp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_223

    .line 2038
    invoke-static {v6, v9, v3}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Lio/dcloud/uts/UTSRegExp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_223
    if-eqz v4, :cond_229

    .line 2041
    invoke-static {v4, v9, v3}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Lio/dcloud/uts/UTSRegExp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2043
    :cond_229
    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_254

    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_254

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x1

    invoke-static {v6, v5, v10}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_254

    if-eqz v4, :cond_254

    move-object/from16 v19, v4

    goto :goto_254

    :cond_24a
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v22, v15

    :cond_254
    :goto_254
    add-int/lit8 v15, v22, 0x1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_1db

    :cond_260
    move-object/from16 v20, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    goto :goto_26f

    :cond_267
    move-object/from16 v20, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v19, v3

    .line 2056
    :goto_26f
    move-object/from16 v4, v19

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "?"

    if-eqz v4, :cond_2d8

    .line 2057
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v4

    .line 2058
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v15, 0x2

    invoke-static {v4, v8, v10, v15, v10}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    .line 2059
    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/Number;

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v8

    if-ltz v8, :cond_2d8

    .line 2060
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Number;

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v4, v6, v10, v15, v10}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2061
    invoke-static {v4, v7, v10, v15, v10}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/Number;

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v6

    if-gez v6, :cond_2bd

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2d8

    .line 2062
    :cond_2bd
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-static {v6, v8, v9, v15, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d6

    .line 2063
    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/Number;

    invoke-static {v4, v5, v10, v15, v10}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v8

    invoke-static {v4, v6, v8}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    :cond_2d6
    move-object/from16 v19, v4

    .line 2069
    :cond_2d8
    move-object/from16 v4, v19

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30e

    .line 2070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2071
    const-string v6, "content-type"

    invoke-virtual {v0, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2072
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_310

    .line 2074
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_30e
    move-object/from16 v4, v19

    .line 2077
    :cond_310
    const-string v0, "UTF-8"

    invoke-static {v4, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "decode(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2078
    check-cast v0, Ljava/lang/CharSequence;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v6, "separator"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlin/text/Regex;

    invoke-direct {v6, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2079
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x2

    invoke-static {v4, v5, v9, v15, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_348

    .line 2080
    new-instance v0, Lkotlin/text/Regex;

    const-string v5, "\\?"

    invoke-direct {v0, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2082
    :cond_348
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x50

    if-le v4, v5, :cond_371

    .line 2083
    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/Number;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v0, v4, v5}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 2084
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2086
    :cond_371
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f9

    const/4 v8, 0x0

    const/4 v15, 0x2

    .line 2087
    invoke-static {v0, v7, v8, v15, v8}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    .line 2090
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v5

    if-ltz v5, :cond_3b1

    .line 2091
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/Number;

    invoke-static {v0, v5, v4}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    .line 2092
    invoke-static {v0, v4, v8, v15, v8}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2093
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3af

    move-object v5, v4

    goto :goto_3b2

    :cond_3af
    move-object v3, v4

    goto :goto_3b2

    :cond_3b1
    move-object v5, v0

    .line 2100
    :goto_3b2
    check-cast v16, Ljava/lang/Number;

    move-object/from16 v4, v16

    .line 2101
    :goto_3b6
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3f9

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    check-cast v6, Ljava/lang/Number;

    invoke-static {v4, v6}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2103
    invoke-static {v4}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    goto :goto_3b6

    .line 2106
    :cond_3f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2107
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_41c

    .line 2110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_41c

    .line 2111
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2114
    :cond_41c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_458

    .line 2116
    :try_start_422
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_425} :catch_426

    return-object v2

    :catch_426
    move-exception v0

    const/4 v9, 0x0

    .line 2118
    new-array v3, v9, [Lkotlin/Pair;

    .line 2119
    invoke-static {v3}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v3

    .line 2120
    invoke-virtual {v3, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2121
    invoke-virtual {v3, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2122
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v24

    invoke-virtual {v3, v5, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2123
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v8, v10, v8}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2124
    new-instance v4, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v4, v0}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v23

    invoke-virtual {v3, v5, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2125
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_458

    invoke-interface {v0, v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_458
    return-object v2
.end method

.method public getRealPath()Ljava/lang/String;
    .registers 3

    .line 1941
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppTempPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    .line 1942
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .registers 6

    .line 1938
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAbsolute(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2131
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2132
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getParent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_29

    return v5

    .line 2135
    :cond_29
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v4

    :goto_35
    if-eqz v0, :cond_3e

    .line 2136
    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    return v5

    :cond_3e
    return v2
.end method

.method public isDescendant(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x1

    return p1

    .line 2145
    :cond_1a
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_22

    const/4 p1, 0x0

    return p1

    .line 2149
    :cond_22
    invoke-virtual {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isDescendant(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlin/Pair;

    .line 1858
    invoke-static {p1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 1859
    const-string v0, "statusCode"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1860
    const-string v0, "errorCode"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1861
    const-string v0, "errorMsg"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1862
    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1863
    new-instance v0, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v0, p2}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    const-string p2, "cause"

    invoke-virtual {p1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1864
    iget-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz p2, :cond_41

    invoke-interface {p2, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_41
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "call"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    const-string v3, "cause"

    const-string v4, "errorMsg"

    const-string v5, "errorCode"

    const-string v6, "statusCode"

    const-string v7, ""

    if-eqz v2, :cond_180

    .line 1868
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eqz v2, :cond_1ca

    .line 1870
    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->getTempFile()Ljava/io/File;

    move-result-object v10

    .line 1875
    :try_start_32
    invoke-static {v10}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v11

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v11
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_124
    .catchall {:try_start_32 .. :try_end_3a} :catchall_11d

    .line 1877
    :try_start_3a
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    const/16 v14, 0x2000

    .line 1879
    new-array v14, v14, [B

    const-wide/16 v15, 0x0

    .line 1881
    :goto_4e
    invoke-interface {v2, v14}, Lokio/BufferedSource;->read([B)I

    move-result v9

    const/4 v8, -0x1

    if-ne v9, v8, :cond_d1

    .line 1892
    invoke-interface {v11}, Lokio/BufferedSink;->flush()V

    .line 1893
    invoke-static {v10}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v8
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_60} :catch_117
    .catchall {:try_start_3a .. :try_end_60} :catchall_111

    .line 1894
    :try_start_60
    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->getFile(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v9

    .line 1895
    invoke-static {v9}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v12

    invoke-static {v12}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v12
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6c} :catch_cc
    .catchall {:try_start_60 .. :try_end_6c} :catchall_c7

    .line 1896
    :try_start_6c
    move-object v13, v8

    check-cast v13, Lokio/Source;

    invoke-interface {v12, v13}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 1897
    invoke-interface {v12}, Lokio/BufferedSink;->flush()V

    const/4 v13, 0x0

    new-array v14, v13, [Lkotlin/Pair;

    .line 1898
    invoke-static {v14}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v13

    .line 1899
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1900
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1901
    const-string v0, "tempFilePath"

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v0, v9}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1903
    :cond_9c
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_a5

    invoke-interface {v0, v13}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_a5} :catch_c1
    .catchall {:try_start_6c .. :try_end_a5} :catchall_bb

    :cond_a5
    if-eqz v11, :cond_aa

    .line 1917
    invoke-interface {v11}, Lokio/BufferedSink;->close()V

    :cond_aa
    if-eqz v12, :cond_af

    .line 1918
    invoke-interface {v12}, Lokio/BufferedSink;->close()V

    :cond_af
    if-eqz v8, :cond_b4

    .line 1919
    invoke-interface {v8}, Lokio/BufferedSource;->close()V

    .line 1920
    :cond_b4
    invoke-interface {v2}, Lokio/BufferedSource;->close()V

    .line 1921
    :goto_b7
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    return-void

    :catchall_bb
    move-exception v0

    move-object/from16 v17, v2

    move-object v9, v11

    goto/16 :goto_16a

    :catch_c1
    move-exception v0

    move-object/from16 v17, v2

    move-object v9, v11

    goto/16 :goto_12a

    :catchall_c7
    move-exception v0

    move-object/from16 v17, v2

    move-object v9, v11

    goto :goto_122

    :catch_cc
    move-exception v0

    move-object/from16 v17, v2

    move-object v9, v11

    goto :goto_129

    :cond_d1
    const/4 v8, 0x0

    .line 1885
    :try_start_d2
    invoke-interface {v11, v14, v8, v9}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    int-to-long v8, v9

    add-long/2addr v8, v15

    long-to-float v15, v8

    long-to-float v0, v12

    div-float/2addr v15, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float v15, v15, v0

    .line 1888
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_eb} :catch_117
    .catchall {:try_start_d2 .. :try_end_eb} :catchall_111

    move-object/from16 v17, v2

    :try_start_ed
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/Number;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Number;

    invoke-direct {v0, v15, v2, v8}, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 1889
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v2, :cond_105

    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onProgress(Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_105} :catch_10f
    .catchall {:try_start_ed .. :try_end_105} :catchall_10d

    :cond_105
    move-object/from16 v0, p2

    move-object/from16 v2, v17

    move-wide/from16 v15, v18

    goto/16 :goto_4e

    :catchall_10d
    move-exception v0

    goto :goto_114

    :catch_10f
    move-exception v0

    goto :goto_11a

    :catchall_111
    move-exception v0

    move-object/from16 v17, v2

    :goto_114
    move-object v9, v11

    const/4 v8, 0x0

    goto :goto_122

    :catch_117
    move-exception v0

    move-object/from16 v17, v2

    :goto_11a
    move-object v9, v11

    const/4 v8, 0x0

    goto :goto_129

    :catchall_11d
    move-exception v0

    move-object/from16 v17, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_122
    const/4 v12, 0x0

    goto :goto_16a

    :catch_124
    move-exception v0

    move-object/from16 v17, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_129
    const/4 v12, 0x0

    :goto_12a
    const/4 v13, 0x0

    .line 1905
    :try_start_12b
    new-array v2, v13, [Lkotlin/Pair;

    .line 1906
    invoke-static {v2}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v2

    .line 1907
    const-string v11, "-1"

    .line 1908
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-virtual {v2, v6, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1910
    invoke-virtual {v2, v5, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1911
    invoke-virtual {v2, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1912
    new-instance v4, Lio/dcloud/uniapp/SourceError;

    if-nez v0, :cond_145

    goto :goto_146

    :cond_145
    move-object v7, v0

    :goto_146
    invoke-direct {v4, v7}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v2, v3, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1914
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_155

    invoke-interface {v0, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_155
    .catchall {:try_start_12b .. :try_end_155} :catchall_169

    :cond_155
    if-eqz v9, :cond_15a

    .line 1917
    invoke-interface {v9}, Lokio/BufferedSink;->close()V

    :cond_15a
    if-eqz v12, :cond_15f

    .line 1918
    invoke-interface {v12}, Lokio/BufferedSink;->close()V

    :cond_15f
    if-eqz v8, :cond_164

    .line 1919
    invoke-interface {v8}, Lokio/BufferedSource;->close()V

    .line 1920
    :cond_164
    invoke-interface/range {v17 .. v17}, Lokio/BufferedSource;->close()V

    goto/16 :goto_b7

    :catchall_169
    move-exception v0

    :goto_16a
    if-eqz v9, :cond_16f

    .line 1917
    invoke-interface {v9}, Lokio/BufferedSink;->close()V

    :cond_16f
    if-eqz v12, :cond_174

    .line 1918
    invoke-interface {v12}, Lokio/BufferedSink;->close()V

    :cond_174
    if-eqz v8, :cond_179

    .line 1919
    invoke-interface {v8}, Lokio/BufferedSource;->close()V

    .line 1920
    :cond_179
    invoke-interface/range {v17 .. v17}, Lokio/BufferedSource;->close()V

    .line 1921
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    throw v0

    :cond_180
    const/4 v13, 0x0

    new-array v0, v13, [Lkotlin/Pair;

    .line 1925
    invoke-static {v0}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    .line 1926
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v7}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1927
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_1a0

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    goto :goto_1a1

    :cond_1a0
    const/4 v9, 0x0

    .line 1928
    :goto_1a1
    invoke-virtual {v0, v6, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1929
    invoke-virtual {v0, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1930
    invoke-virtual {v0, v4, v9}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1931
    new-instance v2, Lio/dcloud/uniapp/SourceError;

    if-nez v9, :cond_1af

    goto :goto_1b0

    :cond_1af
    move-object v7, v9

    :goto_1b0
    invoke-direct {v2, v7}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v2, v4}, Lio/dcloud/uniapp/SourceError;->setCode(Ljava/lang/Number;)V

    .line 1933
    invoke-virtual {v0, v3, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1934
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v2, :cond_1ca

    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_1ca
    return-void
.end method

.method public stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 2152
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2153
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2154
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 2156
    :goto_1e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 2157
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string v2, "nextToken(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3c
    return-object p1

    :cond_3d
    const/4 p1, 0x0

    return-object p1
.end method
