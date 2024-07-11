.class public Lcom/ss/android/socialbase/downloader/h/c;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/f;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/ss/android/socialbase/downloader/depend/r;

.field private volatile B:I

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:J

.field private H:J

.field private final I:Lcom/ss/android/socialbase/downloader/g/a;

.field private J:I

.field private volatile K:Lcom/ss/android/socialbase/downloader/f/k;

.field private b:Ljava/util/concurrent/Future;

.field private final c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field private volatile d:Z

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/ss/android/socialbase/downloader/downloader/d;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile n:Lcom/ss/android/socialbase/downloader/constants/i;

.field private final o:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private q:Lcom/ss/android/socialbase/downloader/downloader/g;

.field private final r:Lcom/ss/android/socialbase/downloader/downloader/g;

.field private s:Lcom/ss/android/socialbase/downloader/downloader/f;

.field private final t:Lcom/ss/android/socialbase/downloader/downloader/f;

.field private u:Lcom/ss/android/socialbase/downloader/downloader/q;

.field private final v:Lcom/ss/android/socialbase/downloader/downloader/e;

.field private volatile w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private x:Lcom/ss/android/socialbase/downloader/network/i;

.field private y:Lcom/ss/android/socialbase/downloader/network/g;

.field private z:Lcom/ss/android/socialbase/downloader/depend/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    const-class v0, Lcom/ss/android/socialbase/downloader/h/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->d:Z

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    .line 106
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->a:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 127
    const/4 v1, 0x5

    iput v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->B:I

    .line 129
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->C:Z

    .line 130
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->D:Z

    .line 133
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    .line 139
    iput v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->J:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    .line 145
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 146
    if-eqz p1, :cond_54

    .line 147
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 148
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getChunkStrategy()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->q:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 149
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->s:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 150
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getForbiddenHandler()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->z:Lcom/ss/android/socialbase/downloader/depend/x;

    .line 151
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDiskSpaceHandler()Lcom/ss/android/socialbase/downloader/depend/r;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->A:Lcom/ss/android/socialbase/downloader/depend/r;

    .line 152
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->u:Lcom/ss/android/socialbase/downloader/downloader/q;

    .line 153
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    goto :goto_5a

    .line 155
    :cond_54
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    .line 158
    :goto_5a
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->h()V

    .line 159
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 160
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->H()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->r:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 161
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->J()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->t:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 162
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    .line 164
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    return-void
.end method

