.class public abstract Lcom/ss/android/socialbase/downloader/impls/a;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/g$a;


# instance fields
.field protected final a:Lcom/ss/android/socialbase/downloader/h/g;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/ss/android/socialbase/downloader/i/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/g<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/ss/android/socialbase/downloader/downloader/i;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/i/g;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 72
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/h/g;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/h/g$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    .line 73
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 74
    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 8

    .line 897
    if-eqz p3, :cond_29

    .line 898
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 899
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v1

    .line 900
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v2

    .line 901
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->canShowNotification()Z

    move-result p3

    const/4 v3, 0x1

    if-nez p3, :cond_22

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result p3

    if-eqz p3, :cond_20

    goto :goto_22

    :cond_20
    const/4 p3, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    move p3, v3

    .line 903
    :goto_23
    invoke-static {p1, v1, v3, v0, p2}, Lcom/ss/android/socialbase/downloader/i/c;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 904
    invoke-static {p1, v2, p3, v0, p2}, Lcom/ss/android/socialbase/downloader/i/c;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 908
    :cond_29
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->d(IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 438
    if-eqz p1, :cond_27

    :try_start_2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    .line 439
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/h;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    if-eq v0, v1, :cond_27

    .line 440
    :cond_11
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 441
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setRetryDelayStatus(Lcom/ss/android/socialbase/downloader/constants/h;)V

    .line 450
    const-string p1, "AbsDownloadEngine"

    const-string v0, "cancelAlarm"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_27

    .line 452
    :catchall_22
    move-exception p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28

    .line 454
    :cond_27
    :goto_27
    nop

    .line 455
    :goto_28
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    .registers 14

    .line 91
    if-nez p1, :cond_3

    .line 92
    return-void

    .line 93
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 94
    if-nez v0, :cond_a

    .line 95
    return-void

    .line 97
    :cond_a
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isEntityInvalid()Z

    move-result v1

    const/16 v2, 0x3eb

    if-eqz v1, :cond_56

    .line 98
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1

    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadInfo is Invalid, url is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " name is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " savePath is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 99
    return-void

    .line 103
    :cond_56
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "no_net_opt"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8c

    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 105
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 106
    new-instance p2, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {p2, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 107
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x419

    const-string v1, "network_not_available"

    invoke-direct {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 108
    return-void

    .line 112
    :cond_8c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 114
    if-eqz p2, :cond_95

    .line 115
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 118
    :cond_95
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    monitor-enter p2

    .line 119
    :try_start_98
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a5

    .line 120
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 121
    :cond_a5
    monitor-exit p2
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_1f8

    .line 123
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    monitor-enter v5

    .line 124
    :try_start_a9
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b6

    .line 125
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    :cond_b6
    monitor-exit v5
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_1f5

    .line 128
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    monitor-enter p2

    .line 129
    :try_start_ba
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c7

    .line 130
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 132
    :cond_c7
    monitor-exit p2
    :try_end_c8
    .catchall {:try_start_ba .. :try_end_c8} :catchall_1f2

    .line 134
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    monitor-enter v5

    .line 135
    :try_start_cb
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d8

    .line 136
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 137
    :cond_d8
    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_cb .. :try_end_d9} :catchall_1ef

    .line 139
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_108

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReStartAsyncTask()Z

    move-result p2

    if-nez p2, :cond_108

    .line 140
    const-string p2, "AbsDownloadEngine"

    const-string v1, "another task with same id is downloading when tryDownload"

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAddListenerToSameTask()Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 142
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addListenerToDownloadingSameTask()V

    .line 144
    :cond_f5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1

    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v1, "downloadInfo is isDownloading and addListenerToSameTask is false"

    invoke-direct {p2, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 145
    return-void

    .line 148
    :cond_108
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReStartAsyncTask()Z

    move-result p2

    if-eqz p2, :cond_113

    .line 149
    sget-object p2, Lcom/ss/android/socialbase/downloader/constants/a;->c:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    .line 151
    :cond_113
    const p2, 0x8000

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_135

    .line 153
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter p2

    .line 154
    :try_start_11f
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ss/android/socialbase/downloader/i/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 155
    monitor-exit p2
    :try_end_12c
    .catchall {:try_start_11f .. :try_end_12c} :catchall_132

    .line 159
    if-eqz v5, :cond_135

    .line 160
    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->copyListenerFromPendingTask(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_135

    .line 155
    :catchall_132
    move-exception p1

    :try_start_133
    monitor-exit p2
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw p1

    .line 164
    :cond_135
    :goto_135
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter p2

    .line 165
    :try_start_138
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 166
    if-eqz v5, :cond_147

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_149

    :cond_147
    const-wide/16 v5, 0x0

    .line 167
    :goto_149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 168
    sub-long v5, v7, v5

    const-wide/16 v9, 0x32

    cmp-long v5, v5, v9

    if-gez v5, :cond_1d9

    .line 169
    nop

    .line 170
    nop

    .line 171
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 172
    if-eqz v5, :cond_175

    .line 173
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    .line 174
    if-eqz v5, :cond_175

    .line 175
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v5

    .line 176
    if-eqz v5, :cond_173

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 177
    :cond_173
    move v4, v3

    goto :goto_176

    .line 183
    :cond_175
    move v5, v4

    :cond_176
    :goto_176
    if-eqz v4, :cond_1c7

    .line 184
    const-string v3, "AbsDownloadEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can add listener, oldTaskStatus is :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-ltz v5, :cond_199

    const/4 v3, 0x2

    if-ge v5, v3, :cond_199

    .line 188
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addListenerToDownloadingSameTask()V

    goto :goto_1d8

    .line 190
    :cond_199
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAddListenerToSameTask()Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 191
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addListenerToDownloadingSameTask()V

    goto :goto_1d8

    .line 193
    :cond_1a3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v3

    new-instance v4, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v5, "has another same task within 50 milliseconds and addListenerToSameTask is false"

    invoke-direct {v4, v2, v5}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    invoke-static {v3, v0, v4, v2}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 195
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_1d8

    .line 202
    :cond_1c7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 206
    :goto_1d8
    goto :goto_1ea

    .line 207
    :cond_1d9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 211
    :goto_1ea
    monitor-exit p2

    .line 212
    return-void

    .line 211
    :catchall_1ec
    move-exception p1

    monitor-exit p2
    :try_end_1ee
    .catchall {:try_start_138 .. :try_end_1ee} :catchall_1ec

    throw p1

    .line 137
    :catchall_1ef
    move-exception p1

    :try_start_1f0
    monitor-exit v5
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    throw p1

    .line 132
    :catchall_1f2
    move-exception p1

    :try_start_1f3
    monitor-exit p2
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f2

    throw p1

    .line 126
    :catchall_1f5
    move-exception p1

    :try_start_1f6
    monitor-exit v5
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    throw p1

    .line 121
    :catchall_1f8
    move-exception p1

    :try_start_1f9
    monitor-exit p2
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1f8

    throw p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->e(IZ)V

    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 7

    .line 229
    if-nez p1, :cond_3

    .line 230
    return-void

    .line 231
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 232
    if-nez v0, :cond_a

    .line 233
    return-void

    .line 235
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_b5

    .line 236
    :try_start_d
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    .line 237
    invoke-direct {p0, p1, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    .line 238
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    goto/16 :goto_b0

    .line 239
    :cond_20
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getEnqueueType()Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v0

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    if-ne v0, v2, :cond_79

    .line 240
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 241
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    if-ne v0, v2, :cond_46

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 242
    monitor-exit v1

    return-void

    .line 243
    :cond_46
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 245
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v3

    if-ne v2, v3, :cond_68

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 247
    goto :goto_69

    .line 249
    :cond_68
    goto :goto_4c

    .line 250
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 251
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {v0, p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 252
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a()V

    .line 253
    goto :goto_b0

    .line 254
    :cond_79
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 255
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v4

    if-ne v2, v4, :cond_97

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 256
    monitor-exit v1

    return-void

    .line 257
    :cond_97
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    .line 258
    invoke-direct {p0, p1, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    .line 259
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    if-eq v0, v2, :cond_b0

    .line 260
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V

    .line 262
    :cond_b0
    :goto_b0
    monitor-exit v1

    .line 265
    goto :goto_b6

    .line 262
    :catchall_b2
    move-exception p1

    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_d .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw p1
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_b5} :catch_b5

    .line 263
    :catch_b5
    move-exception p1

    .line 266
    :goto_b6
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 4

    .line 664
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 665
    return v0

    .line 667
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->statusInPause()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 668
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p1

    return p1

    .line 671
    :cond_f
    return v0
.end method

.method private declared-synchronized d(IZ)V
    .registers 6

    monitor-enter p0

    .line 703
    :try_start_1
    const-string v0, "AbsDownloadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDownloadDataInSubThread::id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleteTargetFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_81

    .line 705
    :try_start_23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_3f

    .line 707
    if-eqz p2, :cond_31

    .line 708
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_3c

    .line 710
    :cond_31
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_3c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->erase()V
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_7b

    .line 715
    :cond_3f
    :try_start_3f
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_44} :catch_45
    .catchall {:try_start_3f .. :try_end_44} :catchall_7b

    .line 718
    goto :goto_49

    .line 716
    :catch_45
    move-exception p2

    .line 717
    :try_start_46
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 719
    :goto_49
    const/4 p2, -0x4

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 720
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 721
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 722
    :cond_5a
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_67

    .line 723
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 724
    :cond_67
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter p2
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_7b

    .line 725
    :try_start_6a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/i/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_78

    .line 727
    :try_start_74
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7b

    .line 730
    goto :goto_7f

    .line 726
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    .line 728
    :catchall_7b
    move-exception p1

    .line 729
    :try_start_7c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_81

    .line 731
    :goto_7f
    monitor-exit p0

    return-void

    .line 702
    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(IZ)V
    .registers 5

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_e

    .line 759
    invoke-static {v0, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 760
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->erase()V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_4b

    .line 763
    :cond_e
    :try_start_e
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 764
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_4b

    .line 767
    goto :goto_1d

    .line 765
    :catch_19
    move-exception p2

    .line 766
    :try_start_1a
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 769
    :goto_1d
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2a

    .line 770
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 771
    :cond_2a
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_37

    .line 772
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 773
    :cond_37
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter p2
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4b

    .line 774
    :try_start_3a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/i/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_48

    .line 776
    :try_start_44
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4b

    .line 779
    goto :goto_4f

    .line 775
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 777
    :catchall_4b
    move-exception p1

    .line 778
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 780
    :goto_4f
    return-void
.end method

.method private o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .registers 3

    .line 862
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 863
    if-nez v0, :cond_31

    .line 864
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 865
    if-nez v0, :cond_31

    .line 866
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 867
    if-nez v0, :cond_31

    .line 868
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 869
    if-nez v0, :cond_31

    .line 870
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 875
    :cond_31
    return-object v0
.end method

.method private p(I)V
    .registers 4

    .line 911
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 912
    return-void

    .line 913
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v0

    .line 914
    :try_start_c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 915
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 916
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 918
    :cond_21
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 919
    monitor-exit v0

    return-void

    .line 921
    :cond_2b
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 922
    if-eqz p1, :cond_39

    .line 923
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    .line 925
    :cond_39
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3b

    throw p1
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    .line 299
    :cond_17
    return-object v0

    .line 287
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 288
    :try_start_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 290
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_51

    .line 291
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 292
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    if-eqz v5, :cond_4e

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 293
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 296
    :cond_51
    monitor-exit v0

    return-object v1

    .line 297
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_53

    throw p1
.end method

.method public declared-synchronized a(II)V
    .registers 4

    monitor-enter p0

    .line 934
    sparse-switch p2, :sswitch_data_9a

    goto/16 :goto_97

    .line 970
    :sswitch_6
    :try_start_6
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 971
    if-eqz p2, :cond_1d

    .line 972
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 973
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 976
    :cond_1d
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    .line 977
    goto/16 :goto_97

    .line 961
    :sswitch_22
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 962
    if-eqz p2, :cond_3e

    .line 963
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_39

    .line 964
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    :cond_39
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 967
    :cond_3e
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    .line 968
    goto :goto_97

    .line 936
    :sswitch_42
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 937
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 938
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 939
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    .line 940
    goto :goto_97

    .line 952
    :sswitch_58
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 953
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    .line 954
    goto :goto_97

    .line 956
    :sswitch_61
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 957
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 958
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 959
    goto :goto_97

    .line 943
    :sswitch_74
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 944
    if-eqz p2, :cond_90

    .line 945
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 946
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 947
    :cond_8b
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 949
    :cond_90
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_94

    .line 950
    goto :goto_97

    .line 933
    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1

    .line 981
    :goto_97
    monitor-exit p0

    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        -0x7 -> :sswitch_74
        -0x6 -> :sswitch_61
        -0x4 -> :sswitch_58
        -0x3 -> :sswitch_42
        -0x1 -> :sswitch_74
        0x7 -> :sswitch_22
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method public declared-synchronized a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 7

    monitor-enter p0

    .line 799
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 800
    if-nez v0, :cond_14

    .line 801
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/i/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 803
    :cond_14
    if-eqz v0, :cond_19

    .line 804
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->removeDownloadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 806
    :cond_19
    monitor-exit p0

    return-void

    .line 798
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V
    .registers 9

    monitor-enter p0

    .line 813
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_39

    .line 815
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 817
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    .line 818
    if-eqz p6, :cond_38

    .line 819
    if-eqz p2, :cond_38

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_38

    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    if-eq p4, p1, :cond_20

    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    if-ne p4, p1, :cond_38

    .line 820
    :cond_20
    const/4 p1, 0x1

    .line 821
    sget-object p5, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    if-ne p4, p5, :cond_2c

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result p4

    if-nez p4, :cond_2c

    .line 822
    const/4 p1, 0x0

    .line 823
    :cond_2c
    if-eqz p1, :cond_38

    .line 824
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    new-instance p4, Lcom/ss/android/socialbase/downloader/impls/a$6;

    invoke-direct {p4, p0, p3, p2}, Lcom/ss/android/socialbase/downloader/impls/a$6;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {p1, p4}, Lcom/ss/android/socialbase/downloader/h/g;->post(Ljava/lang/Runnable;)Z

    .line 838
    :cond_38
    goto :goto_78

    .line 839
    :cond_39
    const p6, 0x8000

    invoke-static {p6}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p6

    if-eqz p6, :cond_78

    .line 840
    iget-object p6, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p6, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p6

    .line 841
    if-eqz p6, :cond_78

    invoke-virtual {p6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_78

    .line 844
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/i/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 845
    if-nez v0, :cond_75

    .line 846
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v0, p6}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 847
    iget-object p6, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter p6
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_7a

    .line 848
    :try_start_67
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/i/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    monitor-exit p6

    goto :goto_75

    :catchall_72
    move-exception p1

    monitor-exit p6
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_72

    :try_start_74
    throw p1

    .line 851
    :cond_75
    :goto_75
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_7a

    .line 855
    :cond_78
    :goto_78
    monitor-exit p0

    return-void

    .line 812
    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(IJ)V
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 459
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 460
    if-eqz p1, :cond_10

    .line 461
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setNotificationEventListener(Lcom/ss/android/socialbase/downloader/depend/ab;)V

    .line 462
    :cond_10
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method protected abstract a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V
.end method

.method public a(Landroid/os/Message;)V
    .registers 7

    .line 985
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 986
    nop

    .line 987
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_e

    .line 988
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    goto :goto_f

    .line 987
    :cond_e
    const/4 v1, 0x0

    .line 991
    :goto_f
    const-class v2, Lcom/ss/android/socialbase/downloader/impls/a;

    monitor-enter v2

    .line 992
    :try_start_12
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 993
    if-nez v3, :cond_1e

    .line 994
    monitor-exit v2

    return-void

    .line 997
    :cond_1e
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4, v1, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 998
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 999
    monitor-exit v2

    .line 1000
    return-void

    .line 999
    :catchall_2a
    move-exception p1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public abstract a(Lcom/ss/android/socialbase/downloader/h/c;)V
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 4

    .line 215
    if-nez p1, :cond_3

    .line 216
    return-void

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 218
    if-nez v0, :cond_a

    .line 219
    return-void

    .line 220
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 221
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getEnqueueType()Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    if-eq v0, v1, :cond_1a

    .line 222
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_1e

    .line 224
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    .line 226
    :goto_1e
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 595
    const/high16 v0, 0x100000

    :try_start_3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 596
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14

    .line 598
    :cond_13
    move v0, v1

    .line 601
    :goto_14
    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 602
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 603
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 604
    if-nez v3, :cond_2e

    .line 605
    goto :goto_56

    .line 606
    :cond_2e
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    .line 607
    if-eqz v4, :cond_56

    .line 608
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 609
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 610
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v5

    if-eqz v5, :cond_4d

    if-nez v0, :cond_4d

    .line 611
    goto :goto_56

    .line 612
    :cond_4d
    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAutoResumed(Z)V

    .line 613
    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setShowNotificationForNetworkResumed(Z)V

    .line 614
    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_56} :catch_5c
    .catchall {:try_start_3 .. :try_end_56} :catchall_5a

    .line 601
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 618
    :cond_59
    goto :goto_60

    .line 594
    :catchall_5a
    move-exception p1

    goto :goto_62

    .line 616
    :catch_5c
    move-exception p1

    .line 617
    :try_start_5d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    .line 619
    :goto_60
    monitor-exit p0

    return-void

    .line 594
    :goto_62
    monitor-exit p0

    throw p1
.end method

.method public abstract a(I)Z
.end method

.method public a(IZ)Z
    .registers 10

    .line 346
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 347
    const/high16 v1, 0x10000

    if-nez v0, :cond_16

    .line 348
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 349
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 352
    :cond_16
    nop

    .line 353
    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    .line 354
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    const-string v4, "fix_on_cancel_call_twice"

    invoke-virtual {v3, v4, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_30

    .line 355
    new-instance v3, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 356
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->c()V

    .line 359
    :cond_30
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 360
    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v4

    .line 361
    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/g;)Landroid/util/SparseArray;

    move-result-object v0

    .line 363
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    new-instance v6, Lcom/ss/android/socialbase/downloader/impls/a$1;

    invoke-direct {v6, p0, v4, v3, v0}, Lcom/ss/android/socialbase/downloader/impls/a$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/util/SparseArray;)V

    invoke-virtual {v5, v6}, Lcom/ss/android/socialbase/downloader/h/g;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 392
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    const/4 v3, -0x4

    if-eqz v1, :cond_5d

    .line 393
    if-eqz v0, :cond_6c

    .line 394
    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_6c

    .line 397
    :cond_5d
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 398
    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 401
    :cond_6c
    :goto_6c
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V

    .line 402
    return v2
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 880
    const/4 p1, 0x0

    return-object p1

    .line 881
    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    .line 882
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 883
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 884
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 885
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 886
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 887
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 888
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    :cond_38
    goto :goto_15

    .line 891
    :cond_39
    return-object v1
.end method

.method public b()V
    .registers 3

    .line 675
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    .line 676
    if-nez v0, :cond_7

    .line 677
    return-void

    .line 678
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 679
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    .line 680
    goto :goto_b

    .line 681
    :cond_1f
    return-void
.end method

.method protected abstract b(I)V
.end method

.method public declared-synchronized b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 13

    monitor-enter p0

    .line 809
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_8
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    .line 810
    monitor-exit p0

    return-void

    .line 808
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(IJ)V
    .registers 5

    .line 1003
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 1004
    if-eqz v0, :cond_b

    .line 1005
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setThrottleNetSpeed(J)V

    .line 1008
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IJ)V

    .line 1009
    return-void
.end method

.method public b(IZ)V
    .registers 5

    .line 684
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_b

    .line 686
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 687
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/a$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;->post(Ljava/lang/Runnable;)Z

    .line 693
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/Runnable;Z)V

    .line 700
    return-void
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 628
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_6a
    .catchall {:try_start_1 .. :try_end_9} :catchall_68

    .line 629
    if-nez v0, :cond_d

    .line 630
    monitor-exit p0

    return-void

    .line 632
    :cond_d
    const/4 v0, 0x0

    :goto_e
    :try_start_e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_67

    .line 633
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 634
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 635
    if-nez v1, :cond_27

    .line 636
    goto :goto_64

    .line 637
    :cond_27
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 638
    if-eqz v2, :cond_64

    .line 639
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 640
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 641
    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 642
    goto :goto_64

    .line 644
    :cond_44
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAutoResumed(Z)V

    .line 645
    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setShowNotificationForNetworkResumed(Z)V

    .line 646
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 647
    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 649
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_64

    .line 651
    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_64} :catch_6a
    .catchall {:try_start_e .. :try_end_64} :catchall_68

    .line 632
    :cond_64
    :goto_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 656
    :cond_67
    goto :goto_6e

    .line 627
    :catchall_68
    move-exception p1

    goto :goto_70

    .line 654
    :catch_6a
    move-exception p1

    .line 655
    :try_start_6b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_68

    .line 657
    :goto_6e
    monitor-exit p0

    return-void

    .line 627
    :goto_70
    monitor-exit p0

    throw p1
.end method

.method protected abstract c(I)Lcom/ss/android/socialbase/downloader/h/c;
.end method

.method public c(IZ)V
    .registers 5

    .line 734
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_b

    .line 736
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 737
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/a$4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$4;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;->post(Ljava/lang/Runnable;)Z

    .line 743
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/a$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a$5;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/Runnable;Z)V

    .line 750
    return-void
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 270
    if-nez v0, :cond_1f

    .line 271
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 272
    :try_start_b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 273
    if-eqz p1, :cond_1a

    .line 274
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    move-object v0, p1

    .line 276
    :cond_1a
    monitor-exit v1

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p1

    .line 278
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public e(I)Z
    .registers 6

    .line 303
    const-string v0, "AbsDownloadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 306
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2a

    .line 308
    return v1

    .line 310
    :cond_2a
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 313
    :try_start_2d
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(I)V

    .line 314
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_89

    .line 316
    const/4 v2, 0x1

    if-nez v0, :cond_52

    .line 317
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v3

    .line 318
    :try_start_37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 319
    if-eqz p1, :cond_4d

    .line 320
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 321
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    .line 322
    monitor-exit v3

    return v2

    .line 324
    :cond_4d
    monitor-exit v3

    goto :goto_88

    :catchall_4f
    move-exception p1

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_4f

    throw p1

    .line 326
    :cond_52
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 328
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_79

    .line 329
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v3

    .line 330
    :try_start_5e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 331
    if-eqz p1, :cond_74

    .line 332
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 333
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    .line 334
    monitor-exit v3

    return v2

    .line 336
    :cond_74
    monitor-exit v3

    goto :goto_88

    :catchall_76
    move-exception p1

    monitor-exit v3
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_76

    throw p1

    .line 337
    :cond_79
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 338
    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 339
    return v2

    .line 342
    :cond_88
    :goto_88
    return v1

    .line 314
    :catchall_89
    move-exception p1

    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw p1
