.class public Lcom/ss/android/socialbase/downloader/downloader/e;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Z

.field private c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final d:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private volatile k:J

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private m:Z

.field private n:I

.field private o:J

.field private p:Lcom/ss/android/socialbase/downloader/depend/n;

.field private q:Lcom/ss/android/socialbase/downloader/depend/z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V
    .registers 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Z

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:J

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    .line 75
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 76
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->j()V

    .line 77
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Landroid/os/Handler;

    .line 78
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 80
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_37

    .line 82
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p2, "fix_start_with_file_exist_update_error"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Z

    goto :goto_39

    .line 84
    :cond_37
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Z

    .line 86
    :goto_39
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p0
.end method

.method private a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 449
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 450
    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 9

    .line 462
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 463
    const/4 v1, 0x4

    const/4 v2, -0x3

    if-ne v0, v2, :cond_d

    if-ne p1, v1, :cond_d

    .line 464
    return-void

    .line 466
    :cond_d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->j()V

    .line 468
    const/4 v3, 0x0

    if-eq p1, v1, :cond_29

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isRealTimeUploadStatus(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 469
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 470
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isTimeUploadStatus(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 471
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateDownloadTime()V

    .line 475
    :cond_29
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {v1, p2, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 477
    const/4 v1, 0x6

    if-ne p1, v1, :cond_38

    .line 478
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_46

    .line 479
    :cond_38
    const/4 v1, -0x6

    if-ne p1, v1, :cond_41

    .line 480
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_46

    .line 482
    :cond_41
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 484
    :goto_46
    if-eq v0, v2, :cond_4b

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7e

    .line 485
    :cond_4b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/h;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    if-ne v0, v1, :cond_5c

    .line 486
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setRetryDelayStatus(Lcom/ss/android/socialbase/downloader/constants/h;)V

    .line 488
    :cond_5c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAsyncHandleStatus()Lcom/ss/android/socialbase/downloader/constants/a;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->d:Lcom/ss/android/socialbase/downloader/constants/a;

    if-ne v0, v1, :cond_6d

    .line 489
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->e:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    .line 491
    :cond_6d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->c:Lcom/ss/android/socialbase/downloader/constants/b;

    if-ne v0, v1, :cond_7e

    .line 492
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->d:Lcom/ss/android/socialbase/downloader/constants/b;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setByteInvalidRetryStatus(Lcom/ss/android/socialbase/downloader/constants/b;)V

    .line 496
    :cond_7e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Landroid/util/SparseArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1, v0, v1, v2, p2}, Lcom/ss/android/socialbase/downloader/i/c;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 498
    const/4 v0, -0x4

    if-ne p1, v0, :cond_8a

    .line 499
    return-void

    .line 502
    :cond_8a
    if-eqz p3, :cond_c4

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Landroid/os/Handler;

    if-eqz p3, :cond_c4

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Landroid/util/SparseArray;

    if-eqz p3, :cond_9a

    .line 503
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-gtz p3, :cond_b4

    :cond_9a
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Landroid/util/SparseArray;

    if-eqz p3, :cond_c4

    .line 504
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_c4

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result p3

    if-nez p3, :cond_b4

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result p3

    if-eqz p3, :cond_c4

    .line 505
    :cond_b4
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p3, p1, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d3

    .line 507
    :cond_c4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object p2

    .line 508
    if-eqz p2, :cond_d3

    .line 509
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 511
    :cond_d3
    :goto_d3
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;ILcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method private a(JZ)Z
    .registers 6

    .line 400
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_28

    .line 402
    :try_start_11
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23

    .line 405
    goto :goto_27

    .line 403
    :catch_23
    move-exception p1

    .line 404
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    :goto_27
    return p2

    .line 409
    :cond_28
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_34

    .line 410
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Z

    .line 411
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 414
    :cond_34
    const/4 p1, 0x0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedPostProgress()Z

    move-result v1

    if-eqz v1, :cond_40

    if-eqz p3, :cond_40

    const/4 p2, 0x1

    :cond_40
    invoke-direct {p0, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 416
    return p3
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/downloader/e;)Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object p0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 6

    .line 204
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_4c

    .line 208
    :try_start_3b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_4b

    .line 209
    :catch_47
    move-exception v0

    .line 210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 211
    :goto_4b
    goto :goto_6f

    .line 214
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_5d} :catch_5e

    .line 222
    goto :goto_6f

    .line 215
    :catch_5e
    move-exception v0

    .line 217
    :try_start_5f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_6a} :catch_6b

    .line 220
    goto :goto_6f

    .line 218
    :catch_6b
    move-exception v0

    .line 219
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 225
    :goto_6f
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFailedException(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 228
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/exception/e;

    if-eqz v0, :cond_7e

    const/4 v0, -0x2

    goto :goto_7f

    :cond_7e
    const/4 v0, -0x1

    .line 229
    :goto_7f
    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 230
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 231
    const-string v1, "retry_schedule"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_9e

    .line 233
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 235
    :cond_9e
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 5

    .line 444
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 445
    if-eqz p2, :cond_f

    const/4 p2, 0x7

    goto :goto_10

    :cond_f
    const/4 p2, 0x5

    :goto_10
    invoke-direct {p0, p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 446
    return-void
.end method

.method private b(J)Z
    .registers 11

    .line 420
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 421
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    .line 422
    return v1

    .line 424
    :cond_8
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:J

    sub-long v2, p1, v2

    .line 426
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_21

    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 427
    :cond_21
    :goto_21
    if-eqz v1, :cond_2c

    .line 428
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:J

    .line 429
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 431
    :cond_2c
    return v1
.end method

.method private c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Lcom/ss/android/socialbase/downloader/exception/BaseException;
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "download_failed_check_net"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3c

    .line 240
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 241
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_3c

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 243
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 244
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x3f5

    goto :goto_34

    :cond_32
    const/16 v1, 0x419

    .line 245
    :goto_34
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 243
    return-object v0

    .line 249
    :cond_3c
    return-object p1
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/downloader/e;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->l()V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    .line 48
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_38

    .line 90
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 91
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Landroid/util/SparseArray;

    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Landroid/util/SparseArray;

    .line 93
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Landroid/util/SparseArray;

    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDepend()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/depend/n;

    .line 95
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->q:Lcom/ss/android/socialbase/downloader/depend/z;

    .line 97
    :cond_38
    return-void
.end method

.method private k()V
    .registers 3

    .line 107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_e

    .line 109
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    :cond_e
    return-void
.end method

.method private l()V
    .registers 5

    .line 308
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    const-string v1, "saveFileAsTargetName onSuccess"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_48

    .line 312
    :try_start_7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->m()V
    :try_end_a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_a} :catch_43
    .catchall {:try_start_7 .. :try_end_a} :catchall_48

    .line 316
    nop

    .line 318
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSuccess(Z)V

    .line 319
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 320
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 322
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 324
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 326
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    .line 331
    goto :goto_59

    .line 313
    :catch_43
    move-exception v0

    .line 314
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_47
    .catchall {:try_start_b .. :try_end_47} :catchall_48

    .line 315
    return-void

    .line 329
    :catchall_48
    move-exception v0

    .line 330
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x3f0

    const-string v3, "onCompleted"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 332
    :goto_59
    return-void
.end method

.method private m()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 381
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 382
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 383
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/m;

    .line 386
    :try_start_29
    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/depend/m;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 387
    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/depend/m;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 388
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_37
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_29 .. :try_end_37} :catch_42
    .catchall {:try_start_29 .. :try_end_37} :catchall_39

    .line 394
    :cond_37
    nop

    .line 395
    goto :goto_1d

    .line 392
    :catchall_39
    move-exception v0

    .line 393
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x42f

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 390
    :catch_42
    move-exception v0

    .line 391
    throw v0

    .line 397
    :cond_44
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    return-void

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 103
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->k()V

    .line 104
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 131
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 132
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->seteTag(Ljava/lang/String;)V

    .line 133
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 134
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V

    .line 137
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_30

    .line 140
    goto :goto_34

    .line 138
    :catch_30
    move-exception p3

    .line 139
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_34
    const/4 p3, 0x3

    const/4 p4, 0x0

    invoke-direct {p0, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 145
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMinByteIntervalForPostToMainThread(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    .line 146
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMinProgressTimeMsInterval()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:I

    .line 148
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Z

    .line 150
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/impls/r;->e()V

    .line 151
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 200
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 201
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 187
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 189
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 6

    .line 192
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 193
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 194
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 195
    if-eqz p3, :cond_1d

    const/16 p1, 0xa

    goto :goto_1f

    :cond_1d
    const/16 p1, 0x9

    :goto_1f
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 196
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleteForFileExist existTargetFileName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but curName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Z

    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_47

    .line 360
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->m()V

    .line 362
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 363
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 364
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_5e

    .line 366
    :cond_47
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 367
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 369
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->m()V

    .line 370
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 372
    :goto_5e
    return-void
.end method

.method public a(J)Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 155
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseCurBytes(J)V

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(J)Z

    move-result v0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(JZ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->changeSkipStatus()V

    .line 122
    return-void

    .line 124
    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 125
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 126
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 127
    :cond_26
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 128
    return-void
.end method

.method public c()V
    .registers 3

    .line 162
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 163
    return-void
.end method

.method public d()V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 168
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 171
    goto :goto_1c

    .line 169
    :catch_18
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 172
    :goto_1c
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 173
    return-void
.end method

.method public e()V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 178
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 181
    goto :goto_16

    .line 179
    :catch_12
    move-exception v0

    .line 180
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 182
    :goto_16
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 183
    return-void
.end method

.method public f()V
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4d

    .line 255
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v1, 0x403

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current bytes is not equals to total bytes, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 257
    return-void

    .line 258
    :cond_4d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_88

    .line 259
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v1, 0x402

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 261
    return-void

    .line 262
    :cond_88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c9

    .line 263
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v1, 0x414

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 265
    return-void

    .line 268
    :cond_c9
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCompleted start save file as target name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->q:Lcom/ss/android/socialbase/downloader/depend/z;

    .line 271
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v1, :cond_f7

    .line 272
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    .line 275
    :cond_f7
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNewSaveTempFileEnable()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 276
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/e$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$2;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-static {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/depend/aj;)V

    goto :goto_114

    .line 290
    :cond_10a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$3;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$3;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/depend/aj;)V

    .line 304
    :goto_114
    return-void
.end method

.method public g()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 335
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Z

    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    const-string v4, "onCompleteForFileExist"

    if-eqz v0, :cond_48

    .line 337
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->m()V

    .line 338
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 340
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 341
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 343
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 344
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    goto :goto_7f

    .line 346
    :cond_48
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->m()V

    .line 347
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 349
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 350
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 351
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 352
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    .line 354
    :goto_7f
    return-void
.end method

.method public h()V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 454
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/a;->b:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    .line 455
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_1d

    .line 457
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 459
    :cond_1d
    return-void
.end method