.method private A()J
    .registers 4

    .line 1017
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->u:Lcom/ss/android/socialbase/downloader/downloader/q;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTimeInTotal()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalRetryCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/q;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private B()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/h;,
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    .line 1023
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I

    move-result v1

    .line 1024
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    if-eqz v2, :cond_21

    goto :goto_2b

    .line 1025
    :cond_21
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3f1

    const-string v2, "file has downloaded"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1028
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 1030
    if-eqz v2, :cond_a8

    .line 1031
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v3

    .line 1033
    if-eqz v3, :cond_a8

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    if-eq v4, v0, :cond_a8

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->equalsTask(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 1035
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_99

    .line 1040
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v3

    .line 1041
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 1042
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z

    .line 1044
    if-eqz v2, :cond_a8

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBreakpointAvailable()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1045
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->copyFromCacheData(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 1046
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 1048
    if-eqz v3, :cond_91

    .line 1049
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/b;

    .line 1050
    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/model/b;->b(I)V

    .line 1051
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 1052
    goto :goto_7c

    .line 1054
    :cond_91
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/h;

    const-string v1, "retry task because id generator changed"

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/exception/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_99
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z

    .line 1037
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x401

    const-string v2, "another same task is downloading"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1058
    :cond_a8
    return-void
.end method

.method private C()Z
    .registers 4

    .line 1226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 1227
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    if-le v0, v2, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    goto :goto_2b

    .line 1231
    :cond_21
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->j:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->l:Z

    if-nez v0, :cond_2a

    move v1, v2

    :cond_2a
    return v1

    .line 1228
    :cond_2b
    :goto_2b
    return v1
.end method

.method private D()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1336
    nop

    .line 1338
    const-wide/16 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_d} :catch_e

    .line 1340
    goto :goto_10

    .line 1339
    :catch_e
    move-exception v2

    move-wide v2, v0

    .line 1341
    :goto_10
    sget-object v4, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpaceOverflowInProgress: available = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    cmp-long v5, v2, v0

    if-lez v5, :cond_a1

    .line 1343
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 1344
    cmp-long v5, v2, v7

    if-gez v5, :cond_a1

    .line 1346
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v5

    const/16 v9, 0x64

    const-string v10, "space_fill_min_keep_mb"

    invoke-virtual {v5, v10, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v5

    .line 1349
    if-lez v5, :cond_a1

    .line 1350
    int-to-long v9, v5

    const-wide/32 v11, 0x100000

    mul-long/2addr v9, v11

    sub-long v9, v2, v9

    .line 1351
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkSpaceOverflowInProgress: minKeep  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "MB, canDownload = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1352
    invoke-static {v9, v10}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1351
    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    cmp-long v4, v9, v0

    if-lez v4, :cond_99

    .line 1358
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    .line 1359
    return-void

    .line 1354
    :cond_99
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    .line 1355
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/d;

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(JJ)V

    throw v0

    .line 1365
    :cond_a1
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    .line 1366
    return-void
.end method

.method private E()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/f;
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_29

    .line 1371
    :cond_15
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v2, 0x3fb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "download task need permission:%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1374
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1378
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1381
    return-void

    .line 1379
    :cond_3a
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/e;-><init>()V

    throw v0

    .line 1375
    :cond_40
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/c;-><init>()V

    throw v0
.end method

.method private F()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1385
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1388
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1391
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1393
    if-nez v1, :cond_3a

    .line 1394
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 1395
    if-eqz v0, :cond_30

    goto :goto_40

    .line 1396
    :cond_30
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x406

    const-string v2, "download savePath directory can not created"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1398
    :cond_3a
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1401
    :goto_40
    return-void

    .line 1399
    :cond_41
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x407

    const-string v2, "download savePath is not a directory"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1389
    :cond_4b
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x405

    const-string v2, "download name can not be empty"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1386
    :cond_55
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x404

    const-string v2, "download savePath can not be empty"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private G()V
    .registers 8

    .line 1561
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)J

    move-result-wide v0

    .line 1562
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    .line 1563
    cmp-long v4, v0, v2

    if-eqz v4, :cond_32

    .line 1564
    sget-object v4, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTaskCanResume: offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_32
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    .line 1567
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    .line 1568
    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    if-nez v0, :cond_6a

    .line 1569
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v1, "checkTaskCanResume: deleteAllDownloadFiles"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 1571
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    .line 1572
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 1574
    :cond_6a
    return-void
.end method

.method private H()V
    .registers 4

    .line 1622
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCurrentDownloadData::"

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

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 1625
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    .line 1626
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 1627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    .line 1628
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->resetDataForEtagEndure(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_4e

    .line 1632
    goto :goto_52

    .line 1630
    :catchall_4e
    move-exception v0

    .line 1631
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1633
    :goto_52
    return-void
.end method

.method private I()V
    .registers 5

    .line 1662
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1663
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/h/b;

    .line 1664
    if-eqz v1, :cond_1d

    .line 1665
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/h/b;->b()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1f

    .line 1667
    :cond_1d
    goto :goto_c

    .line 1670
    :cond_1e
    goto :goto_3c

    .line 1668
    :catchall_1f
    move-exception v0

    .line 1669
    sget-object v1, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAllChunkRunnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :goto_3c
    return-void
.end method

.method private J()V
    .registers 3

    .line 1683
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1684
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_16

    .line 1686
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->l(I)Z

    .line 1687
    :cond_16
    return-void
.end method

.method private K()Z
    .registers 2

    .line 1975
    const/4 v0, 0x0

    return v0
.end method

.method private a(JLjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)I"
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->C()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    .line 230
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    if-eqz v0, :cond_1a

    .line 231
    if-eqz p3, :cond_13

    .line 232
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_5c

    .line 234
    :cond_13
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p3

    goto :goto_5c

    .line 237
    :cond_1a
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->q:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-eqz p3, :cond_23

    .line 238
    invoke-interface {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(J)I

    move-result p3

    goto :goto_29

    .line 240
    :cond_23
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->r:Lcom/ss/android/socialbase/downloader/downloader/g;

    invoke-interface {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(J)I

    move-result p3

    .line 242
    :goto_29
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/k;->a()Lcom/ss/android/socialbase/downloader/network/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/k;->b()Lcom/ss/android/socialbase/downloader/network/l;

    move-result-object v0

    .line 243
    sget-object v3, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/l;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "NetworkQuality is : %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/l;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setNetworkQuality(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->s:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-eqz v3, :cond_56

    .line 247
    invoke-interface {v3, p3, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/network/l;)I

    move-result p3

    goto :goto_5c

    .line 249
    :cond_56
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->t:Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-interface {v3, p3, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/network/l;)I

    move-result p3

    .line 252
    :goto_5c
    if-gtz p3, :cond_61

    .line 253
    move p3, v2

    goto :goto_61

    .line 255
    :cond_60
    move p3, v2

    .line 258
    :cond_61
    :goto_61
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 259
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "chunk count : %s for %s contentLen:%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_8a
    return p3
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/downloader/q;
    .registers 3

    .line 1979
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getRetryDelayTimeCalculator()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v0

    .line 1980
    if-eqz v0, :cond_7

    .line 1981
    return-object v0

    .line 1983
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 1984
    if-eqz p1, :cond_1d

    .line 1985
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayTimeArray()Ljava/lang/String;

    move-result-object p1

    .line 1986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1987
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/q;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/q;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1990
    :cond_1d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->K()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Lcom/ss/android/socialbase/downloader/model/b;
    .registers 6

    .line 848
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/b$a;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/model/b$a;-><init>(I)V

    .line 849
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(I)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v0

    .line 850
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v0

    .line 851
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/b$a;->e(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v0

    .line 852
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/b$a;->b(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v0

    .line 853
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/b$a;->c(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v0

    .line 854
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/b$a;->d(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object p0

    .line 855
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b$a;->a()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object p0

    .line 848
    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;I)Lcom/ss/android/socialbase/downloader/model/b;
    .registers 11

    .line 1921
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1922
    return-object v1

    .line 1924
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/b;->c(Z)J

    move-result-wide v2

    .line 1926
    sget-object v4, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reuseChunk retainLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const/4 v4, 0x0

    .line 1929
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v5

    if-nez v5, :cond_6f

    sget-wide v5, Lcom/ss/android/socialbase/downloader/constants/e;->f:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_6f

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseChunkRunnable()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1930
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/model/b;->a(IJ)Ljava/util/List;

    move-result-object v2

    .line 1931
    if-eqz v2, :cond_6c

    .line 1932
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 1933
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 1934
    goto :goto_5a

    .line 1936
    :cond_6c
    nop

    .line 1937
    move v4, v0

    goto :goto_76

    :cond_6f
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1938
    move v4, v0

    .line 1940
    :cond_76
    :goto_76
    if-eqz v4, :cond_150

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v2

    if-eqz v2, :cond_150

    .line 1941
    nop

    .line 1942
    move v2, v0

    :goto_80
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f4

    .line 1943
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 1944
    if-eqz v3, :cond_f1

    .line 1945
    sget-object v4, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check can checkUnCompletedChunk -- chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  startOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->q()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v4

    if-ltz v4, :cond_ee

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v4

    if-nez v4, :cond_f1

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->c()Z

    move-result v4

    if-nez v4, :cond_f1

    .line 1947
    :cond_ee
    nop

    .line 1948
    move-object v1, v3

    goto :goto_f4

    .line 1942
    :cond_f1
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1952
    :cond_f4
    :goto_f4
    if-eqz v1, :cond_14f

    .line 1954
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v2

    .line 1956
    sget-object v4, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unComplete chunk "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, " curOffset:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " reuseChunk chunkIndex:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " for subChunk:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v3

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-interface {p1, v2, v3, v4, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIII)V

    .line 1958
    invoke-virtual {v1, p2}, Lcom/ss/android/socialbase/downloader/model/b;->c(I)V

    .line 1959
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/b;->a(Z)V

    .line 1962
    :cond_14f
    return-object v1

    .line 1964
    :cond_150
    return-object v1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/b;)Ljava/util/List;

    move-result-object p1

    .line 861
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 862
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v1

    const-string v2, "if-modified-since"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcache::add head IF_MODIFIED_SINCE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_52
    return-object p1
.end method

.method private a(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1062
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_10

    .line 1065
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/util/List;J)V

    .line 1066
    return-void

    .line 1063
    :cond_10
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p2, 0x409

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private a(JI)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1069
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 1070
    int-to-long v4, v3

    div-long v4, v1, v4

    .line 1071
    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    .line 1073
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v11, v8

    :goto_18
    if-ge v10, v3, :cond_4e

    .line 1079
    add-int/lit8 v13, v3, -0x1

    if-ne v10, v13, :cond_20

    .line 1080
    move-wide v13, v8

    goto :goto_25

    .line 1082
    :cond_20
    add-long v13, v11, v4

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    .line 1085
    :goto_25
    new-instance v15, Lcom/ss/android/socialbase/downloader/model/b$a;

    invoke-direct {v15, v6}, Lcom/ss/android/socialbase/downloader/model/b$a;-><init>(I)V

    .line 1086
    invoke-virtual {v15, v10}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(I)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v15

    .line 1087
    invoke-virtual {v15, v11, v12}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v15

    .line 1088
    invoke-virtual {v15, v11, v12}, Lcom/ss/android/socialbase/downloader/model/b$a;->e(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v15

    .line 1089
    invoke-virtual {v15, v11, v12}, Lcom/ss/android/socialbase/downloader/model/b$a;->b(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v15

    .line 1090
    invoke-virtual {v15, v13, v14}, Lcom/ss/android/socialbase/downloader/model/b$a;->c(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v13

    .line 1091
    invoke-virtual {v13}, Lcom/ss/android/socialbase/downloader/model/b$a;->a()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v13

    .line 1092
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v14, v0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v14, v13}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 1094
    add-long/2addr v11, v4

    .line 1076
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 1097
    :cond_4e
    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    .line 1098
    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v4, v6, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 1100
    invoke-direct {v0, v7, v1, v2}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/util/List;J)V

    .line 1101
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/h/c;)V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->J()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/h/c;Ljava/util/List;)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/b;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/b;->a(J)V

    .line 1218
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    .line 1219
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 1220
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/d;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/d;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/h/f;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    .line 1221
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->t()V

    .line 1222
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 1415
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    .line 1416
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    .line 1418
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->resetDataForEtagEndure(Ljava/lang/String;)V

    .line 1419
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 1420
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/h;

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/exception/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_5

    .line 791
    return-void

    .line 793
    :cond_5
    const/4 v0, 0x0

    .line 794
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 796
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/network/a/a;->b(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/a/d;

    move-result-object v0

    .line 798
    :cond_17
    if-eqz v0, :cond_27

    .line 799
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/network/g;)V

    .line 800
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPreconnectLevel(I)V

    .line 801
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    goto :goto_7b

    .line 804
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 805
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxBytes()I

    move-result v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v1, "net_lib_strategy"

    .line 806
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v1, "monitor_download_connect"

    .line 807
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_49

    move v9, v2

    goto :goto_4a

    :cond_49
    move v9, v5

    :goto_4a
    iget-object v10, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 804
    move-object v5, p1

    move-object v7, p2

    invoke-static/range {v3 .. v10}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;
    :try_end_54
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_27 .. :try_end_54} :catch_8f
    .catchall {:try_start_27 .. :try_end_54} :catchall_55

    .line 820
    goto :goto_77

    .line 811
    :catchall_55
    move-exception p1

    .line 812
    :try_start_56
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->f(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_91

    const-string v0, ""

    if-eqz p2, :cond_64

    .line 813
    :try_start_5e
    const-string p1, "http code 416"

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 814
    :cond_64
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->e(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 815
    const-string p1, "http code 412"

    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 817
    :cond_70
    const-string p2, "CreateFirstConnection"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_91

    .line 820
    :goto_75
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    :goto_77
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/network/g;)V

    .line 821
    nop

    .line 824
    :goto_7b
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz p1, :cond_80

    .line 826
    return-void

    .line 825
    :cond_80
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p2, 0x3fe

    new-instance v0, Ljava/io/IOException;

    const-string v1, "download can\'t continue, firstConnection is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 809
    :catch_8f
    move-exception p1

    .line 810
    :try_start_90
    throw p1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    .line 820
    :catchall_91
    move-exception p1

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/network/g;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 706
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/h/c;->b(Ljava/lang/String;Ljava/util/List;J)V

    .line 707
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_f

    .line 710
    :try_start_7
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 714
    goto :goto_f

    .line 711
    :catchall_b
    move-exception v0

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->D:Z

    .line 718
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->D:Z

    if-eqz v0, :cond_1f

    .line 720
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 721
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;J)V

    .line 723
    :cond_1f
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1674
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    .line 1676
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/i;->g:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setForbiddenBackupUrls(Ljava/util/List;Z)V

    .line 1677
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object p1

    .line 1678
    if-eqz p1, :cond_26

    .line 1679
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->l(I)Z

    .line 1680
    :cond_26
    return-void

    .line 1675
    :cond_27
    :goto_27
    return-void
.end method

.method private a(Ljava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 1113
    if-nez v0, :cond_13

    .line 1114
    goto :goto_4

    .line 1117
    :cond_13
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    .line 1118
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v1

    sub-long v1, p2, v1

    goto :goto_30

    .line 1120
    :cond_24
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 1122
    :goto_30
    cmp-long v3, v1, v3

    if-gtz v3, :cond_35

    .line 1123
    goto :goto_4

    .line 1125
    :cond_35
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/b;->a(J)V

    .line 1127
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->D:Z

    if-eqz v1, :cond_79

    .line 1128
    :cond_50
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v1

    if-nez v1, :cond_65

    .line 1129
    new-instance v1, Lcom/ss/android/socialbase/downloader/h/b;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/ss/android/socialbase/downloader/h/b;-><init>(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/h/f;)V

    .line 1130
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 1131
    :cond_65
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v1

    if-lez v1, :cond_78

    .line 1132
    new-instance v1, Lcom/ss/android/socialbase/downloader/h/b;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v1, v0, v2, p0}, Lcom/ss/android/socialbase/downloader/h/b;-><init>(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/h/f;)V

    .line 1133
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    goto :goto_85

    .line 1131
    :cond_78
    :goto_78
    goto :goto_85

    .line 1136
    :cond_79
    new-instance v1, Lcom/ss/android/socialbase/downloader/h/b;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v1, v0, v2, p0}, Lcom/ss/android/socialbase/downloader/h/b;-><init>(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/h/f;)V

    .line 1137
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    :goto_85
    goto/16 :goto_4

    .line 1141
    :cond_87
    const/16 p1, 0x40

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 1142
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1143
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/h/b;

    .line 1144
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_b6

    .line 1145
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/h/b;->b()V

    .line 1146
    goto :goto_a0

    .line 1147
    :cond_b6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_c0

    .line 1148
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/h/b;->a()V

    .line 1149
    goto :goto_a0

    .line 1151
    :cond_c0
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    goto :goto_a0

    .line 1153
    :cond_c4
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 1157
    :try_start_cb
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/e;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1159
    nop

    .line 1160
    :goto_d0
    if-eqz p2, :cond_e6

    .line 1161
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result p3
    :try_end_d6
    .catchall {:try_start_cb .. :try_end_d6} :catchall_10d

    if-eqz p3, :cond_d9

    .line 1162
    return-void

    .line 1164
    :cond_d9
    :try_start_d9
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    .line 1167
    goto :goto_e1

    .line 1165
    :catchall_dd
    move-exception p2

    .line 1166
    :try_start_de
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1169
    :goto_e1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/e;->e(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p2

    goto :goto_d0

    .line 1173
    :cond_e6
    if-eqz p1, :cond_10c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10c

    .line 1174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;

    .line 1175
    if-eqz p2, :cond_10b

    .line 1176
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3
    :try_end_104
    .catchall {:try_start_de .. :try_end_104} :catchall_10d

    if-nez p3, :cond_10b

    .line 1178
    :try_start_106
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10a

    .line 1180
    goto :goto_10b

    .line 1179
    :catchall_10a
    move-exception p2

    .line 1183
    :cond_10b
    :goto_10b
    goto :goto_f2

    .line 1186
    :cond_10c
    goto :goto_10e

    .line 1185
    :catchall_10d
    move-exception p1

    .line 1188
    :goto_10e
    goto :goto_153

    .line 1189
    :cond_10f
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1190
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_120
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_148

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/h/b;

    .line 1191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_136

    .line 1192
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/h/b;->b()V

    .line 1193
    goto :goto_120

    .line 1194
    :cond_136
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_140

    .line 1195
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/h/b;->a()V

    .line 1196
    goto :goto_120

    .line 1199
    :cond_140
    invoke-static {p3}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    goto :goto_120

    .line 1203
    :cond_148
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result p2

    if-eqz p2, :cond_14f

    .line 1204
    return-void

    .line 1207
    :cond_14f
    :try_start_14f
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/e;->c(Ljava/util/List;)V
    :try_end_152
    .catch Ljava/lang/InterruptedException; {:try_start_14f .. :try_end_152} :catch_154

    .line 1210
    nop

    .line 1212
    :goto_153
    return-void

    .line 1208
    :catch_154
    move-exception p1

    .line 1209
    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p3, 0x3fc

    invoke-direct {p2, p3, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1404
    const/4 v0, 0x1

    const/16 v1, 0x19c

    if-ne p1, v1, :cond_6

    .line 1405
    return v0

    .line 1407
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->k:Z

    if-nez p2, :cond_20

    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->j:Z

    if-eqz p2, :cond_21

    .line 1408
    :cond_20
    return v0

    .line 1410
    :cond_21
    const/16 p2, 0xc9

    if-eq p1, p2, :cond_29

    const/16 p2, 0x1a0

    if-ne p1, p2, :cond_36

    :cond_29
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 769
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1a

    .line 771
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/a/c;

    move-result-object p3

    .line 772
    if-eqz p3, :cond_1a

    .line 773
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;

    .line 774
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPreconnectLevel(I)V

    .line 777
    :cond_1a
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;

    if-nez p3, :cond_52

    iget-boolean p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->D:Z

    if-nez p3, :cond_52

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result p3

    if-eqz p3, :cond_52

    .line 779
    :try_start_2a
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v0, "net_lib_strategy"

    .line 780
    invoke-virtual {p3, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v1, "monitor_download_connect"

    .line 781
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move p4, v2

    :goto_3f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 779
    invoke-static {p1, p2, p3, p4, v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_48

    .line 785
    goto :goto_52

    .line 783
    :catchall_48
    move-exception p1

    .line 784
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHeadConnectionException(Ljava/lang/String;)V

    .line 787
    :cond_52
    :goto_52
    return-void
.end method

.method private d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 8

    .line 1851
    nop

    .line 1852
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_b8

    .line 1853
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_18

    if-eqz p1, :cond_17

    .line 1855
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x42e

    if-eq v0, v3, :cond_18

    .line 1856
    :cond_17
    goto :goto_73

    .line 1857
    :cond_18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->trySwitchToNextBackupUrl()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1858
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1859
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    goto :goto_72

    .line 1860
    :cond_37
    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x3f3

    if-eq v0, v3, :cond_4f

    .line 1861
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_87

    :cond_4f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReplaceHttpForRetry()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1862
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1863
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    .line 1864
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpsToHttpRetryUsed(Z)V

    .line 1874
    :goto_72
    move v1, v2

    :goto_73
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq p1, v0, :cond_86

    if-eqz v1, :cond_86

    .line 1875
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    .line 1877
    :cond_86
    return v2

    .line 1866
    :cond_87
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "retry for exception, but current retry time : %s , retry Time %s all used, last error is %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 1867
    return v1

    .line 1870
    :cond_b8
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x413

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry for exception, but retain retry time is null, last error is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 1871
    return v1
.end method

.method private h()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_5

    .line 169
    return-void

    .line 170
    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result v1

    sub-int/2addr v0, v1

    .line 171
    if-gez v0, :cond_13

    .line 172
    const/4 v0, 0x0

    .line 173
    :cond_13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1f

    .line 174
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_22

    .line 176
    :cond_1f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 178
    :goto_22
    return-void
.end method

.method private i()Z
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 267
    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v2

    if-nez v2, :cond_36

    .line 268
    const/4 v1, -0x2

    if-eq v0, v1, :cond_34

    const/4 v1, -0x4

    if-eq v0, v1, :cond_34

    .line 269
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download Task can\'t start, because its status is not prepare:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 271
    :cond_34
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_36
    return v1
.end method

.method private j()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/a;
        }
    .end annotation

    .line 277
    const-string v0, "fix_file_exist_update_download_info"

    .line 278
    nop

    .line 280
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    .line 281
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v4, :cond_92

    .line 282
    const/16 v4, 0x800

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 283
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->d()Z

    .line 285
    :cond_1c
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    .line 286
    if-eqz v4, :cond_8c

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNewTask()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto/16 :goto_8c

    .line 290
    :cond_2c
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    .line 291
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v6

    .line 292
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7, v4, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->copyFromCacheData(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 293
    const/16 v7, 0x1000

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_47
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_5 .. :try_end_47} :catch_eb
    .catchall {:try_start_5 .. :try_end_47} :catchall_ab

    if-eq v4, v7, :cond_4b

    .line 294
    move v7, v2

    goto :goto_4c

    .line 296
    :cond_4b
    move v7, v1

    :goto_4c
    :try_start_4c
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static {v4, v1, v6}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLjava/lang/String;)Z

    move-result v5
    :try_end_5a
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_4c .. :try_end_5a} :catch_86
    .catchall {:try_start_4c .. :try_end_5a} :catchall_81

    if-nez v5, :cond_5d

    goto :goto_6e

    .line 297
    :cond_5d
    nop

    .line 298
    :try_start_5e
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/exception/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_68
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_5e .. :try_end_68} :catch_6b
    .catchall {:try_start_5e .. :try_end_68} :catchall_68

    .line 314
    :catchall_68
    move-exception v1

    move-object v3, v1

    goto :goto_84

    .line 312
    :catch_6b
    move-exception v1

    move-object v3, v1

    goto :goto_89

    .line 300
    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I

    move-result v4
    :try_end_72
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_6e .. :try_end_72} :catch_86
    .catchall {:try_start_6e .. :try_end_72} :catchall_81

    .line 301
    if-eq v4, v3, :cond_7f

    .line 303
    :try_start_74
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_79} :catch_7a
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_74 .. :try_end_79} :catch_86
    .catchall {:try_start_74 .. :try_end_79} :catchall_81

    .line 306
    goto :goto_7e

    .line 304
    :catch_7a
    move-exception v3

    .line 305
    :try_start_7b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7e
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_7b .. :try_end_7e} :catch_86
    .catchall {:try_start_7b .. :try_end_7e} :catchall_81

    .line 307
    :goto_7e
    goto :goto_93

    .line 301
    :cond_7f
    move v2, v7

    goto :goto_93

    .line 314
    :catchall_81
    move-exception v2

    move-object v3, v2

    move v2, v1

    :goto_84
    move v1, v7

    goto :goto_ae

    .line 312
    :catch_86
    move-exception v2

    move-object v3, v2

    move v2, v1

    :goto_89
    move v1, v7

    goto/16 :goto_ee

    .line 287
    :cond_8c
    :goto_8c
    :try_start_8c
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->reset()V
    :try_end_91
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_8c .. :try_end_91} :catch_eb
    .catchall {:try_start_8c .. :try_end_91} :catchall_ab

    .line 288
    goto :goto_93

    .line 281
    :cond_92
    move v2, v1

    .line 311
    :goto_93
    :try_start_93
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->h()V
    :try_end_96
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_93 .. :try_end_96} :catch_a6
    .catchall {:try_start_93 .. :try_end_96} :catchall_a1

    .line 319
    if-eqz v2, :cond_ea

    .line 321
    nop

    .line 322
    :try_start_99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_99 .. :try_end_a0} :catch_e6

    goto :goto_ea

    .line 314
    :catchall_a1
    move-exception v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_ae

    .line 312
    :catch_a6
    move-exception v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_ee

    .line 314
    :catchall_ab
    move-exception v2

    move-object v3, v2

    move v2, v1

    .line 315
    :goto_ae
    :try_start_ae
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v4, :cond_d2

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v5, :cond_d2

    .line 316
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v6, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v7, 0x3eb

    const-string v8, "checkTaskCache"

    invoke-static {v3, v8}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    invoke-static {v4, v5, v6, v3}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_d2
    .catchall {:try_start_ae .. :try_end_d2} :catchall_ef

    .line 319
    :cond_d2
    if-eqz v1, :cond_ea

    .line 321
    if-eqz v2, :cond_de

    :try_start_d6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 322
    :cond_de
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_e5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d6 .. :try_end_e5} :catch_e6

    goto :goto_ea

    .line 324
    :catch_e6
    move-exception v0

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 329
    :cond_ea
    :goto_ea
    return-void

    .line 312
    :catch_eb
    move-exception v2

    move-object v3, v2

    move v2, v1

    .line 313
    :goto_ee
    :try_start_ee
    throw v3
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    .line 319
    :catchall_ef
    move-exception v3

    if-eqz v1, :cond_108

    .line 321
    if-eqz v2, :cond_fc

    :try_start_f4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->I:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 322
    :cond_fc
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_103
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f4 .. :try_end_103} :catch_104

    .line 326
    :cond_103
    goto :goto_108

    .line 324
    :catch_104
    move-exception v0

    .line 325
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 326
    :cond_108
    :goto_108
    throw v3
