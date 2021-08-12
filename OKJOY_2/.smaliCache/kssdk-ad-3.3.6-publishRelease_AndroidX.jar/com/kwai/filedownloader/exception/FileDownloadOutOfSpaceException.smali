.class public Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;
.super Ljava/io/IOException;


# instance fields
.field private breakpointBytes:J

.field private freeSpaceBytes:J

.field private requiredSpaceBytes:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->init(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/Throwable;)V
    .registers 11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p6}, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->init(JJJ)V

    return-void
.end method

.method private init(JJJ)V
    .registers 7

    iput-wide p1, p0, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->freeSpaceBytes:J

    iput-wide p3, p0, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->requiredSpaceBytes:J

    iput-wide p5, p0, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->breakpointBytes:J

    return-void
.end method


# virtual methods
.method public getBreakpointBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->breakpointBytes:J

    return-wide v0
.end method

.method public getFreeSpaceBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->freeSpaceBytes:J

    return-wide v0
.end method

.method public getRequiredSpaceBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;->requiredSpaceBytes:J

    return-wide v0
.end method
