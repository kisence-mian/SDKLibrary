.class public Lcom/kwai/filedownloader/download/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/f0/c;

.field private final b:Lcom/kwai/filedownloader/d0/a;

.field private final c:Lcom/kwai/filedownloader/download/d$a;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private volatile j:Z

.field private volatile k:Ljava/lang/Thread;

.field private volatile l:J

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile n:Z

.field private o:Z


# direct methods
.method constructor <init>(Lcom/kwai/filedownloader/f0/c;III)V
    .registers 9

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kwai/filedownloader/download/d;->j:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kwai/filedownloader/download/d;->l:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/kwai/filedownloader/download/d;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kwai/filedownloader/download/d;->o:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/d0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    if-ge p3, v0, :cond_24

    move p3, v0

    :cond_24
    iput p3, p0, Lcom/kwai/filedownloader/download/d;->e:I

    iput p4, p0, Lcom/kwai/filedownloader/download/d;->f:I

    new-instance v0, Lcom/kwai/filedownloader/download/d$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/d$a;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/d;->c:Lcom/kwai/filedownloader/download/d$a;

    iput p2, p0, Lcom/kwai/filedownloader/download/d;->d:I

    return-void
.end method

.method private static a(JJ)J
    .registers 12

    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x1

    cmp-long v4, p2, v6

    if-gtz v4, :cond_c

    move-wide v0, v2

    :cond_b
    :goto_b
    return-wide v0

    :cond_c
    cmp-long v2, p0, v2

    if-eqz v2, :cond_b

    add-long v2, p2, v0

    div-long v2, p0, v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_b

    move-wide v0, v2

    goto :goto_b
.end method