.end method

.method private k()V
    .registers 8

    .line 347
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 350
    const-wide/16 v0, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_1b

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->H:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_1b

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ss/android/socialbase/downloader/h/c;->H:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseDownloadPrepareTime(J)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    .line 355
    :cond_1b
    goto :goto_1d

    .line 353
    :catchall_1c
    move-exception v2

    .line 357
    :goto_1d
    nop

    .line 359
    :try_start_1e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getInterceptor()Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_38

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/y;->a()Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_34

    if-eqz v2, :cond_38

    .line 361
    nop

    .line 367
    nop

    .line 368
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->e()V

    .line 362
    return-void

    .line 364
    :catchall_34
    move-exception v2

    .line 365
    :try_start_35
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_12a

    .line 367
    :cond_38
    nop

    .line 372
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->i()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 373
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "task status is invalid"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v3, :cond_59

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    :goto_5a
    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 374
    return-void

    .line 379
    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->l()V

    .line 380
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->C:Z

    if-nez v2, :cond_67

    .line 381
    goto/16 :goto_129

    .line 382
    :cond_67
    iget v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->B:I

    if-lez v2, :cond_72

    .line 383
    iget v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->B:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->B:I

    goto :goto_5e

    .line 385
    :cond_72
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b3

    .line 386
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v2, 0x403

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current bytes is not equals to total bytes, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 388
    goto :goto_129

    .line 389
    :cond_b3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_ee

    .line 390
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v2, 0x402

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curBytes is 0, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 392
    goto :goto_129

    .line 393
    :cond_ee
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_5e

    .line 394
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v2, 0x414

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalBytes is 0, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 396
    nop

    .line 401
    :goto_129
    return-void

    .line 367
    :catchall_12a
    move-exception v0

    .line 368
    throw v0
