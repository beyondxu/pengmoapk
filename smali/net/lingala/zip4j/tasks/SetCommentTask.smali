###### Class net.lingala.zip4j.tasks.SetCommentTask (net.lingala.zip4j.tasks.SetCommentTask)
.class public Lnet/lingala/zip4j/tasks/SetCommentTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "SetCommentTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AsyncZipTask<",
        "Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .registers 3

    .line 19
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 20
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 14
    check-cast p1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/SetCommentTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/SetCommentTask;->executeTask(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_59

    .line 29
    iget-object p2, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p2

    .line 30
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V

    .line 33
    :try_start_1e
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 34
    iget-object p2, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v1

    .line 34
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    goto :goto_3b

    .line 37
    :cond_34
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    .line 40
    :goto_3b
    new-instance p2, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {p2}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    .line 41
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object p1, p1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_4b
    .catchall {:try_start_1e .. :try_end_4b} :catchall_4f

    .line 42
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    return-void

    :catchall_4f
    move-exception p1

    .line 32
    :try_start_50
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    throw p1

    .line 26
    :cond_59
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "comment is null, cannot update Zip file with comment"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 52
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->SET_COMMENT:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

###### Class net.lingala.zip4j.tasks.SetCommentTask.SetCommentTaskTaskParameters (net.lingala.zip4j.tasks.SetCommentTask$SetCommentTaskTaskParameters)
.class public Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "SetCommentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/SetCommentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetCommentTaskTaskParameters"
.end annotation


# instance fields
.field private comment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .registers 3

    .line 59
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 60
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->comment:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;)Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;->comment:Ljava/lang/String;

    return-object p0
.end method