.method private a(B)V
    .registers 5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1d

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->c:Lcom/kwai/filedownloader/download/d$a;

    invoke-static {p1, v1, v2}, Lcom/kwai/filedownloader/message/f;->a(BLcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/download/d$a;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    goto :goto_1c
.end method

.method private a(JZ)V
    .registers 9

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/kwai/filedownloader/d0/a;->a(IJ)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/d;->n:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/d;->n:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    :cond_2f
    if-eqz p3, :cond_22

    iput-wide p1, p0, Lcom/kwai/filedownloader/download/d;->l:J

    invoke-direct {p0, v4}, Lcom/kwai/filedownloader/download/d;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_22
.end method

.method private a(Landroid/database/sqlite/SQLiteFullException;)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v0

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/f0/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_45

    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_45

    goto :goto_1e

    :catch_26
    move-exception v0

    :try_start_27
    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_48

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_45

    goto :goto_1e

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45
.end method

.method private a(Ljava/lang/Exception;I)V
    .registers 7

    const/4 v3, 0x5

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/download/d;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->c:Lcom/kwai/filedownloader/download/d$a;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d$a;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->c:Lcom/kwai/filedownloader/download/d$a;

    iget v2, p0, Lcom/kwai/filedownloader/download/d;->d:I

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/d$a;->a(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1, v3}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/f0/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/kwai/filedownloader/d0/a;->a(ILjava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/kwai/filedownloader/download/d;->a(B)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 11

    const-wide/16 v4, 0x1000

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->m()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kwai/filedownloader/h0/e;->f:Z

    if-eqz v1, :cond_5c

    :cond_18
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->h(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5c

    const-wide/16 v6, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception with: free space isn\'t enough, and the target file not exist."

    invoke-static {p0, p1, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_56

    new-instance v1, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJLjava/lang/Throwable;)V

    :goto_50
    return-object v1

    :cond_51
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_44

    :cond_56
    new-instance v1, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;

    invoke-direct/range {v1 .. v7}, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    goto :goto_50

    :cond_5c
    move-object v1, p1

    goto :goto_50
.end method

.method private b(J)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/d;->o:Z

    if-eqz v2, :cond_9

    iput-boolean v1, p0, Lcom/kwai/filedownloader/download/d;->o:Z

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-wide v2, p0, Lcom/kwai/filedownloader/download/d;->l:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/kwai/filedownloader/download/d;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/kwai/filedownloader/download/d;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/kwai/filedownloader/download/d;->g:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_28

    iget v4, p0, Lcom/kwai/filedownloader/download/d;->e:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    :cond_28
    move v0, v1

    goto :goto_8
.end method

.method private c(Ljava/lang/Exception;)V
    .registers 9

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/download/d;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v0, v1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_18

    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/download/d;->a(Landroid/database/sqlite/SQLiteFullException;)V

    :goto_f
    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->c:Lcom/kwai/filedownloader/download/d$a;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d$a;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, v6}, Lcom/kwai/filedownloader/download/d;->a(B)V

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/f0/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/kwai/filedownloader/d0/a;->a(ILjava/lang/Throwable;J)V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_38} :catch_39

    goto :goto_f

    :catch_39
    move-exception v1

    invoke-direct {p0, v1}, Lcom/kwai/filedownloader/download/d;->a(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_f
.end method

.method private h()V
    .registers 6

    const/4 v4, -0x3

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/d;->k()V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/kwai/filedownloader/d0/a;->b(IJ)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    invoke-direct {p0, v4}, Lcom/kwai/filedownloader/download/d;->a(B)V

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/h0/e;->g:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/services/f;->a(Lcom/kwai/filedownloader/f0/c;)V

    :cond_35
    return-void
.end method

.method private i()V
    .registers 6

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/kwai/filedownloader/d0/a;->c(IJ)V

    invoke-direct {p0, v4}, Lcom/kwai/filedownloader/download/d;->a(B)V

    return-void
.end method

.method private j()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->m()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kwai/filedownloader/f0/c;->c(J)V

    :cond_13
    move v0, v1

    :goto_14
    return v0

    :cond_15
    iget-object v2, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    new-instance v2, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v1, "sofar[%d] not equal total[%d]"

    invoke-static {v1, v3}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_14
.end method

.method private k()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_13
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_7a

    move-result v6

    if-eqz v6, :cond_61

    const-string v6, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    const/4 v7, 0x3

    :try_start_2b
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {p0, v6, v7}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_7a

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_60

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v1, v0, v10

    const-string v1, "delete the temp file(%s) failed, on completed downloading."

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    return-void

    :cond_61
    :try_start_61
    new-instance v3, Ljava/io/IOException;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_7a

    const-string v6, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    const/4 v7, 0x2

    :try_start_66
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v6, v7}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_90

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v1, v2, v10

    const-string v1, "delete the temp file(%s) failed, on completed downloading."

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_90
    throw v0

    :cond_91
    :try_start_91
    new-instance v3, Ljava/io/IOException;
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_7a

    const-string v4, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    const/4 v5, 0x2

    :try_start_96
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a6
    .catchall {:try_start_96 .. :try_end_a6} :catchall_7a
.end method


# virtual methods
.method a()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/d;->k:Ljava/lang/Thread;

    :goto_13
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/d;->j:Z

    if-eqz v0, :cond_23

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_13

    :cond_23
    iput-object v4, p0, Lcom/kwai/filedownloader/download/d;->k:Ljava/lang/Thread;

    :cond_25
    return-void
.end method

.method a(J)V
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/f0/c;->a(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kwai/filedownloader/download/d;->b(J)Z

    move-result v2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/d;->h:Landroid/os/Handler;

    if-nez v3, :cond_1a

    invoke-direct {p0, v0, v1, v2}, Lcom/kwai/filedownloader/download/d;->a(JZ)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    if-eqz v2, :cond_19

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/download/d;->a(Landroid/os/Message;)V

    goto :goto_19
.end method

.method a(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/download/d;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method a(Ljava/lang/Exception;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    neg-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/kwai/filedownloader/f0/c;->a(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_15

    invoke-direct {p0, p1, p2}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;I)V

    :goto_14
    return-void

    :cond_15
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/download/d;->a(Landroid/os/Message;)V

    goto :goto_14
.end method

.method a(ZJLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v7, 0x1

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->c:Lcom/kwai/filedownloader/download/d$a;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/download/d$a;->a(Z)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v6}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, p2, p3}, Lcom/kwai/filedownloader/f0/c;->c(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, p4}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, p5}, Lcom/kwai/filedownloader/f0/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kwai/filedownloader/d0/a;->a(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/kwai/filedownloader/download/d;->a(B)V

    iget v0, p0, Lcom/kwai/filedownloader/download/d;->f:I

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Lcom/kwai/filedownloader/download/d;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/d;->g:J

    iput-boolean v7, p0, Lcom/kwai/filedownloader/download/d;->n:Z

    return-void

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    aput-object v0, v2, v7

    const-string v0, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method c()V
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/d;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/d;->h()V

    goto :goto_6
.end method

.method d()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "source-status-callback"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/d;->h:Landroid/os/Handler;

    return-void
.end method

.method e()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/d;->i()V

    return-void
.end method

.method public f()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->a(I)V

    invoke-direct {p0, v2}, Lcom/kwai/filedownloader/download/d;->a(B)V

    return-void
.end method

.method g()V
    .registers 3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    invoke-direct {p0, v1}, Lcom/kwai/filedownloader/download/d;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->b:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->a:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->f(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kwai/filedownloader/download/d;->j:Z

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    :goto_c
    iput-boolean v4, p0, Lcom/kwai/filedownloader/download/d;->j:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwai/filedownloader/download/d;->k:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_17
    return v3

    :cond_18
    :try_start_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;I)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_c

    :catchall_22
    move-exception v0

    iput-boolean v4, p0, Lcom/kwai/filedownloader/download/d;->j:Z

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->k:Ljava/lang/Thread;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/kwai/filedownloader/download/d;->k:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_2e
    throw v0

    :cond_2f
    :try_start_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/kwai/filedownloader/download/d;->a(JZ)V
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_22

    goto :goto_c
.end method