.end method

.method private l()V
    .registers 18

    move-object/from16 v1, p0

    .line 408
    :try_start_2
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->a:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 409
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateStartDownloadTime()V

    .line 410
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->resetRealStartDownloadTime()V

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 415
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_367

    .line 417
    nop

    .line 419
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1e
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->j()V
    :try_end_21
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_1e .. :try_end_21} :catch_23
    .catchall {:try_start_1e .. :try_end_21} :catchall_367

    .line 425
    move v0, v5

    goto :goto_48

    .line 420
    :catch_23
    move-exception v0

    move-object v6, v0

    .line 421
    :try_start_25
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file exist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/exception/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/exception/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    .line 423
    move v0, v4

    .line 427
    :goto_48
    iget-boolean v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->C:Z

    if-nez v6, :cond_51

    .line 428
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/downloader/e;->b()V

    .line 430
    :cond_51
    iput-boolean v5, v1, Lcom/ss/android/socialbase/downloader/h/c;->C:Z

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v6
    :try_end_57
    .catchall {:try_start_25 .. :try_end_57} :catchall_367

    if-eqz v6, :cond_5d

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 433
    return-void

    .line 435
    :cond_5d
    :try_start_5d
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d9

    if-eqz v0, :cond_d9

    .line 437
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 438
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDeleteCacheIfCheckFailed()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 440
    iput-boolean v5, v1, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    .line 441
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v6, "dcache::last modify is emtpy, so just return cache"

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    .line 443
    :cond_8d
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dcache::curt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expired="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCacheExpiredTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCacheExpiredTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_ce

    .line 446
    iput-boolean v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    .line 447
    const-string v6, "dcache::expired=true"

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_ce
    :goto_ce
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    if-nez v0, :cond_d9

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->m()V
    :try_end_d5
    .catchall {:try_start_5d .. :try_end_d5} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 454
    return-void

    .line 459
    :cond_d9
    :goto_d9
    :try_start_d9
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v0
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_367

    if-eqz v0, :cond_e3

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 460
    return-void

    .line 464
    :cond_e3
    :try_start_e3
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->F()V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->B()V

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->E()V

    .line 470
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v8

    invoke-interface {v0, v8}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v0

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->G()V

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->n()Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 476
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v8, "downloadSegments return"

    invoke-static {v0, v8}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_e3 .. :try_end_108} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_e3 .. :try_end_108} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_e3 .. :try_end_108} :catch_241
    .catchall {:try_start_e3 .. :try_end_108} :catchall_216

    .line 612
    :try_start_108
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 477
    return-void

    .line 480
    :cond_10f
    :try_start_10f
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getConnectionUrl()Ljava/lang/String;

    move-result-object v8

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v9
    :try_end_119
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_10f .. :try_end_119} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10f .. :try_end_119} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_10f .. :try_end_119} :catch_241
    .catchall {:try_start_10f .. :try_end_119} :catchall_216

    if-eqz v9, :cond_122

    .line 612
    :try_start_11b
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 483
    return-void

    .line 485
    :cond_122
    nop

    .line 486
    :try_start_123
    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    if-eqz v9, :cond_12e

    .line 487
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/i/e;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)J

    move-result-wide v9

    goto :goto_130

    .line 486
    :cond_12e
    const-wide/16 v9, 0x0

    .line 491
    :goto_130
    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v11, v9, v10}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v11

    .line 494
    invoke-direct {v1, v11}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/model/b;)Ljava/util/List;

    move-result-object v12

    .line 496
    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v12, v13}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 497
    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v13, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPreconnectLevel(I)V

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_148
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_123 .. :try_end_148} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_123 .. :try_end_148} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_123 .. :try_end_148} :catch_241
    .catchall {:try_start_123 .. :try_end_148} :catchall_216

    .line 503
    :try_start_148
    invoke-direct {v1, v8, v12, v9, v10}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_209

    .line 505
    :try_start_14b
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v6, v15, v13

    invoke-virtual {v9, v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    .line 506
    nop

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v6
    :try_end_15b
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_14b .. :try_end_15b} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_14b .. :try_end_15b} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_14b .. :try_end_15b} :catch_241
    .catchall {:try_start_14b .. :try_end_15b} :catchall_216

    if-eqz v6, :cond_164

    .line 612
    :try_start_15d
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 509
    return-void

    .line 511
    :cond_164
    :try_start_164
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v6

    .line 512
    invoke-virtual {v1, v6, v7}, Lcom/ss/android/socialbase/downloader/h/c;->a(J)V

    .line 514
    invoke-direct {v1, v6, v7, v0}, Lcom/ss/android/socialbase/downloader/h/c;->a(JLjava/util/List;)I

    move-result v9

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v10
    :try_end_175
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_164 .. :try_end_175} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_164 .. :try_end_175} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_164 .. :try_end_175} :catch_241
    .catchall {:try_start_164 .. :try_end_175} :catchall_216

    if-eqz v10, :cond_17e

    .line 612
    :try_start_177
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 517
    return-void

    .line 519
    :cond_17e
    if-lez v9, :cond_1ff

    .line 523
    if-ne v9, v4, :cond_184

    move v10, v4

    goto :goto_185

    :cond_184
    move v10, v5

    :goto_185
    :try_start_185
    iput-boolean v10, v1, Lcom/ss/android/socialbase/downloader/h/c;->h:Z

    .line 525
    if-eqz v10, :cond_1cc

    .line 527
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;
    :try_end_18b
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_185 .. :try_end_18b} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_185 .. :try_end_18b} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_185 .. :try_end_18b} :catch_241
    .catchall {:try_start_185 .. :try_end_18b} :catchall_216

    if-nez v0, :cond_1ab

    .line 529
    :try_start_18d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 530
    invoke-direct {v1, v8, v12}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_194
    .catchall {:try_start_18d .. :try_end_194} :catchall_19f

    .line 532
    :try_start_194
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    invoke-virtual {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    .line 533
    goto :goto_1ab

    .line 532
    :catchall_19f
    move-exception v0

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v13

    invoke-virtual {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    throw v0

    .line 536
    :cond_1ab
    :goto_1ab
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v0
    :try_end_1af
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_194 .. :try_end_1af} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_194 .. :try_end_1af} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_194 .. :try_end_1af} :catch_241
    .catchall {:try_start_194 .. :try_end_1af} :catchall_216

    if-eqz v0, :cond_1b8

    .line 612
    :try_start_1b1
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 537
    return-void

    .line 540
    :cond_1b8
    :try_start_1b8
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->o()V

    .line 544
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-direct {v1, v11, v8, v0}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/model/b;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;)V

    goto/16 :goto_358

    .line 547
    :cond_1cc
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result v8

    if-nez v8, :cond_1d7

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->r()V

    .line 550
    :cond_1d7
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v8
    :try_end_1db
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_1b8 .. :try_end_1db} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1b8 .. :try_end_1db} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_1b8 .. :try_end_1db} :catch_241
    .catchall {:try_start_1b8 .. :try_end_1db} :catchall_216

    if-eqz v8, :cond_1e4

    .line 612
    :try_start_1dd
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_1e0
    .catchall {:try_start_1dd .. :try_end_1e0} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 551
    return-void

    .line 553
    :cond_1e4
    :try_start_1e4
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->o()V

    .line 556
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    .line 557
    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->i:Z

    if-eqz v8, :cond_1fa

    .line 558
    invoke-direct {v1, v9, v0}, Lcom/ss/android/socialbase/downloader/h/c;->a(ILjava/util/List;)V

    goto/16 :goto_358

    .line 560
    :cond_1fa
    invoke-direct {v1, v6, v7, v9}, Lcom/ss/android/socialbase/downloader/h/c;->a(JI)V

    goto/16 :goto_358

    .line 520
    :cond_1ff
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v6, 0x408

    const-string v7, "chunkCount is 0"

    invoke-direct {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 505
    :catchall_209
    move-exception v0

    move-object v6, v0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v13

    invoke-virtual {v0, v7, v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    throw v6
    :try_end_216
    .catch Lcom/ss/android/socialbase/downloader/exception/a; {:try_start_1e4 .. :try_end_216} :catch_354
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1e4 .. :try_end_216} :catch_2f5
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_1e4 .. :try_end_216} :catch_241
    .catchall {:try_start_1e4 .. :try_end_216} :catchall_216

    .line 606
    :catchall_216
    move-exception v0

    .line 607
    :try_start_217
    sget-object v2, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadInner: throwable =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq v2, v3, :cond_358

    .line 609
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x415

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_358

    .line 586
    :catch_241
    move-exception v0

    .line 587
    sget-object v6, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadInner: retry throwable for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/h;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v7, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq v6, v7, :cond_358

    .line 589
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x5

    if-eqz v6, :cond_280

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-lez v6, :cond_280

    .line 590
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V

    .line 591
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_2a7

    .line 593
    :cond_280
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_2d3

    .line 594
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->trySwitchToNextBackupUrl()Z

    move-result v6

    if-eqz v6, :cond_2ac

    .line 595
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 596
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 597
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateCurRetryTime(I)V
    :try_end_2a7
    .catchall {:try_start_217 .. :try_end_2a7} :catchall_362

    .line 612
    :cond_2a7
    :goto_2a7
    :try_start_2a7
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_2aa
    .catchall {:try_start_2a7 .. :try_end_2aa} :catchall_367

    goto/16 :goto_d9

    .line 600
    :cond_2ac
    :try_start_2ac
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3fa

    const-string v6, "retry for Throwable, but retry Time %s all used, last error is %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/h;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_358

    .line 603
    :cond_2d3
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x413

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry for Throwable, but retain retry time is NULL, last error is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_358

    .line 566
    :catch_2f5
    move-exception v0

    .line 567
    sget-object v6, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadInner: baseException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v7, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq v6, v7, :cond_358

    .line 569
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v6

    const/16 v7, 0x401

    if-eq v6, v7, :cond_349

    .line 570
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v6

    const/16 v7, 0x3f1

    if-ne v6, v7, :cond_325

    goto :goto_349

    .line 573
    :cond_325
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v6

    if-eqz v6, :cond_345

    .line 574
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v6

    if-eqz v6, :cond_334

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->H()V

    .line 577
    :cond_334
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v0, v6, v7}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;

    move-result-object v0

    .line 578
    sget-object v6, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;
    :try_end_33c
    .catchall {:try_start_2ac .. :try_end_33c} :catchall_362

    if-ne v0, v6, :cond_2a7

    .line 612
    :try_start_33e
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_341
    .catchall {:try_start_33e .. :try_end_341} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 579
    return-void

    .line 583
    :cond_345
    :try_start_345
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_358

    .line 571
    :cond_349
    :goto_349
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->e:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;
    :try_end_34d
    .catchall {:try_start_345 .. :try_end_34d} :catchall_362

    .line 612
    :try_start_34d
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_350
    .catchall {:try_start_34d .. :try_end_350} :catchall_367

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 572
    return-void

    .line 564
    :catch_354
    move-exception v0

    .line 565
    :try_start_355
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->m()V
    :try_end_358
    .catchall {:try_start_355 .. :try_end_358} :catchall_362

    .line 612
    :cond_358
    :goto_358
    :try_start_358
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V
    :try_end_35b
    .catchall {:try_start_358 .. :try_end_35b} :catchall_367

    .line 613
    nop

    .line 615
    nop

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 619
    nop

    .line 620
    return-void

    .line 612
    :catchall_362
    move-exception v0

    :try_start_363
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V

    throw v0
    :try_end_367
    .catchall {:try_start_363 .. :try_end_367} :catchall_367

    .line 618
    :catchall_367
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    throw v0
.end method

