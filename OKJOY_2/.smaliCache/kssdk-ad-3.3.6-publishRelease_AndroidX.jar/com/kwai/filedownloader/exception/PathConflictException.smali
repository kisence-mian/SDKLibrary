.class public Lcom/kwai/filedownloader/exception/PathConflictException;
.super Ljava/lang/IllegalAccessException;


# instance fields
.field private final mAnotherSamePathTaskId:I

.field private final mDownloadingConflictPath:Ljava/lang/String;

.field private final mTargetFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "There is an another running task(%d) with the same downloading path(%s), because of they are with the same target-file-path(%s), so if the current task is started, the path of the file is sure to be written by multiple tasks, it is wrong, then you receive this exception to avoid such conflict."

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/kwai/filedownloader/exception/PathConflictException;->mAnotherSamePathTaskId:I

    iput-object p2, p0, Lcom/kwai/filedownloader/exception/PathConflictException;->mDownloadingConflictPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwai/filedownloader/exception/PathConflictException;->mTargetFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnotherSamePathTaskId()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/exception/PathConflictException;->mAnotherSamePathTaskId:I

    return v0
.end method

.method public getDownloadingConflictPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/exception/PathConflictException;->mDownloadingConflictPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/exception/PathConflictException;->mTargetFilePath:Ljava/lang/String;

    return-object v0
.end method
