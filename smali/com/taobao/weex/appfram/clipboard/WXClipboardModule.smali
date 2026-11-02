###### Class com.taobao.weex.appfram.clipboard.WXClipboardModule (com.taobao.weex.appfram.clipboard.WXClipboardModule)
.class public Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/clipboard/IWXClipboard;


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_FAILED:Ljava/lang/String; = "failed"

.field private static final RESULT_OK:Ljava/lang/String; = "success"


# instance fields
.field private final CLIP_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 3
    const-string v0, "WEEX_CLIP_KEY_MAIN"

    iput-object v0, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->CLIP_KEY:Ljava/lang/String;

    return-void
.end method

.method private coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;
    .registers 9

    .line 1
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 7
    :cond_7
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    .line 12
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "text/*"

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1d} :catch_81
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_5f
    .catchall {:try_start_e .. :try_end_1d} :catchall_5b

    .line 14
    :try_start_1d
    new-instance p2, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p2, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_59
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_57
    .catchall {:try_start_1d .. :try_end_24} :catchall_54

    .line 16
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x2000

    .line 17
    new-array v2, v2, [C

    .line 19
    :goto_2f
    invoke-virtual {p2, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_3a

    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 22
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_3e} :catch_51
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3e} :catch_4c
    .catchall {:try_start_24 .. :try_end_3e} :catchall_49

    .line 31
    :try_start_3e
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    nop

    :goto_43
    if-eqz p1, :cond_48

    .line 38
    :try_start_45
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    return-object v0

    :catchall_49
    move-exception v0

    move-object v1, p2

    goto :goto_74

    :catch_4c
    move-exception v1

    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_62

    :catch_51
    nop

    move-object v1, p2

    goto :goto_83

    :catchall_54
    move-exception p2

    move-object v0, p2

    goto :goto_74

    :catch_57
    move-exception p2

    goto :goto_62

    :catch_59
    nop

    goto :goto_83

    :catchall_5b
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_74

    :catch_5f
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    .line 39
    :goto_62
    :try_start_62
    const-string v2, "ClippedData Failure loading text."

    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_54

    if-eqz v1, :cond_6e

    .line 43
    :try_start_69
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_6e

    :catch_6d
    nop

    :cond_6e
    :goto_6e
    if-eqz p1, :cond_8f

    .line 50
    :try_start_70
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_8f

    goto :goto_8f

    :goto_74
    if-eqz v1, :cond_7b

    .line 51
    :try_start_76
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7b

    :catch_7a
    nop

    :cond_7b
    :goto_7b
    if-eqz p1, :cond_80

    .line 58
    :try_start_7d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_80

    .line 63
    :catch_80
    :cond_80
    throw v0

    :catch_81
    nop

    move-object p1, v1

    :goto_83
    if-eqz v1, :cond_8a

    .line 64
    :try_start_85
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8a

    :catch_89
    nop

    :cond_8a
    :goto_8a
    if-eqz p1, :cond_8f

    .line 71
    :try_start_8c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_8f

    .line 78
    :catch_8f
    :cond_8f
    :goto_8f
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :cond_94
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_a0

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a0
    return-object v1
.end method


# virtual methods
.method public getString(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const-string v3, ""

    const-string v4, "data"

    const-string v5, "failed"

    const-string v6, "result"

    if-eqz v1, :cond_40

    .line 6
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-lez v7, :cond_40

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 10
    const-string/jumbo v5, "success"

    :cond_36
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3c

    move-object v3, v0

    .line 11
    :cond_3c
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 13
    :cond_40
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    if-eqz p1, :cond_4b

    .line 18
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_4b
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3
    const-string v1, "WEEX_CLIP_KEY_MAIN"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