.method private m()V
    .registers 4

    .line 623
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v1, "finishWithFileExist"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "fix_end_for_file_exist_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 626
    if-eqz v0, :cond_2c

    .line 627
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 629
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->e:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    goto :goto_43

    .line 632
    :cond_27
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->h:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    goto :goto_43

    .line 635
    :cond_2c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 636
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->e:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    goto :goto_43

    .line 638
    :cond_3f
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->h:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 641
    :goto_43
    return-void
.end method

.method private n()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 646
    return v1

    .line 648
    :cond_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8d

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getThrottleNetSpeed()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_20

    goto :goto_8d

    .line 654
    :cond_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v3, "segment_config"

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 656
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->n(I)Ljava/util/List;

    move-result-object v3

    .line 657
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_58

    .line 660
    if-eqz v3, :cond_57

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_57

    .line 666
    :cond_4f
    if-nez v0, :cond_58

    .line 668
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_58

    .line 663
    :cond_57
    :goto_57
    return v1

    .line 673
    :cond_58
    :goto_58
    if-nez v0, :cond_5b

    .line 675
    return v1

    .line 678
    :cond_5b
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/f/n;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/f/n;

    move-result-object v0

    .line 679
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/k;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {v1, v4, v0, p0}, Lcom/ss/android/socialbase/downloader/f/k;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/n;Lcom/ss/android/socialbase/downloader/h/f;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    .line 681
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 682
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v1, "downloadSegments: is stopped by user"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_81

    .line 684
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/k;->a()V

    goto :goto_86

    .line 686
    :cond_81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 688
    :goto_86
    return v2

    .line 691
    :cond_87
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;)V

    .line 692
    return v2

    .line 651
    :cond_8d
    :goto_8d
    return v1
.end method

.method private o()V
    .registers 4

    .line 697
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "reset_retain_retry_times"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    iget v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->J:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_38

    .line 699
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBackUpUrlUsed()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v2

    goto :goto_30

    :cond_2a
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v2

    :goto_30
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 700
    iget v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->J:I

    .line 702
    :cond_38
    return-void
.end method

.method private p()V
    .registers 8

    .line 726
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endDownloadRunnable::runStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    nop

    .line 729
    nop

    .line 730
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq v0, v1, :cond_2c

    move v0, v3

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 732
    :goto_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->w()Z

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_33

    .line 740
    move v4, v2

    goto :goto_4e

    .line 733
    :catch_33
    move-exception v1

    .line 734
    instance-of v4, v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v4, :cond_40

    .line 735
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_4c

    .line 737
    :cond_40
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v6, 0x416

    invoke-direct {v5, v6, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 739
    :goto_4c
    move v1, v3

    move v4, v1

    .line 742
    :goto_4e
    if-nez v1, :cond_5d

    if-eqz v4, :cond_53

    goto :goto_5d

    .line 763
    :cond_53
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->C:Z

    .line 764
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v1, "jump to restart"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 743
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 744
    if-eqz v0, :cond_93

    .line 746
    :try_start_64
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_6d

    .line 755
    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/h/c;)V
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6e

    .line 760
    :cond_6d
    :goto_6d
    goto :goto_93

    .line 757
    :catchall_6e
    move-exception v0

    .line 758
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 759
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v4, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v5, 0x3f6

    const-string v6, "removeDownloadRunnable"

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    :cond_8f
    invoke-static {v1, v3, v4, v2}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    goto :goto_6d

    .line 766
    :cond_93
    :goto_93
    return-void
.end method

.method private q()V
    .registers 2

    .line 829
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_a

    .line 830
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/g;->c()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->y:Lcom/ss/android/socialbase/downloader/network/g;

    .line 833
    :cond_a
    return-void