.end method

.method public declared-synchronized f(I)Z
    .registers 4

    monitor-enter p0

    .line 406
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 407
    if-eqz v0, :cond_19

    .line 408
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 409
    if-eqz p1, :cond_15

    .line 410
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 412
    :cond_15
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 413
    goto :goto_1c

    .line 414
    :cond_19
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    .line 417
    :goto_1c
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 405
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(I)Z
    .registers 4

    monitor-enter p0

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 422
    if-nez v0, :cond_14

    .line 423
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 425
    :cond_14
    const/4 p1, 0x0

    if-eqz v0, :cond_26

    .line 426
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_20

    .line 428
    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 430
    :cond_20
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_28

    .line 431
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 433
    :cond_26
    monitor-exit p0

    return p1

    .line 420
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(I)Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 3

    monitor-enter p0

    .line 466
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 467
    if-eqz v0, :cond_11

    .line 468
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 470
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 471
    if-eqz v0, :cond_21

    .line 472
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 474
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 475
    if-eqz v0, :cond_31

    .line 476
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 478
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 479
    if-eqz v0, :cond_41

    .line 480
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 482
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 483
    if-eqz p1, :cond_51

    .line 484
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 485
    :cond_51
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 465
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(I)Lcom/ss/android/socialbase/downloader/depend/ab;
    .registers 3

    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 490
    if-eqz v0, :cond_11

    .line 491
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 493
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 494
    if-eqz v0, :cond_21

    .line 495
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 497
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 498
    if-eqz v0, :cond_31

    .line 499
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 501
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 502
    if-eqz v0, :cond_41

    .line 503
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 505
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 506
    if-eqz p1, :cond_51

    .line 507
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 508
    :cond_51
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 488
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(I)Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 3

    monitor-enter p0

    .line 512
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 513
    if-eqz v0, :cond_11

    .line 514
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 516
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 517
    if-eqz v0, :cond_21

    .line 518
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 520
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 521
    if-eqz v0, :cond_31

    .line 522
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 524
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 525
    if-eqz v0, :cond_41

    .line 526
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 528
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 529
    if-eqz p1, :cond_51

    .line 530
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_54

    monitor-exit p0

    return-object p1

    .line 531
    :cond_51
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 511
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(I)Z
    .registers 5

    monitor-enter p0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 559
    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 560
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 561
    if-eqz v2, :cond_1e

    .line 562
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canStartRetryDelayTask()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 563
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_36

    .line 565
    :cond_1b
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 569
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 570
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canStartRetryDelayTask()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 571
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 572
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_36

    .line 574
    :cond_34
    monitor-exit p0

    return v1

    .line 557
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(I)Z
    .registers 3

    monitor-enter p0

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 579
    if-eqz p1, :cond_1d

    .line 580
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_1d

    .line 582
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReStartAsyncTask()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 583
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_20

    .line 585
    :cond_1a
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 588
    :cond_1d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 577
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(I)V
    .registers 4

    monitor-enter p0

    .line 783
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 784
    if-eqz p1, :cond_18

    .line 785
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_18

    .line 787
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setForceIgnoreRecommendSize(Z)V

    .line 788
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 792
    :cond_18
    monitor-exit p0

    return-void

    .line 782
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(I)Z
    .registers 3

    monitor-enter p0

    .line 795
    if-eqz p1, :cond_18

    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    if-eqz p1, :cond_18

    :cond_13
    const/4 p1, 0x1

    goto :goto_19

    .line 795
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1

    .line 795
    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit p0

    return p1
.end method
