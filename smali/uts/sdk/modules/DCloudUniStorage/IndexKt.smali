###### Class uts.sdk.modules.DCloudUniStorage.IndexKt (uts.sdk.modules.DCloudUniStorage.IndexKt)
.class public final Luts/sdk/modules/DCloudUniStorage/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniStorage/IndexKt\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,564:1\n33#2:565\n33#2:566\n33#2:569\n33#2:570\n33#2:573\n33#2:574\n1855#3,2:567\n1855#3,2:571\n1855#3,2:575\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniStorage/IndexKt\n*L\n319#1:565\n322#1:566\n367#1:569\n370#1:570\n389#1:573\n396#1:574\n323#1:567,2\n371#1:571,2\n397#1:575,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fa\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u00104\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u0010\u001a\u0010\u00106\u001a\u0004\u0018\u00010\n2\u0006\u00107\u001a\u00020\n\u001a\u0018\u00108\u001a\u0004\u0018\u00010\n2\u0006\u00109\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u0010\u001aq\u0010:\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\n26\u0010;\u001a2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00060\u000f2!\u0010<\u001a\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00060\u0001\u001ai\u0010=\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c26\u0010>\u001a2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00060\u000f2!\u0010?\u001a\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00060\u0001\u001a5\u0010@\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u00102#\u0010A\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001\u001aV\u0010B\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00182#\u0010C\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00012!\u0010D\u001a\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020E0\u0001\u001a\u000e\u0010g\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020h\u001a\u0016\u0010i\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\n\u001a\u000e\u0010j\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020k\u001a\u0010\u0010l\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u0010\u001a\u000e\u0010m\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020n\u001a\u0006\u0010o\u001a\u00020\u001b\u001a\u000e\u0010p\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020q\u001a\u000e\u0010r\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010\u001a\u0010\u0010s\u001a\u00020\u00062\u0008\u0010/\u001a\u0004\u0018\u00010t\u001a\u0006\u0010u\u001a\u00020\u0006\"\u0014\u00101\u001a\u00020\u0010X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103\"0\u0010F\u001a!\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010I\"E\u0010J\u001a6\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00060\u000fj\u0002`K\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010M\"0\u0010N\u001a!\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`O\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010I\"2\u0010Q\u001a#\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0001j\u0002`R\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010I\"0\u0010T\u001a!\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`U\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010I\"\u001b\u0010W\u001a\u000c\u0012\u0004\u0012\u00020\u001b0!j\u0002`X\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010Z\"0\u0010[\u001a!\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\\\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010I\"0\u0010^\u001a!\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`_\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010I\"2\u0010a\u001a#\u0012\u0015\u0012\u0013\u0018\u00010.\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008c\u0010I\"\u001b\u0010d\u001a\u000c\u0012\u0004\u0012\u00020\u00060!j\u0002`e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010Z*@\u0010\u0000\"\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u0007\"\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\t\"\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u000b\"\u001d\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001*j\u0010\u000e\"2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00060\u000f22\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00060\u000f*@\u0010\u0013\"\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u0015\"\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u0016\"\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u0017\"\u001d\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001*D\u0010\u0019\"\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00012\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0001*@\u0010\u001a\"\u001d\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u001c\"\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u001d\"\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010\u001e\"\u001d\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001*\u0016\u0010 \"\u0008\u0012\u0004\u0012\u00020\u001b0!2\u0008\u0012\u0004\u0012\u00020\u001b0!*@\u0010\"\"\u001d\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010$\"\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010%\"\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010&\"\u001d\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010(\"\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010)\"\u001d\u0012\u0013\u0012\u00110*\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110*\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010+\"\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*@\u0010,\"\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001*D\u0010-\"\u001f\u0012\u0015\u0012\u0013\u0018\u00010.\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00060\u00012\u001f\u0012\u0015\u0012\u0013\u0018\u00010.\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00060\u0001*\u0016\u00100\"\u0008\u0012\u0004\u0012\u00020\u00060!2\u0008\u0012\u0004\u0012\u00020\u00060!\u00a8\u0006v"
    }
    d2 = {
        "SetStorageSuccessCallback",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;",
        "Lkotlin/ParameterName;",
        "name",
        "res",
        "",
        "SetStorageFailCallback",
        "Lio/dcloud/uniapp/UniError;",
        "SetStorageCompleteCallback",
        "",
        "SetStorage",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
        "options",
        "SetStorageSync",
        "Lkotlin/Function2;",
        "",
        "key",
        "data",
        "GetStorageSuccessCallback",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;",
        "GetStorageFailCallback",
        "GetStorageCompleteCallback",
        "GetStorage",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
        "GetStorageSync",
        "GetStorageInfoSuccessCallback",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
        "GetStorageInfoFailCallback",
        "GetStorageInfoCompleteCallback",
        "GetStorageInfo",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;",
        "GetStorageInfoSync",
        "Lkotlin/Function0;",
        "RemoveStorageSuccessCallback",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;",
        "RemoveStorageFailCallback",
        "RemoveStorageCompleteCallback",
        "RemoveStorage",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
        "RemoveStorageSync",
        "ClearStorageSuccessCallback",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;",
        "ClearStorageFailCallback",
        "ClearStorageCompleteCallback",
        "ClearStorage",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;",
        "option",
        "ClearStorageSync",
        "STORAGE_DATA_TYPE",
        "getSTORAGE_DATA_TYPE",
        "()Ljava/lang/String;",
        "filterNativeType",
        "src",
        "parseValue",
        "value",
        "praseGetStorage",
        "type",
        "uni_setStorageSync",
        "saveItemHandler",
        "removeItemHandler",
        "uni_setStorageAsync",
        "saveItemAsyncHandler",
        "removeItemAsyncHandler",
        "uni_getStorageSync",
        "getItemHandler",
        "uni_getStorageAsync",
        "getItemAsyncHandler",
        "includesKey",
        "",
        "setStorage",
        "Luts/sdk/modules/DCloudUniStorage/SetStorage;",
        "getSetStorage",
        "()Lkotlin/jvm/functions/Function1;",
        "setStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageSync;",
        "getSetStorageSync",
        "()Lkotlin/jvm/functions/Function2;",
        "getStorage",
        "Luts/sdk/modules/DCloudUniStorage/GetStorage;",
        "getGetStorage",
        "getStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageSync;",
        "getGetStorageSync",
        "getStorageInfo",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfo;",
        "getGetStorageInfo",
        "getStorageInfoSync",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSync;",
        "getGetStorageInfoSync",
        "()Lkotlin/jvm/functions/Function0;",
        "removeStorage",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorage;",
        "getRemoveStorage",
        "removeStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageSync;",
        "getRemoveStorageSync",
        "clearStorage",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorage;",
        "getClearStorage",
        "clearStorageSync",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageSync;",
        "getClearStorageSync",
        "setStorageByJs",
        "Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;",
        "setStorageSyncByJs",
        "getStorageByJs",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;",
        "getStorageSyncByJs",
        "getStorageInfoByJs",
        "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;",
        "getStorageInfoSyncByJs",
        "removeStorageByJs",
        "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;",
        "removeStorageSyncByJs",
        "clearStorageByJs",
        "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;",
        "clearStorageSyncByJs",
        "uni-storage_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final STORAGE_DATA_TYPE:Ljava/lang/String; = "__TYPE"

.field private static final clearStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final clearStorageSync:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorageInfo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorageInfoSync:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
            ">;"
        }
    .end annotation