.end method

.method private r()V
    .registers 2

    .line 836
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_a

    .line 837
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    .line 840
    :cond_a
    return-void
.end method

.method private s()V
    .registers 1

    .line 843
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->q()V

    .line 844
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->r()V

    .line 845
    return-void
.end method

.method private t()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_2d

    .line 870
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_16

    .line 871
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 872
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    goto :goto_2d

    .line 873
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_28

    .line 874
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 875
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    goto :goto_2d

    .line 877
    :cond_28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()V

    .line 880
    :cond_2d
    :goto_2d
    return-void
.end method

.method private u()Z
    .registers 3

    .line 883
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private v()Z
    .registers 3

    .line 887
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->u()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_12

    .line 897
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 888
    :cond_12
    :goto_12
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->u()Z

    move-result v0

    if-nez v0, :cond_32

    .line 889
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_25

    .line 890
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    goto :goto_32

    .line 891
    :cond_25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_32

    .line 892
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 895
    :cond_32
    :goto_32
    const/4 v0, 0x1

    return v0
.end method

.method private w()Z
    .registers 6

    .line 902
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->d:Lcom/ss/android/socialbase/downloader/constants/i;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    .line 903
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto/16 :goto_ad

    .line 904
    :cond_10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_1d

    .line 905
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->c()V

    goto/16 :goto_ad

    .line 906
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_2a

    .line 907
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    goto/16 :goto_ad

    .line 908
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->e:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_3e

    .line 910
    :try_start_30
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->g()V
    :try_end_35
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_3c

    .line 911
    :catch_36
    move-exception v0

    .line 912
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 913
    :goto_3c
    goto/16 :goto_ad

    .line 914
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->h:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_53

    .line 916
    :try_start_44
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Ljava/lang/String;)V
    :try_end_4b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_52

    .line 917
    :catch_4c
    move-exception v0

    .line 918
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 919
    :goto_52
    goto :goto_ad

    .line 920
    :cond_53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->i:Lcom/ss/android/socialbase/downloader/constants/i;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_62

    .line 921
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 922
    return v3

    .line 923
    :cond_62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->g:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_69

    .line 924
    return v2

    .line 925
    :cond_69
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_88

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->x()Z

    move-result v0

    if-nez v0, :cond_88

    .line 926
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v1, "doTaskStatusHandle retryDelay"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->z()V

    .line 928
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v0, v1, :cond_86

    goto :goto_87

    :cond_86
    move v2, v3

    :goto_87
    return v2

    .line 931
    :cond_88
    :try_start_88
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->y()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 932
    return v3

    .line 933
    :cond_8f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()V

    .line 934
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->d()V
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_9c

    .line 937
    goto :goto_ad

    .line 935
    :catchall_9c
    move-exception v0

    .line 936
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3f0

    const-string v4, "doTaskStatusHandle onComplete"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 940
    :goto_ad
    return v2
.end method

.method private x()Z
    .registers 8

    .line 944
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_28

    .line 945
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_27

    .line 946
    return v2

    .line 948
    :cond_27
    return v1

    .line 950
    :cond_28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_3d

    goto :goto_59

    .line 953
    :cond_3d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 954
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_57

    .line 956
    :cond_56
    goto :goto_41

    .line 955
    :cond_57
    :goto_57
    return v1

    .line 957
    :cond_58
    return v2

    .line 952
    :cond_59
    :goto_59
    return v1
.end method

.method private y()Z
    .registers 5

    .line 961
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 962
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 964
    :cond_11
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCompletedByteValid: downloadInfo.getCurBytes() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  downloadInfo.getTotalBytes() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_70

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_70

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6e

    goto :goto_70

    .line 974
    :cond_6e
    const/4 v0, 0x1

    return v0

    .line 966
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->b:Lcom/ss/android/socialbase/downloader/constants/b;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setByteInvalidRetryStatus(Lcom/ss/android/socialbase/downloader/constants/b;)V

    .line 967
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->reset()V

    .line 968
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 969
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 970
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->m(I)V

    .line 971
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method private z()V
    .registers 2

    .line 978
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->a:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 1014
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;
    .registers 11

    .line 1744
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1745
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    neg-long p2, p2

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseCurBytes(J)V

    .line 1746
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 1747
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->u()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1748
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1750
    :cond_18
    nop

    .line 1751
    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x417

    if-ne v0, v1, :cond_67

    .line 1752
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->z:Lcom/ss/android/socialbase/downloader/depend/x;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_5e

    .line 1756
    :cond_32
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/c$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/h/c$1;-><init>(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 1763
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->z:Lcom/ss/android/socialbase/downloader/depend/x;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/depend/x;->a(Lcom/ss/android/socialbase/downloader/depend/w;)Z

    move-result v1

    .line 1764
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setForbiddenRetryed()V

    .line 1765
    if-eqz v1, :cond_5b

    .line 1766
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/depend/b;->a()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1767
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->I()V

    .line 1768
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 1769
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/i;->g:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 1770
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1772
    :cond_59
    move v0, p2

    goto :goto_5c

    .line 1765
    :cond_5b
    move v0, p3

    .line 1775
    :goto_5c
    goto/16 :goto_100

    .line 1753
    :cond_5e
    :goto_5e
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1754
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1776
    :cond_67
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1778
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->A:Lcom/ss/android/socialbase/downloader/depend/r;

    if-nez v0, :cond_77

    .line 1779
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 1780
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1782
    :cond_77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1783
    new-instance v6, Lcom/ss/android/socialbase/downloader/h/c$2;

    invoke-direct {v6, p0, v0}, Lcom/ss/android/socialbase/downloader/h/c$2;-><init>(Lcom/ss/android/socialbase/downloader/h/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1794
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/exception/d;

    if-eqz v1, :cond_91

    .line 1795
    move-object v1, p1

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/exception/d;->a()J

    move-result-wide v2

    .line 1796
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/exception/d;->b()J

    move-result-wide v4

    goto :goto_9b

    .line 1798
    :cond_91
    const-wide/16 v1, -0x1

    .line 1799
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    move-wide v4, v3

    move-wide v2, v1

    .line 1801
    :goto_9b
    monitor-enter p0

    .line 1802
    :try_start_9c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->A:Lcom/ss/android/socialbase/downloader/depend/r;

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/depend/r;->a(JJLcom/ss/android/socialbase/downloader/depend/q;)Z

    move-result v1

    .line 1803
    if-eqz v1, :cond_e2

    .line 1804
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "not_delete_when_clean_space"

    invoke-virtual {v1, v2, p3}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 1807
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->y()Z

    .line 1809
    :cond_b9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1810
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object p2, Lcom/ss/android/socialbase/downloader/constants/i;->g:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq p1, p2, :cond_d1

    .line 1811
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/i;->g:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 1812
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->I()V

    .line 1813
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 1815
    :cond_d1
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    monitor-exit p0

    return-object p1

    .line 1817
    :cond_d5
    nop

    .line 1825
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_9c .. :try_end_d7} :catchall_f3

    .line 1827
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1828
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1829
    :cond_e0
    move v0, p2

    goto :goto_100

    .line 1819
    :cond_e2
    :try_start_e2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object p3, Lcom/ss/android/socialbase/downloader/constants/i;->g:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne p2, p3, :cond_ec

    .line 1820
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    monitor-exit p0

    return-object p1

    .line 1822
    :cond_ec
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 1823
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    monitor-exit p0

    return-object p1

    .line 1825
    :catchall_f3
    move-exception p1

    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_f3

    throw p1

    .line 1830
    :cond_f6
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1831
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1834
    :cond_ff
    move v0, p3

    :goto_100
    if-nez v0, :cond_10b

    .line 1835
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->K()Z

    move-result v0

    .line 1836
    if-eqz v0, :cond_10b

    .line 1837
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->I()V

    .line 1840
    :cond_10b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne v1, v2, :cond_114

    goto :goto_115

    :cond_114
    move p2, p3

    :goto_115
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 1841
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object p2, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne p1, p2, :cond_121

    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    goto :goto_123

    :cond_121
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->b:Lcom/ss/android/socialbase/downloader/exception/g;

    :goto_123
    return-object p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;
    .registers 7

    .line 1699
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1700
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1703
    :cond_9
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_19

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1705
    :cond_19
    invoke-virtual {p0, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;

    move-result-object p1

    return-object p1

    .line 1709
    :cond_1e
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/h/c;->w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1711
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    neg-long p3, p3

    invoke-virtual {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseCurBytes(J)V

    .line 1713
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object p4, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 1715
    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/h/c;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p3

    if-eqz p3, :cond_36

    .line 1717
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->a:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1

    .line 1720
    :cond_36
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object p4, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-ne p4, v0, :cond_40

    const/4 p4, 0x1

    goto :goto_41

    :cond_40
    const/4 p4, 0x0

    :goto_41
    invoke-virtual {p3, p1, p2, p4}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 1722
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    sget-object p2, Lcom/ss/android/socialbase/downloader/constants/i;->f:Lcom/ss/android/socialbase/downloader/constants/i;

    if-eq p1, p2, :cond_95

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 1723
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->A()J

    move-result-wide p1

    .line 1724
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_95

    .line 1725
    sget-object p3, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleChunkRetry with delay time "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :try_start_74
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    .line 1733
    goto :goto_95

    .line 1731
    :catchall_78
    move-exception p1

    .line 1732
    sget-object p2, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSingleChunkRetry:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    :cond_95
    :goto_95
    sget-object p1, Lcom/ss/android/socialbase/downloader/exception/g;->b:Lcom/ss/android/socialbase/downloader/exception/g;

    return-object p1
.end method

.method public declared-synchronized a(I)Lcom/ss/android/socialbase/downloader/model/b;
    .registers 6

    monitor-enter p0

    .line 1882
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_41

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 1883
    monitor-exit p0

    return-object v2

    .line 1885
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v0

    .line 1886
    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_3f

    .line 1889
    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3d

    .line 1890
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 1891
    if-nez v3, :cond_32

    .line 1892
    goto :goto_3a

    .line 1893
    :cond_32
    invoke-direct {p0, v3, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/model/b;I)Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_41

    .line 1894
    if-eqz v3, :cond_3a

    .line 1895
    monitor-exit p0

    return-object v3

    .line 1889
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1898
    :cond_3d
    monitor-exit p0

    return-object v2

    .line 1887
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-object v2

    .line 1881
    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .registers 3

    .line 181
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 182
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    if-eqz v0, :cond_d

    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 185
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_16

    .line 186
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    .line 188
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-nez v0, :cond_28

    .line 189
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V

    .line 190
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->b:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 191
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 194
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/h/b;

    .line 196
    if-eqz v1, :cond_45

    .line 197
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/h/b;->a()V
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_47

    .line 199
    :cond_45
    goto :goto_34

    .line 202
    :cond_46
    goto :goto_4b

    .line 200
    :catchall_47
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    :goto_4b
    return-void
.end method

.method public a(J)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1236
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const-string v0, "MB"

    const-string v4, ", mustSetLength = "

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v5

    .line 1237
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v6

    .line 1239
    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/downloader/i/e;->b(J)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1240
    return-void

    .line 1243
    :cond_1b
    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object v7

    .line 1245
    const/4 v8, 0x0

    :try_start_21
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 1246
    sub-long v12, v2, v10

    .line 1247
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/String;)J

    move-result-wide v5

    .line 1249
    nop

    .line 1250
    nop

    .line 1251
    iget-object v14, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v14

    invoke-static {v14}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v14

    .line 1252
    const-string v15, "space_fill_part_download"

    invoke-virtual {v14, v15, v8}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v15
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_208

    const-string v8, " 0"

    const-string v16, "="

    const-string v17, "<"

    const-string v9, "availableSpace "

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne v15, v6, :cond_151

    .line 1254
    :try_start_53
    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    .line 1255
    cmp-long v6, v12, v4

    if-gtz v6, :cond_67

    .line 1256
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v12

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v21

    sub-long v12, v12, v21

    .line 1258
    :cond_67
    cmp-long v6, v19, v12

    if-gez v6, :cond_14f

    .line 1259
    sget-object v6, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSpaceOverflow: contentLength = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_78
    .catchall {:try_start_53 .. :try_end_78} :catchall_208

    move-object v5, v7

    move-object v15, v8

    :try_start_7a
    invoke-static/range {p1 .. p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "MB, downloaded = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1260
    invoke-static {v10, v11}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "MB, required = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1261
    invoke-static {v12, v13}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "MB, available = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1262
    invoke-static/range {v19 .. v20}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1259
    invoke-static {v6, v4}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-wide/16 v7, 0x0

    cmp-long v4, v19, v7

    if-lez v4, :cond_11d

    .line 1264
    const-string v4, "space_fill_min_keep_mb"

    const/16 v7, 0x64

    invoke-virtual {v14, v4, v7}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v4

    .line 1268
    if-lez v4, :cond_10e

    .line 1269
    int-to-long v7, v4

    const-wide/32 v14, 0x100000

    mul-long/2addr v7, v14

    sub-long v7, v19, v7

    .line 1270
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkSpaceOverflow: minKeep = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "MB, canDownload = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1271
    invoke-static {v7, v8}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    invoke-static {v6, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-wide/16 v14, 0x0

    cmp-long v0, v7, v14

    if-lez v0, :cond_106

    .line 1275
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v12

    add-long/2addr v12, v7

    iput-wide v12, v1, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    goto :goto_110

    .line 1273
    :cond_106
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/d;

    move-wide/from16 v7, v19

    invoke-direct {v0, v7, v8, v12, v13}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(JJ)V

    throw v0

    .line 1277
    :cond_10e
    move-wide/from16 v7, v19

    .line 1279
    :goto_110
    cmp-long v0, v10, v2

    if-gez v0, :cond_119

    .line 1280
    add-long/2addr v7, v10

    .line 1281
    cmp-long v0, v7, v2

    if-lez v0, :cond_11a

    .line 1286
    :cond_119
    move-wide v7, v2

    :cond_11a
    const/4 v4, 0x1

    goto/16 :goto_188

    .line 1288
    :cond_11d
    const-string v0, "download_when_space_negative"

    const/4 v6, 0x0

    invoke-virtual {v14, v0, v6}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_12a

    .line 1289
    move-wide v7, v2

    const/4 v4, 0x0

    goto :goto_188

    .line 1291
    :cond_12a
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v4, :cond_13a

    move-object/from16 v3, v16

    goto :goto_13c

    :cond_13a
    move-object/from16 v3, v17

    :goto_13c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v15

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x41c

    invoke-direct {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1258
    :cond_14f
    move-object v5, v7

    goto :goto_186

    .line 1298
    :cond_151
    move-object v5, v7

    move-object v4, v8

    move-wide/from16 v7, v19

    const-wide/16 v14, 0x0

    cmp-long v0, v7, v14

    if-gtz v0, :cond_182

    .line 1299
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_16b

    move-object/from16 v0, v16

    goto :goto_16d

    :cond_16b
    move-object/from16 v0, v17

    :goto_16d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x41c

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_17f
    .catchall {:try_start_7a .. :try_end_17f} :catchall_17f

    .line 1331
    :catchall_17f
    move-exception v0

    goto/16 :goto_20a

    .line 1303
    :cond_182
    cmp-long v0, v7, v12

    if-ltz v0, :cond_202

    .line 1310
    :goto_186
    move-wide v7, v2

    const/4 v4, 0x1

    :goto_188
    :try_start_188
    invoke-virtual {v5, v2, v3}, Lcom/ss/android/socialbase/downloader/model/e;->b(J)V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_18c

    .line 1328
    goto :goto_1f1

    .line 1311
    :catchall_18c
    move-exception v0

    move-object v6, v0

    .line 1312
    :try_start_18e
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkSpaceOverflow: setLength1 e = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v12, v18

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b0
    .catchall {:try_start_18e .. :try_end_1b0} :catchall_17f

    .line 1313
    cmp-long v0, v7, v2

    const/16 v2, 0x410

    if-gez v0, :cond_1ef

    const-wide/16 v13, 0x0

    cmp-long v0, v7, v13

    if-lez v0, :cond_1ef

    cmp-long v0, v7, v10

    if-lez v0, :cond_1ef

    .line 1315
    :try_start_1c0
    invoke-virtual {v5, v7, v8}, Lcom/ss/android/socialbase/downloader/model/e;->b(J)V
    :try_end_1c3
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_1c4

    .line 1321
    :goto_1c3
    goto :goto_1f1

    .line 1316
    :catchall_1c4
    move-exception v0

    move-object v3, v0

    .line 1317
    :try_start_1c6
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSpaceOverflow: setLength2 ex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    if-nez v4, :cond_1e9

    .line 1321
    goto :goto_1c3

    .line 1319
    :cond_1e9
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1ef
    .catchall {:try_start_1c6 .. :try_end_1ef} :catchall_17f

    .line 1323
    :cond_1ef
    if-nez v4, :cond_1fc

    .line 1331
    :goto_1f1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 1332
    nop

    .line 1333
    return-void

    .line 1324
    :cond_1fc
    :try_start_1fc
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v0, v2, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 1304
    :cond_202
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/d;

    invoke-direct {v0, v7, v8, v12, v13}, Lcom/ss/android/socialbase/downloader/exception/d;-><init>(JJ)V

    throw v0
    :try_end_208
    .catchall {:try_start_1fc .. :try_end_208} :catchall_17f

    .line 1331
    :catchall_208
    move-exception v0

    move-object v5, v7

    :goto_20a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .registers 5

    .line 1645
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    const-string v1, "onAllChunkRetryWithReset"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->i:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 1647
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1648
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->I()V

    .line 1650
    nop

    .line 1651
    if-eqz p2, :cond_18

    .line 1652
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->d(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p1

    goto :goto_19

    .line 1651
    :cond_18
    const/4 p1, 0x0

    .line 1654
    :goto_19
    if-nez p1, :cond_1e

    .line 1656
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->H()V

    .line 1658
    :cond_1e
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/h/b;)V
    .registers 3

    .line 1587
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->h:Z

    if-nez v0, :cond_f

    .line 1588
    monitor-enter p0

    .line 1589
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1590
    monitor-exit p0

    goto :goto_f

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1

    .line 1592
    :cond_f
    :goto_f
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/network/g;)V
    .registers 3

    .line 1903
    nop

    .line 1904
    if-eqz p1, :cond_1b

    .line 1906
    :try_start_3
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result p1

    .line 1907
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusCode(I)V

    .line 1908
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusMessage(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 1909
    const/4 p1, 0x1

    .line 1912
    goto :goto_1c

    .line 1910
    :catchall_17
    move-exception p1

    .line 1911
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1914
    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-nez p1, :cond_2b

    .line 1915
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusCode(I)V

    .line 1916
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 1918
    :cond_2b
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;J)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 1425
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-nez v0, :cond_7

    .line 1426
    return-void

    .line 1430
    :cond_7
    :try_start_7
    new-instance v2, Lcom/ss/android/socialbase/downloader/model/d;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/model/d;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;)V

    .line 1431
    iget v3, v2, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    .line 1433
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->d()Ljava/lang/String;

    move-result-object v4

    .line 1434
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1435
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    .line 1438
    :cond_2b
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->b()Z

    move-result v4

    iput-boolean v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->j:Z

    .line 1439
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSupportPartial(Z)V

    .line 1441
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->a()Z

    move-result v4

    iput-boolean v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->k:Z

    .line 1443
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v4

    .line 1444
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->c()Ljava/lang/String;

    move-result-object v5

    .line 1446
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->f()Ljava/lang/String;

    move-result-object v6

    .line 1447
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->g()Ljava/lang/String;

    move-result-object v7

    .line 1448
    sget-object v8, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dcache=last_modified="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " CACHE_CONTROL="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max-age="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->k()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_a5

    .line 1451
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v9, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCacheControl(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->k()J

    move-result-wide v12

    cmp-long v7, v12, v10

    if-lez v7, :cond_a5

    .line 1453
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->k()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-virtual {v7, v12, v13}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCacheExpiredTime(J)V

    .line 1457
    :cond_a5
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_fe

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->F:Z

    if-eqz v7, :cond_fe

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_fe

    .line 1459
    const/16 v7, 0x130

    if-eq v3, v7, :cond_cd

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_cb

    goto :goto_cd

    :cond_cb
    const/4 v7, 0x0

    goto :goto_ce

    :cond_cd
    :goto_cd
    move v7, v9

    .line 1460
    :goto_ce
    if-nez v7, :cond_d6

    .line 1466
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_fe

    .line 1462
    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcache=responseCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lastModified not changed, use local file  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/a;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/h/c;->E:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1469
    :cond_fe
    :goto_fe
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_109

    .line 1471
    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v7, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastModified(Ljava/lang/String;)V

    .line 1474
    :cond_109
    invoke-direct {v1, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/h/c;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_10d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_10d} :catch_238
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_7 .. :try_end_10d} :catch_236
    .catchall {:try_start_7 .. :try_end_10d} :catchall_22f

    .line 1476
    const-string v7, ""

    if-eqz v6, :cond_130

    .line 1477
    :try_start_111
    instance-of v6, v0, Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v6, :cond_128

    .line 1478
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_122

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 1479
    move-object v5, v7

    .line 1480
    :cond_122
    const-string v4, "eTag of server file changed"

    invoke-direct {v1, v5, v4}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_130

    .line 1482
    :cond_128
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/b;

    const/16 v2, 0x3ea

    invoke-direct {v0, v2, v3, v7}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw v0

    .line 1486
    :cond_130
    :goto_130
    iget-boolean v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->j:Z

    const/16 v6, 0x3ec

    if-nez v4, :cond_162

    iget-boolean v4, v1, Lcom/ss/android/socialbase/downloader/h/c;->k:Z

    if-eqz v4, :cond_13b

    goto :goto_162

    .line 1533
    :cond_13b
    const/16 v0, 0x193

    if-ne v3, v0, :cond_149

    .line 1534
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x417

    const-string v3, "response code error : 403"

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1536
    :cond_149
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v3, v2}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw v0

    .line 1488
    :cond_162
    :goto_162
    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/h/c;->k:Z

    if-eqz v3, :cond_17c

    cmp-long v3, p3, v10

    if-lez v3, :cond_17c

    .line 1489
    instance-of v3, v0, Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v3, :cond_174

    .line 1490
    const-string v3, "http head request not support"

    invoke-direct {v1, v7, v3}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17c

    .line 1492
    :cond_174
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v2, "isResponseFromBegin but firstOffset > 0"

    invoke-direct {v0, v6, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1495
    :cond_17c
    :goto_17c
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->h()J

    move-result-wide v3

    .line 1496
    nop

    .line 1497
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_198

    .line 1498
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_199

    .line 1497
    :cond_198
    move-object v8, v7

    .line 1500
    :goto_199
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/d;->i()Z

    move-result v2

    iput-boolean v2, v1, Lcom/ss/android/socialbase/downloader/h/c;->l:Z

    .line 1502
    if-nez v2, :cond_1b0

    cmp-long v12, v3, v10

    if-nez v12, :cond_1b0

    instance-of v12, v0, Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v12, :cond_1aa

    goto :goto_1b0

    .line 1503
    :cond_1aa
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1506
    :cond_1b0
    :goto_1b0
    if-nez v2, :cond_1cd

    .line 1507
    const-string v2, "Content-Range"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ca

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 1510
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1cc

    .line 1513
    :cond_1ca
    add-long v2, p3, v3

    .line 1515
    :goto_1cc
    goto :goto_1cf

    .line 1516
    :cond_1cd
    const-wide/16 v2, -0x1

    .line 1519
    :goto_1cf
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/h/c;->v()Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 1520
    return-void

    .line 1523
    :cond_1d6
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_228

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 1524
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v4, "force_check_file_length"

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_228

    .line 1525
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_1fd

    goto :goto_228

    .line 1526
    :cond_1fd
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v4, 0x42e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expectFileLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 1527
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , totalLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1531
    :cond_228
    :goto_228
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0, v2, v3, v5, v8}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_22d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_111 .. :try_end_22d} :catch_238
    .catch Lcom/ss/android/socialbase/downloader/exception/h; {:try_start_111 .. :try_end_22d} :catch_236
    .catchall {:try_start_111 .. :try_end_22d} :catchall_22f

    .line 1532
    nop

    .line 1544
    goto :goto_235

    .line 1542
    :catchall_22f
    move-exception v0

    .line 1543
    const-string v2, "HandleFirstConnection"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1545
    :goto_235
    return-void

    .line 1540
    :catch_236
    move-exception v0

    .line 1541
    throw v0

    .line 1538
    :catch_238
    move-exception v0

    .line 1539
    throw v0
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .registers 2

    .line 1998
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->b:Ljava/util/concurrent/Future;

    .line 1999
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 6

    .line 1596
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 1598
    return v1

    .line 1600
    :cond_1a
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 1601
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->h:Z

    if-eqz p1, :cond_30

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->d:Z

    if-nez p1, :cond_30

    .line 1602
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 1603
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->d:Z

    .line 1605
    :cond_30
    return v2

    .line 1607
    :cond_31
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_63

    :cond_3b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->hasNextBackupUrl()Z

    move-result v0

    if-nez v0, :cond_63

    if-eqz p1, :cond_69

    .line 1608
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x3f3

    if-eq v0, v3, :cond_5b

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_69

    :cond_5b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReplaceHttpForRetry()Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_63
    instance-of p1, p1, Lcom/ss/android/socialbase/downloader/exception/f;

    if-nez p1, :cond_69

    move v1, v2

    goto :goto_6a

    :cond_69
    nop

    .line 1607
    :goto_6a
    return v1
.end method

.method public b()V
    .registers 2

    .line 206
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 207
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    if-eqz v0, :cond_d

    .line 208
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/k;->a()V

    .line 210
    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_16

    .line 211
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    .line 213
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->K:Lcom/ss/android/socialbase/downloader/f/k;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->g:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-nez v0, :cond_28

    .line 214
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->s()V

    .line 215
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->c:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 216
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->p()V

    .line 219
    :cond_28
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->I()V

    .line 220
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5

    .line 1614
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/i;->d:Lcom/ss/android/socialbase/downloader/constants/i;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->n:Lcom/ss/android/socialbase/downloader/constants/i;

    .line 1616
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c;->w:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1618
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->I()V

    .line 1619
    return-void
.end method

.method public b(J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1578
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 1579
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/h/c;->G:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 1580
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->D()V

    .line 1582
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(J)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    return-object v0
.end method

.method public c(J)V
    .registers 5

    .line 2002
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->x:Lcom/ss/android/socialbase/downloader/network/i;

    if-nez v0, :cond_5

    .line 2003
    return-void

    .line 2007
    :cond_5
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v1, :cond_13

    .line 2009
    :try_start_9
    check-cast v0, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/network/a;->a(J)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    .line 2012
    goto :goto_13

    .line 2010
    :catchall_f
    move-exception p1

    .line 2011
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2014
    :cond_13
    :goto_13
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 1637
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_8

    .line 1638
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkDowngradeRetryUsed(Z)V

    .line 1640
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 1641
    return-void
.end method

.method public d()Z
    .registers 2

    .line 1548
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .line 1552
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->p:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public f()V
    .registers 3

    .line 1556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->H:J

    .line 1557
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->v:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a()V

    .line 1558
    return-void
.end method

.method public g()Ljava/util/concurrent/Future;
    .registers 2

    .line 1994
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->b:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public run()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    .line 336
    :try_start_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->a()Lcom/ss/android/socialbase/downloader/network/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/b;->b()V

    .line 337
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/c;->k()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_1e

    .line 339
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->a()Lcom/ss/android/socialbase/downloader/network/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/b;->c()V

    .line 340
    nop

    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c;->c:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    .line 343
    return-void

    .line 339
    :catchall_1e
    move-exception v0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->a()Lcom/ss/android/socialbase/downloader/network/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/b;->c()V

    throw v0
.end method