.end field

.field private static final getStorageSync:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final removeStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final removeStorageSync:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final setStorage:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final setStorageSync:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0qsGy2CsOZ8IbghfWufiBwF-oMk(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageByJs$lambda$35(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1L2v3pk0zXvt4syU8CtEaqU7Dgw(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageByJs$lambda$37(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3iMbGa2O0rlRFcSSgMq6NeoFlTs(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageByJs$lambda$31(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4AW88oGttVIAFFFFpMyRSUjpKBw(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage$lambda$12$lambda$11$lambda$10$lambda$9(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4JnoIAvBF1NbehwWuLV-Nqd35wo(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfo$lambda$17$lambda$16(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4W2cZT4gXqxcaKfx6qXX98RewuQ(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage$lambda$3$lambda$2$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4e9ESap-Qd_5c4gP2d9FJFJArxQ(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorage$lambda$21$lambda$20(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5DW49xBW22FwainwBuZ9nCoVTRw(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageSync$lambda$6$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9_TfDI3IwW6oKROUyWIzwW1IyCY(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage$lambda$12(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9d7103Zn-cUIQSE1yVxwWYjq4iM(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorage$lambda$21(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C1QO2kyuqPszdHWqCNzTPNg6_4c(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageByJs$lambda$40(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CBltzN2XTdhwyri_FgJC_LMFJns()Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoSync$lambda$19()Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$D4ncEhf8Ct8P7NeJFSyT_tTj-14(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage$lambda$3$lambda$2(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FSeVmMVbkuftM41hp0pwMpcdw24(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoByJs$lambda$32(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FnapWegMLMRpgek_62ahu1-t_TE(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageSync$lambda$6$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HXZicAA2ICxky5ZHRNTB94JqCzI(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage$lambda$12$lambda$11$lambda$10(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JJxpF2ZJPkY7-649kUngBaq0V1M(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageByJs$lambda$39(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LxujGKcX5tSqqKp0vyxfLBJjLK4(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorage$lambda$24$lambda$23(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M3nT2JCmVGtHB6VWG_s1Cs34-uk(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageByJs$lambda$26(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ORfmdEk755tjZKnmZTOdSZMXeAQ(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoByJs$lambda$33(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QerJ9PZwHOLKCjRNe8LfiaFQsUM(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageByJs$lambda$38(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T3qrPg92u79a0OiCQTQQBptTNaE(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageByJs$lambda$27(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ye2le0ZKJF5WNDDoqCYqw3v6WBM(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageByJs$lambda$36(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZmIeRjECwvOWHL-KYCmu0OHRWU0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage$lambda$12$lambda$11$lambda$7(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aVsEd_flE5Eh-TgcsAS1Kfil59c(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageSync$lambda$14(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$avl4Vt_RpKP2qx2ehzOUgeNC1rM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageSync$lambda$14$lambda$13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cJx7K8wi74TbBpt62ewQ0tjixC0(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageByJs$lambda$29(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cpro45GXFfptxX7vCwnBwJfTrkE(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage$lambda$12$lambda$11(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kYYdJAKG0rOb4YCwscjHqGxp_vE(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorage$lambda$24(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lCiLx542aKoKhIM2nEZIO4JTyHU(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfo$lambda$17(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lDH2WiFSu6M0URDv0AoMwa8w6e8(Ljava/lang/String;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageSync$lambda$22(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mau_J_Y2pFdgclXJdLtEcDOpVzU()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageSync$lambda$25()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$nhg_S1GdulTr4lvOHTar8fcrP8A(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage$lambda$3(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nrtx1Bnb94oi8F_B9KUvS5m0M5I(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoByJs$lambda$34(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qsURenNGpF20n-Os4s4YO_4IzL4(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageSync$lambda$6(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v1xyJxdopna3u1nfWMi4V7Yyou8(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage$lambda$3$lambda$2$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v2YA1v0Kny-Z3XXhU-EeDIaJCOQ(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageByJs$lambda$28(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zElm0y4QtYGkqG812hidOt4cryU(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageByJs$lambda$30(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 269
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda35;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage:Lkotlin/jvm/functions/Function1;

    .line 288
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda36;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageSync:Lkotlin/jvm/functions/Function2;

    .line 302
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda37;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage:Lkotlin/jvm/functions/Function1;

    .line 345
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageSync:Lkotlin/jvm/functions/Function1;

    .line 359
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfo:Lkotlin/jvm/functions/Function1;

    .line 388
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoSync:Lkotlin/jvm/functions/Function0;

    .line 412
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorage:Lkotlin/jvm/functions/Function1;

    .line 428
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageSync:Lkotlin/jvm/functions/Function1;

    .line 435
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorage:Lkotlin/jvm/functions/Function1;

    .line 451
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageSync:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final clearStorage$lambda$24(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;
    .registers 2

    .line 436
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda9;-><init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)V

    const/4 p0, 0x0

    .line 449
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 436
    invoke-static {v0, p0}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    .line 450
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final clearStorage$lambda$24$lambda$23(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;
    .registers 5

    .line 437
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-nez v0, :cond_35

    .line 439
    new-instance v0, Lio/dcloud/uniapp/UniError;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "error:storage not found."

    const-string v3, "uni-clearStorage"

    invoke-direct {v0, v3, v1, v2}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    if-eqz p0, :cond_27

    .line 440
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz p0, :cond_32

    .line 441
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 444
    :cond_35
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/db/DCStorage;->performClear(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 445
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;-><init>()V

    if-eqz p0, :cond_54

    .line 446
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    if-eqz p0, :cond_5f

    .line 447
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_5f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final clearStorageByJs(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V
    .registers 6

    .line 548
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorage:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_19

    .line 549
    new-instance v1, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;

    .line 548
    new-instance v2, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda16;-><init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V

    new-instance v3, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda17;-><init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V

    new-instance v4, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda18;-><init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V

    .line 549
    invoke-direct {v1, v2, v3, v4}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 548
    :goto_1a
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final clearStorageByJs$lambda$38(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;)Lkotlin/Unit;
    .registers 4

    .line 550
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final clearStorageByJs$lambda$39(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 4

    .line 552
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final clearStorageByJs$lambda$40(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 554
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final clearStorageSync$lambda$25()Lkotlin/Unit;
    .registers 3

    .line 452
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-nez v0, :cond_f

    .line 454
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 456
    :cond_f
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/util/db/DCStorage;->performClear(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 457
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final clearStorageSyncByJs()V
    .registers 1

    .line 562
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageSync:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final filterNativeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "src"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    goto :goto_69

    :sswitch_d
    const-string v0, "Double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_16
    const-string v0, "ULong"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_1f
    const-string v0, "UByte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_28
    const-string v0, "Short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_67

    :sswitch_31
    const-string v0, "Float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_3a
    const-string v0, "UInt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_43
    const-string v0, "Long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_4c
    const-string v0, "Byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_55
    const-string v0, "Int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    :sswitch_5e
    const-string v0, "UShort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_69

    .line 94
    :cond_67
    :goto_67
    const-string p0, "number"

    :cond_69
    :goto_69
    return-object p0

    :sswitch_data_6a
    .sparse-switch
        -0x6a317ed9 -> :sswitch_5e
        0x11fcf -> :sswitch_55
        0x1fd528 -> :sswitch_4c
        0x243a9c -> :sswitch_43
        0x27c35a -> :sswitch_3a
        0x40d323c -> :sswitch_31
        0x4c2945c -> :sswitch_28
        0x4cda2fd -> :sswitch_1f
        0x4d20871 -> :sswitch_16
        0x7a5c67f1 -> :sswitch_d
    .end sparse-switch
.end method

.method public static final getClearStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 435
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getClearStorageSync()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 451
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->clearStorageSync:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getGetStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 302
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getGetStorageInfo()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 359
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfo:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getGetStorageInfoSync()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;",
            ">;"
        }
    .end annotation

    .line 388
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoSync:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final getGetStorageSync()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 345
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageSync:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getRemoveStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 412
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getRemoveStorageSync()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 428
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageSync:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getSTORAGE_DATA_TYPE()Ljava/lang/String;
    .registers 1

    .line 91
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getSetStorage()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 269
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getSetStorageSync()Lkotlin/jvm/functions/Function2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageSync:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method private static final getStorage$lambda$12(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;)Lkotlin/Unit;
    .registers 5

    .line 303
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 304
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_3a

    .line 305
    new-instance v0, Lio/dcloud/uniapp/UniError;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "storage not found."

    const-string v3, "uni-setStorage"

    invoke-direct {v0, v3, v1, v2}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_2e
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 310
    :cond_3a
    new-instance v1, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 p0, 0x0

    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 310
    invoke-static {v1, p0}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    .line 344
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorage$lambda$12$lambda$11(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 311
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v1, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0, v0, v1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->uni_getStorageAsync(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 342
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorage$lambda$12$lambda$11$lambda$10(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 565
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 320
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/common/util/db/DCStorage;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p0

    .line 321
    iget v1, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v1, :cond_44

    .line 566
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 323
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type java.util.List<kotlin.String>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 567
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    goto :goto_30

    .line 330
    :cond_44
    new-instance p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda34;

    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lio/dcloud/uts/UTSArray;->find(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_52

    return v2

    :cond_52
    const/4 p0, 0x0

    return p0
.end method

.method private static final getStorage$lambda$12$lambda$11$lambda$10$lambda$9(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 331
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 332
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static final getStorage$lambda$12$lambda$11$lambda$7(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 312
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/common/util/db/DCStorage;

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/dcloud/common/util/db/DCStorage;->performGetItem(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 313
    iget p1, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz p1, :cond_23

    .line 314
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getStorageByJs(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V
    .registers 7

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorage:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda25;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V

    new-instance v4, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda26;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V

    new-instance v5, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda27;

    invoke-direct {v5, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda27;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V

    invoke-direct {v1, v2, v3, v4, v5}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getStorageByJs$lambda$29(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;)Lkotlin/Unit;
    .registers 4

    .line 504
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageByJs$lambda$30(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 4

    .line 507
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageByJs$lambda$31(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 510
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageInfo$lambda$17(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;
    .registers 2

    .line 360
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda8;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)V

    const/4 p0, 0x0

    .line 386
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 360
    invoke-static {v0, p0}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    .line 387
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageInfo$lambda$17$lambda$16(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;
    .registers 7

    .line 361
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 363
    new-instance v1, Lio/dcloud/uniapp/UniError;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-string v3, "storage not found."

    const-string v4, "uni-setStorage"

    invoke-direct {v1, v4, v2, v3}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_25
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_2e
    new-instance v1, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;

    .line 569
    new-instance v2, Lio/dcloud/uts/UTSArray;

    invoke-direct {v2}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v3, 0x0

    .line 367
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const/16 v4, 0x2800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-direct {v1, v2, v3, v4}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;-><init>(Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 368
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v2

    .line 369
    iget v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c5

    iget-object v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v3, :cond_c5

    .line 570
    new-instance v3, Lio/dcloud/uts/UTSArray;

    invoke-direct {v3}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 371
    iget-object v2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const-string v4, "null cannot be cast to non-null type java.util.List<kotlin.String>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 571
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 372
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    goto :goto_6e

    .line 376
    :cond_82
    :try_start_82
    invoke-virtual {v1, v3}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->setKeys(Lio/dcloud/uts/UTSArray;)V

    .line 377
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/common/util/db/DCStorage;->getDBMaxLength(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const/16 v4, 0x400

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 378
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->setLimitSize(Ljava/lang/Number;)V

    .line 379
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/common/util/db/DCStorage;->getDBCurrentLength(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    .line 380
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->setCurrentSize(Ljava/lang/Number;)V
    :try_end_ba
    .catchall {:try_start_82 .. :try_end_ba} :catchall_bb

    goto :goto_bc

    :catchall_bb
    nop

    .line 383
    :goto_bc
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_c5

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_c5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getStorageInfoByJs(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V
    .registers 6

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfo:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;

    new-instance v2, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda28;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V

    new-instance v3, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V

    new-instance v4, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda30;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda30;-><init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V

    invoke-direct {v1, v2, v3, v4}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getStorageInfoByJs$lambda$32(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;)Lkotlin/Unit;
    .registers 4

    .line 519
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageInfoByJs$lambda$33(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 4

    .line 522
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageInfoByJs$lambda$34(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 525
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getStorageInfoSync$lambda$19()Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;
    .registers 6

    .line 389
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;

    .line 573
    new-instance v1, Lio/dcloud/uts/UTSArray;

    invoke-direct {v1}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v2, 0x0

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/16 v3, 0x2800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-direct {v0, v1, v2, v3}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;-><init>(Lio/dcloud/uts/UTSArray;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 390
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v1

    if-nez v1, :cond_26

    goto :goto_99

    .line 394
    :cond_26
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/db/DCStorage;->performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v2

    .line 395
    iget v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_64

    iget-object v3, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v3, :cond_64

    .line 574
    new-instance v3, Lio/dcloud/uts/UTSArray;

    invoke-direct {v3}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 397
    iget-object v2, v2, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const-string v4, "null cannot be cast to non-null type java.util.List<kotlin.String>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 575
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    goto :goto_4d

    .line 401
    :cond_61
    invoke-virtual {v0, v3}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->setKeys(Lio/dcloud/uts/UTSArray;)V

    .line 404
    :cond_64
    :try_start_64
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/db/DCStorage;->getDBMaxLength(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const/16 v4, 0x400

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v0, v2}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->setLimitSize(Ljava/lang/Number;)V

    .line 406
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/db/DCStorage;->getDBCurrentLength(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v4

    .line 407
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;->setCurrentSize(Ljava/lang/Number;)V
    :try_end_99
    .catchall {:try_start_64 .. :try_end_99} :catchall_99

    :catchall_99
    :goto_99
    return-object v0
.end method

.method public static final getStorageInfoSyncByJs()Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;
    .registers 1

    .line 530
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageInfoSync:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;

    return-object v0
.end method

.method private static final getStorageSync$lambda$14(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 346
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda33;-><init>()V

    invoke-static {p0, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->uni_getStorageSync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getStorageSync$lambda$14$lambda$13(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 347
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    .line 348
    const-string v1, ""

    if-nez v0, :cond_f

    return-object v1

    .line 351
    :cond_f
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lio/dcloud/common/util/db/DCStorage;->performGetItem(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 352
    iget v0, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    if-eqz v0, :cond_2e

    .line 353
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2e
    return-object v1
.end method

.method public static final getStorageSyncByJs(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->getStorageSync:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-string v0, "boolean"

    .line 104
    const-string v1, "undefined"

    const-string v2, "object"

    const-string v3, "string"

    const-string v4, "number"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    .line 106
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1, p0}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 107
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :cond_29
    const/4 v1, 0x0

    if-nez p0, :cond_2d

    return-object v1

    .line 114
    :cond_2d
    sget-object v4, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v4, p0}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_e5

    .line 116
    instance-of v0, p0, Lio/dcloud/uts/UTSJSONObject;

    if-nez v0, :cond_41

    instance-of v5, p0, Lio/dcloud/uts/Map;

    if-eqz v5, :cond_e5

    :cond_41
    if-eqz v0, :cond_4a

    .line 118
    check-cast p0, Lio/dcloud/uts/UTSJSONObject;

    invoke-virtual {p0}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object p0

    goto :goto_4c

    .line 120
    :cond_4a
    check-cast p0, Lio/dcloud/uts/Map;

    .line 122
    :goto_4c
    invoke-virtual {p0}, Lio/dcloud/uts/Map;->size()I

    move-result v0

    const/4 v5, 0x2

    const-string v6, ""

    if-ne v0, v5, :cond_dd

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->has(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    const-string v5, "type"

    invoke-virtual {p0, v5}, Lio/dcloud/uts/Map;->has(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 124
    invoke-virtual {p0, v5}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.String"

    if-nez v7, :cond_6f

    move-object v5, v6

    goto :goto_78

    .line 127
    :cond_6f
    invoke-virtual {p0, v5}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 129
    :goto_78
    sget-object v7, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->filterNativeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_97

    .line 130
    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 131
    :cond_97
    sget-object v7, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 132
    new-instance v1, Lio/dcloud/uts/UTSRegExp;

    const-string v3, "^\\d{4}-\\d{2}-\\d{2}T\\d{2}\\:\\d{2}\\:\\d{2}\\.\\d{3}Z$"

    invoke-direct {v1, v3, v6}, Lio/dcloud/uts/UTSRegExp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/dcloud/uts/UTSRegExp;->test(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 134
    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    .line 135
    new-instance v0, Lio/dcloud/uts/Date;

    invoke-direct {v0, p0}, Lio/dcloud/uts/Date;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 137
    :cond_d8
    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 139
    :cond_dd
    invoke-virtual {p0}, Lio/dcloud/uts/Map;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_e5

    return-object v6

    :cond_e5
    return-object v1
.end method

.method public static final praseGetStorage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v1, "{\"type\":\"undefined\"}"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 150
    :cond_20
    invoke-static {p1}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_89

    .line 154
    :cond_27
    invoke-static {v1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->parseValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2e

    return-object v2

    .line 157
    :cond_2e
    const-string v2, ""

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 159
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 160
    move-object p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/uts/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 161
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v2, "number"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "date"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 163
    const-string p0, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    .line 164
    new-instance p0, Lio/dcloud/uts/Date;

    invoke-direct {p0, p1}, Lio/dcloud/uts/Date;-><init>(Ljava/lang/Number;)V

    return-object p0

    .line 166
    :cond_6c
    const-string v2, "null"

    .line 167
    const-string v3, "array"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v2}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v2

    .line 168
    invoke-virtual {v2, p0}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_7f

    goto :goto_81

    .line 171
    :cond_7f
    const-string p0, "object"

    .line 165
    :goto_81
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_88

    return-object p1

    :cond_88
    return-object v1

    :cond_89
    :goto_89
    return-object p1
.end method

.method private static final removeStorage$lambda$21(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;
    .registers 2

    .line 413
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda32;-><init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)V

    const/4 p0, 0x0

    .line 426
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 413
    invoke-static {v0, p0}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    .line 427
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeStorage$lambda$21$lambda$20(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;
    .registers 5

    .line 414
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-nez v0, :cond_31

    .line 416
    new-instance v0, Lio/dcloud/uniapp/UniError;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "storage not found."

    const-string v3, "uni-removeStorage"

    invoke-direct {v0, v3, v1, v2}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_25
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 421
    :cond_31
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/util/db/DCStorage;->performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 422
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;-><init>()V

    .line 423
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_52
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_5b

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_5b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final removeStorageByJs(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V
    .registers 7

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorage:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda21;-><init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V

    new-instance v4, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda23;-><init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V

    new-instance v5, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda24;-><init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V

    invoke-direct {v1, v2, v3, v4, v5}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final removeStorageByJs$lambda$35(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;)Lkotlin/Unit;
    .registers 4

    .line 534
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeStorageByJs$lambda$36(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 4

    .line 537
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeStorageByJs$lambda$37(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 540
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeStorageSync$lambda$22(Ljava/lang/String;)Lkotlin/Unit;
    .registers 4

    .line 429
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v0

    if-nez v0, :cond_f

    .line 431
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 433
    :cond_f
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lio/dcloud/common/util/db/DCStorage;->performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 434
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final removeStorageSyncByJs(Ljava/lang/String;)V
    .registers 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->removeStorageSync:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final setStorage$lambda$3(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;
    .registers 2

    .line 270
    new-instance v0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda0;-><init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)V

    const/4 p0, 0x0

    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 270
    invoke-static {v0, p0}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    .line 287
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorage$lambda$3$lambda$2(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;
    .registers 5

    .line 271
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_3a

    .line 273
    new-instance v0, Lio/dcloud/uniapp/UniError;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "storage not found."

    const-string v3, "uni-setStorage"

    invoke-direct {v0, v3, v1, v2}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_2e
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 278
    :cond_3a
    new-instance v1, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda22;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda31;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0, v1, v2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->uni_setStorageAsync(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 285
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorage$lambda$3$lambda$2$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/common/util/db/DCStorage;

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 280
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorage$lambda$3$lambda$2$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 282
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/common/util/db/DCStorage;

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lio/dcloud/common/util/db/DCStorage;->performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 283
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final setStorageByJs(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V
    .registers 8

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorage:Lkotlin/jvm/functions/Function1;

    new-instance v1, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;->getData()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda10;-><init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V

    new-instance v5, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda12;-><init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V

    new-instance v6, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda13;-><init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V

    invoke-direct/range {v1 .. v6}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final setStorageByJs$lambda$26(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;)Lkotlin/Unit;
    .registers 4

    .line 489
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;->getSuccess()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorageByJs$lambda$27(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;
    .registers 4

    .line 492
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;->getFail()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorageByJs$lambda$28(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 495
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;->getComplete()Lio/dcloud/uts/UTSCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorageSync$lambda$6(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 5

    .line 289
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 290
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_18

    .line 291
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 293
    :cond_18
    new-instance v1, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda19;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0, p1, v1, v2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->uni_setStorageSync(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 301
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorageSync$lambda$6$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 295
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/common/util/db/DCStorage;

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 296
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStorageSync$lambda$6$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/common/util/db/DCStorage;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 298
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/common/util/db/DCStorage;

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lio/dcloud/common/util/db/DCStorage;->performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    .line 299
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final setStorageSyncByJs(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    sget-object v0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->setStorageSync:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final uni_getStorageAsync(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getItemAsyncHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "includesKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_42

    .line 244
    new-instance p1, Lio/dcloud/uniapp/UniError;

    const/4 p2, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    const-string v0, "getStorage:fail data not found"

    const-string v1, "uni-storage"

    invoke-direct {p1, v1, p2, v0}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_38

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_38
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 249
    :cond_42
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 250
    const-string v0, ""

    if-nez p2, :cond_51

    move-object p2, v0

    .line 253
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_6f

    move-object p1, v0

    .line 257
    :cond_6f
    invoke-static {p1}, Lio/dcloud/uts/StringKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1, p2}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 259
    new-instance p1, Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;

    invoke-direct {p1, v0}, Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;-><init>(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_8f

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_8f
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 263
    :cond_99
    invoke-static {p1, p2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->praseGetStorage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 264
    new-instance p2, Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;

    invoke-direct {p2, p1}, Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;-><init>(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_ab

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_ab
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b4
    return-void
.end method

.method public static final uni_getStorageSync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getItemHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 229
    const-string p1, ""

    if-nez p0, :cond_2c

    move-object p0, p1

    .line 232
    :cond_2c
    invoke-static {p0}, Lio/dcloud/uts/StringKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1, v0}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return-object p1

    :cond_3f
    if-nez v0, :cond_42

    move-object v0, p1

    .line 239
    :cond_42
    invoke-static {p0, v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->praseGetStorage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final uni_setStorageAsync(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveItemAsyncHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeItemAsyncHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->filterNativeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "string"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 203
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getData()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    goto :goto_52

    :cond_31
    const/4 v2, 0x2

    .line 205
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "type"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "data"

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_52
    if-nez v2, :cond_77

    .line 208
    new-instance p1, Lio/dcloud/uniapp/UniError;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    const-string v0, "data can not be stringify"

    const-string v1, "uni-storage"

    invoke-direct {p1, v1, p2, v0}, Lio/dcloud/uniapp/UniError;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_6d

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_6d
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_d6

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 212
    :cond_77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->parseValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b8

    .line 215
    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_b8
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance p1, Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;-><init>()V

    .line 222
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_cd

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_cd
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_d6

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d6
    return-void
.end method

.method public static final uni_setStorageSync(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "saveItemHandler"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "removeItemHandler"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1, p1}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->filterNativeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v2, "string"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 185
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_45

    :cond_2a
    const/4 v3, 0x2

    .line 187
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "type"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->parseValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 192
    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Luts/sdk/modules/DCloudUniStorage/IndexKt;->STORAGE_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7a
    if-nez v0, :cond_7e

    .line 195
    const-string v0, ""

    .line 197
    :cond_7e
    invoke-interface {p2, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda0 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda0)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda0;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda0;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;

    invoke-static {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$D4ncEhf8Ct8P7NeJFSyT_tTj-14(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda1 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda1)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda1;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$aVsEd_flE5Eh-TgcsAS1Kfil59c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda10 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda10)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda10;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda10;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$M3nT2JCmVGtHB6VWG_s1Cs34-uk(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/SetStorageSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda11 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda11)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda11;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$cpro45GXFfptxX7vCwnBwJfTrkE(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda12 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda12)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda12;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda12;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;

    check-cast p1, Lio/dcloud/uniapp/UniError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$T3qrPg92u79a0OiCQTQQBptTNaE(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda13 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda13)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda13;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda13;->f$0:Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$v2YA1v0Kny-Z3XXhU-EeDIaJCOQ(Luts/sdk/modules/DCloudUniStorage/SetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda14 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda14)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$ZmIeRjECwvOWHL-KYCmu0OHRWU0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda15 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda15)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda15;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda15;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$HXZicAA2ICxky5ZHRNTB94JqCzI(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda16 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda16)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda16;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda16;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$QerJ9PZwHOLKCjRNe8LfiaFQsUM(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/ClearStorageSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda17 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda17)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda17;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda17;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;

    check-cast p1, Lio/dcloud/uniapp/UniError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$JJxpF2ZJPkY7-649kUngBaq0V1M(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda18 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda18)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda18;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda18;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$C1QO2kyuqPszdHWqCNzTPNg6_4c(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda19 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda19)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda19;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda19;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$FnapWegMLMRpgek_62ahu1-t_TE(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda2 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda2)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda2;
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
    check-cast p1, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$lCiLx542aKoKhIM2nEZIO4JTyHU(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda20 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda20)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda20;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda20;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$5DW49xBW22FwainwBuZ9nCoVTRw(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda21 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda21)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda21;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda21;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$0qsGy2CsOZ8IbghfWufiBwF-oMk(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/RemoveStorageSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda22 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda22)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda22;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda22;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$4W2cZT4gXqxcaKfx6qXX98RewuQ(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda23 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda23)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda23;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda23;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;

    check-cast p1, Lio/dcloud/uniapp/UniError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$Ye2le0ZKJF5WNDDoqCYqw3v6WBM(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda24 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda24)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda24;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda24;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$1L2v3pk0zXvt4syU8CtEaqU7Dgw(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda25 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda25)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda25;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda25;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$cJx7K8wi74TbBpt62ewQ0tjixC0(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda26 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda26)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda26;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda26;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;

    check-cast p1, Lio/dcloud/uniapp/UniError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$zElm0y4QtYGkqG812hidOt4cryU(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda27 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda27)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda27;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda27;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$3iMbGa2O0rlRFcSSgMq6NeoFlTs(Luts/sdk/modules/DCloudUniStorage/GetStorageOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda28 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda28)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda28;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda28;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    check-cast p1, Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$FSeVmMVbkuftM41hp0pwMpcdw24(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda29 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda29)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    check-cast p1, Lio/dcloud/uniapp/UniError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$ORfmdEk755tjZKnmZTOdSZMXeAQ(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda3 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda3)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$CBltzN2XTdhwyri_FgJC_LMFJns()Luts/sdk/modules/DCloudUniStorage/GetStorageInfoSuccess;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda30 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda30)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda30;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda30;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$nrtx1Bnb94oi8F_B9KUvS5m0M5I(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda31 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda31)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda31;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda31;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$v1xyJxdopna3u1nfWMi4V7Yyou8(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda32 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda32)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda32;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda32;->f$0:Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;

    invoke-static {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$4e9ESap-Qd_5c4gP2d9FJFJArxQ(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda33 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda33)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda33;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$avl4Vt_RpKP2qx2ehzOUgeNC1rM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda34 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda34)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda34;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda34;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$4AW88oGttVIAFFFFpMyRSUjpKBw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda35 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda35)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda35;
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
    check-cast p1, Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$nhg_S1GdulTr4lvOHTar8fcrP8A(Luts/sdk/modules/DCloudUniStorage/SetStorageOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda36 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda36)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$qsURenNGpF20n-Os4s4YO_4IzL4(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda37 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda37)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda37;
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
    check-cast p1, Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$9_TfDI3IwW6oKROUyWIzwW1IyCY(Luts/sdk/modules/DCloudUniStorage/GetStorageOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda4 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda4)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda4;
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
    check-cast p1, Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$9d7103Zn-cUIQSE1yVxwWYjq4iM(Luts/sdk/modules/DCloudUniStorage/RemoveStorageOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda5 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda5)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda5;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$lDH2WiFSu6M0URDv0AoMwa8w6e8(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda6 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda6)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda6;
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
    check-cast p1, Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;

    invoke-static {p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$kYYdJAKG0rOb4YCwscjHqGxp_vE(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda7 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda7)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$mau_J_Y2pFdgclXJdLtEcDOpVzU()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda8 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda8)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda8;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda8;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;

    invoke-static {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$4JnoIAvBF1NbehwWuLV-Nqd35wo(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptions;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda9 (uts.sdk.modules.DCloudUniStorage.IndexKt$$ExternalSyntheticLambda9)
.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda9;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda9;->f$0:Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;

    invoke-static {v0}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$LxujGKcX5tSqqKp0vyxfLBJjLK4(Luts/sdk/modules/DCloudUniStorage/ClearStorageOptions;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
