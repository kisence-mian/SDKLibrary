.class Lcom/ss/android/socialbase/downloader/f/m;
.super Ljava/lang/Object;
.source "SegmentReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:J

.field private F:I

.field private G:Z

.field private H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private I:Z

.field private J:Z

.field private K:Lcom/ss/android/socialbase/downloader/i/d;

.field a:Lcom/ss/android/socialbase/downloader/f/q;

.field final b:I

.field volatile c:J

.field volatile d:J

.field volatile e:J

.field volatile f:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field private final j:Lcom/ss/android/socialbase/downloader/f/f;

.field private final k:Lcom/ss/android/socialbase/downloader/f/c;

.field private final l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final m:Lcom/ss/android/socialbase/downloader/g/a;

.field private n:Lcom/ss/android/socialbase/downloader/network/i;

.field private o:Lcom/ss/android/socialbase/downloader/model/d;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private volatile r:J

.field private volatile s:J

.field private volatile t:J

.field private volatile u:J

.field private v:Ljava/util/concurrent/Future;

.field private volatile w:Z

.field private volatile x:Z

.field private volatile y:Z

.field private z:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/c;Lcom/ss/android/socialbase/downloader/f/q;I)V
    .registers 8

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->p:Ljava/util/List;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 116
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 117
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    .line 118
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/m;->k:Lcom/ss/android/socialbase/downloader/f/c;

    .line 119
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->m:Lcom/ss/android/socialbase/downloader/g/a;

    .line 120
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    .line 121
    iput p5, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    .line 122
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/c;Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/f/a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/f/c;->b()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v0

    .line 610
    nop

    .line 611
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    array-length v1, v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 614
    const/4 v2, -0x1

    :try_start_f
    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2d

    .line 615
    if-eq p2, v2, :cond_23

    .line 618
    :try_start_18
    iput p2, v0, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_21

    .line 619
    nop

    .line 621
    if-ne p2, v2, :cond_20

    .line 622
    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 619
    :cond_20
    return-object v0

    .line 621
    :catchall_21
    move-exception v1

    goto :goto_2f

    .line 616
    :cond_23
    :try_start_23
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x431

    const-string v4, "probe"

    invoke-direct {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_21

    .line 621
    :catchall_2d
    move-exception v1

    move p2, v2

    :goto_2f
    if-ne p2, v2, :cond_34

    .line 622
    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    :cond_34
    throw v1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/model/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 419
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/d;->b()Z

    move-result v0

    if-nez v0, :cond_81

    .line 420
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, " segment="

    const/16 v2, 0x3ec

    if-gtz v0, :cond_5c

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseHttpResponse: segment.getCurrentOffset = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SegmentReader"

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/d;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_81

    .line 428
    :cond_37
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/b;

    iget v3, p2, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2: response code error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget p2, p2, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw v0

    .line 422
    :cond_5c
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/b;

    iget v3, p2, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1: response code error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget p2, p2, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw v0

    .line 431
    :cond_81
    :goto_81
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 4

    .line 321
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 323
    return v0

    .line 326
    :cond_8
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_30

    .line 331
    :cond_1b
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result p1

    if-nez p1, :cond_24

    .line 333
    return v0

    .line 335
    :cond_24
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->G:Z

    if-eqz p1, :cond_29

    .line 337
    return v0

    .line 341
    :cond_29
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->G:Z

    .line 342
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->l()V

    .line 343
    return p1

    .line 329
    :cond_30
    :goto_30
    return v0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/i;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->k()V

    .line 193
    :goto_3
    :try_start_3
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/m;->b(Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/m;->d(Lcom/ss/android/socialbase/downloader/f/i;)V
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/f/j; {:try_start_3 .. :try_end_9} :catch_96
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 198
    const/4 p1, 0x1

    .line 236
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->i()V

    .line 198
    return p1

    .line 202
    :catchall_e
    move-exception v0

    .line 203
    :try_start_f
    const-string v1, "SegmentReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reconnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", closed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->w:Z
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_9a

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    .line 205
    nop

    .line 236
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->i()V

    .line 205
    return v2

    .line 207
    :cond_55
    :try_start_55
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->x:Z
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_9a

    const-string v3, "download"

    if-eqz v1, :cond_76

    .line 208
    :try_start_5b
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->x:Z
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_9a

    .line 210
    :try_start_5d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    .line 213
    goto :goto_65

    .line 211
    :catchall_61
    move-exception v0

    .line 212
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    :goto_65
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->y:Z
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_9a

    if-nez v0, :cond_6d

    .line 236
    :goto_69
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->i()V

    goto :goto_3

    .line 215
    :cond_6d
    :try_start_6d
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->y:Z

    .line 216
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v0, 0x5

    invoke-direct {p1, v0, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw p1

    .line 220
    :cond_76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    const/4 v1, 0x0

    .line 222
    instance-of v4, v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v4, :cond_82

    .line 223
    move-object v1, v0

    check-cast v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;
    :try_end_81
    .catchall {:try_start_6d .. :try_end_81} :catchall_9a

    goto :goto_88

    .line 226
    :cond_82
    :try_start_82
    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_85
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_82 .. :try_end_85} :catch_86
    .catchall {:try_start_82 .. :try_end_85} :catchall_9a

    .line 229
    goto :goto_88

    .line 227
    :catch_86
    move-exception v1

    .line 228
    nop

    .line 231
    :goto_88
    if-eqz v1, :cond_91

    :try_start_8a
    invoke-direct {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_9a

    if-eqz v0, :cond_91

    .line 236
    goto :goto_69

    .line 234
    :cond_91
    nop

    .line 236
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->i()V

    .line 234
    return v2

    .line 199
    :catch_96
    move-exception p1

    .line 200
    :try_start_97
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 201
    throw p1
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9a

    .line 236
    :catchall_9a
    move-exception p1

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->i()V

    throw p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 11

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadFailed:  e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curRetryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SegmentReader"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 300
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/q;->b()V

    .line 302
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget v6, p0, Lcom/ss/android/socialbase/downloader/f/m;->D:I

    iget v7, p0, Lcom/ss/android/socialbase/downloader/f/m;->C:I

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;II)V

    .line 303
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->D:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->C:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_50

    .line 304
    add-int/2addr v0, v2

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->D:I

    .line 305
    return v2

    .line 310
    :cond_50
    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 312
    return v2

    .line 315
    :cond_57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 317
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/m;->c(Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 351
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->o:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/model/d;)V

    .line 354
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->o:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V

    .line 356
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/q;->c()V

    .line 357
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 361
    move-object/from16 v1, p0

    const-string v0, ", threadIndex = "

    const-string v2, ", ip = "

    const-string v3, "https"

    const-string v4, "SegmentReader"

    const-string v5, "createConn"

    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 362
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    .line 363
    iput-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->q:J

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->s:J

    .line 366
    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->q:J

    iput-wide v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 367
    new-instance v8, Lcom/ss/android/socialbase/downloader/i/d;

    invoke-direct {v8}, Lcom/ss/android/socialbase/downloader/i/d;-><init>()V

    iput-object v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->K:Lcom/ss/android/socialbase/downloader/i/d;

    .line 369
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v9

    .line 370
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->q:J

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/f/m;->s:J

    invoke-static/range {v9 .. v14}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v8

    .line 374
    new-instance v9, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v10, "Segment-Index"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/i;->g()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v9, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v10, "Thread-Index"

    iget v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 379
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget-object v9, v9, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    .line 380
    iget-boolean v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->G:Z

    if-eqz v10, :cond_82

    .line 381
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_82

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_82

    .line 382
    const-string v10, "http"

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 385
    :cond_82
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget-object v3, v3, Lcom/ss/android/socialbase/downloader/f/q;->b:Ljava/lang/String;

    .line 386
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createConnectionBegin: url = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", segment = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iput-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->g:Ljava/lang/String;

    .line 389
    iput-object v3, v1, Lcom/ss/android/socialbase/downloader/f/m;->h:Ljava/lang/String;

    .line 391
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 392
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v15

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMaxBytes()I

    move-result v16

    const/16 v20, 0x0

    iget-wide v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->E:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0xbb8

    cmp-long v6, v6, v10

    if-lez v6, :cond_e1

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->m:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v7, "monitor_download_connect"

    .line 393
    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_e1

    const/4 v6, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v6, 0x0

    :goto_e2
    move/from16 v21, v6

    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 391
    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v22, v6

    invoke-static/range {v15 .. v22}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v6

    .line 395
    if-eqz v6, :cond_148

    .line 398
    iput-object v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->n:Lcom/ss/android/socialbase/downloader/network/i;

    .line 399
    new-instance v7, Lcom/ss/android/socialbase/downloader/model/d;

    invoke-direct {v7, v9, v6}, Lcom/ss/android/socialbase/downloader/model/d;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;)V

    iput-object v7, v1, Lcom/ss/android/socialbase/downloader/f/m;->o:Lcom/ss/android/socialbase/downloader/model/d;

    .line 401
    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v7, :cond_142

    .line 404
    instance-of v7, v6, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v7, :cond_10d

    .line 405
    check-cast v6, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/network/a;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->i:Ljava/lang/String;

    .line 407
    :cond_10d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createConnectionSuccess: url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hostRealIp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 402
    :cond_142
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/p;

    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_148
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x3fe

    new-instance v3, Ljava/io/IOException;

    const-string v4, "download can\'t continue, chunk connection is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_157
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_c .. :try_end_157} :catch_163
    .catchall {:try_start_c .. :try_end_157} :catchall_157

    .line 411
    :catchall_157
    move-exception v0

    .line 412
    :try_start_158
    invoke-static {v0, v5}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_165

    .line 414
    :goto_15b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    .line 415
    nop

    .line 416
    return-void

    .line 409
    :catch_163
    move-exception v0

    .line 410
    :try_start_164
    throw v0
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_165

    .line 414
    :catchall_165
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    throw v0
.end method

.method private d(Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 435
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/m;->k:Lcom/ss/android/socialbase/downloader/f/c;

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v4

    .line 442
    nop

    .line 447
    const/4 v8, 0x0

    :try_start_15
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->n:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->a()Ljava/io/InputStream;

    move-result-object v10
    :try_end_1b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_15 .. :try_end_1b} :catch_36c
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2d6

    .line 448
    if-eqz v10, :cond_2c7

    .line 452
    :try_start_1d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->o:Lcom/ss/android/socialbase/downloader/model/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->h()J

    move-result-wide v11

    .line 453
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_2a1

    .line 463
    invoke-direct {v1, v3, v10}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/f/c;Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v15
    :try_end_2d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1d .. :try_end_2d} :catch_2c1
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2bc

    .line 465
    :try_start_2d
    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    if-nez v9, :cond_28e

    iget-boolean v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v9, :cond_28e

    .line 470
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v9, v1, v2}, Lcom/ss/android/socialbase/downloader/f/f;->b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 473
    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v9, v1, v2}, Lcom/ss/android/socialbase/downloader/f/f;->d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/f/e;

    move-result-object v9
    :try_end_40
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2d .. :try_end_40} :catch_29b
    .catchall {:try_start_2d .. :try_end_40} :catchall_296

    .line 477
    :try_start_40
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v17
    :try_end_44
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_40 .. :try_end_44} :catch_288
    .catchall {:try_start_40 .. :try_end_44} :catchall_283

    cmp-long v17, v17, v13

    const-wide v18, 0x7fffffffffffffffL

    const-wide/16 v20, 0x1

    if-lez v17, :cond_5a

    .line 479
    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v11
    :try_end_53
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_4f .. :try_end_53} :catch_57
    .catchall {:try_start_4f .. :try_end_53} :catchall_54

    goto :goto_62

    .line 570
    :catchall_54
    move-exception v0

    goto/16 :goto_285

    .line 567
    :catch_57
    move-exception v0

    goto/16 :goto_28a

    .line 482
    :cond_5a
    if-lez v0, :cond_60

    .line 483
    add-long/2addr v11, v4

    sub-long v11, v11, v20

    goto :goto_62

    .line 485
    :cond_60
    move-wide/from16 v11, v18

    .line 490
    :goto_62
    :try_start_62
    iget v0, v15, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_64
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_62 .. :try_end_64} :catch_288
    .catchall {:try_start_62 .. :try_end_64} :catchall_283

    .line 491
    int-to-long v6, v0

    add-long v22, v4, v6

    .line 492
    cmp-long v0, v22, v11

    if-lez v0, :cond_81

    .line 493
    add-long v24, v11, v20

    cmp-long v0, v22, v24

    if-lez v0, :cond_81

    .line 495
    sub-long v26, v22, v24

    sub-long v6, v6, v26

    long-to-int v0, v6

    :try_start_76
    iput v0, v15, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_78
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_76 .. :try_end_78} :catch_7e
    .catchall {:try_start_76 .. :try_end_78} :catchall_7b

    .line 496
    move-wide/from16 v6, v24

    goto :goto_83

    .line 570
    :catchall_7b
    move-exception v0

    goto/16 :goto_2dc

    .line 567
    :catch_7e
    move-exception v0

    goto/16 :goto_372

    .line 499
    :cond_81
    move-wide/from16 v6, v22

    :goto_83
    :try_start_83
    iput-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 500
    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_88
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_83 .. :try_end_88} :catch_27d
    .catchall {:try_start_83 .. :try_end_88} :catchall_278

    .line 501
    move-wide/from16 v22, v6

    .line 505
    :goto_8a
    :try_start_8a
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->A:Z
    :try_end_8c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8a .. :try_end_8c} :catch_274
    .catchall {:try_start_8a .. :try_end_8c} :catchall_270

    if-eqz v0, :cond_135

    .line 508
    :try_start_8e
    monitor-enter p0
    :try_end_8f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8e .. :try_end_8f} :catch_130
    .catchall {:try_start_8e .. :try_end_8f} :catchall_12b

    .line 509
    :try_start_8f
    iput-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->A:Z

    .line 510
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    if-nez v0, :cond_110

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v0, :cond_110

    .line 513
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_11a

    .line 515
    :try_start_9a
    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->r:J

    cmp-long v0, v6, v13

    if-eqz v0, :cond_10d

    .line 517
    const-string v0, "SegmentReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loopAndRead:  change readEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", segmentNewEndOffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->r:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", segment = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/m;->m()J

    move-result-wide v6
    :try_end_d2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9a .. :try_end_d2} :catch_130
    .catchall {:try_start_9a .. :try_end_d2} :catchall_12b

    .line 520
    cmp-long v0, v22, v6

    if-lez v0, :cond_109

    .line 521
    add-long v11, v6, v20

    move-object/from16 v25, v9

    sub-long v8, v22, v11

    .line 522
    cmp-long v0, v8, v13

    if-lez v0, :cond_f8

    .line 523
    :try_start_e0
    const-string v0, "SegmentReader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loopAndRead: redundant = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_e0 .. :try_end_f8} :catch_124
    .catchall {:try_start_e0 .. :try_end_f8} :catchall_11f

    .line 525
    :cond_f8
    nop

    .line 526
    :try_start_f9
    iput-wide v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->t:J
    :try_end_fb
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f9 .. :try_end_fb} :catch_105
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_101

    .line 527
    move-wide/from16 v22, v11

    move-object/from16 v9, v25

    goto/16 :goto_1a3

    .line 570
    :catchall_101
    move-exception v0

    move-wide/from16 v22, v11

    goto :goto_120

    .line 567
    :catch_105
    move-exception v0

    move-wide/from16 v22, v11

    goto :goto_125

    .line 520
    :cond_109
    move-object/from16 v25, v9

    move-wide v11, v6

    goto :goto_137

    .line 515
    :cond_10d
    move-object/from16 v25, v9

    goto :goto_137

    .line 510
    :cond_110
    move-object/from16 v25, v9

    .line 511
    :try_start_112
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v6, "loopAndRead"

    invoke-direct {v0, v6}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :catchall_11a
    move-exception v0

    move-object/from16 v25, v9

    :goto_11d
    monitor-exit p0
    :try_end_11e
    .catchall {:try_start_112 .. :try_end_11e} :catchall_129

    :try_start_11e
    throw v0
    :try_end_11f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_11e .. :try_end_11f} :catch_124
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11f

    .line 570
    :catchall_11f
    move-exception v0

    :goto_120
    move-object/from16 v9, v25

    goto/16 :goto_2db

    .line 567
    :catch_124
    move-exception v0

    :goto_125
    move-object/from16 v9, v25

    goto/16 :goto_371

    .line 513
    :catchall_129
    move-exception v0

    goto :goto_11d

    .line 570
    :catchall_12b
    move-exception v0

    move-object/from16 v25, v9

    goto/16 :goto_2db

    .line 567
    :catch_130
    move-exception v0

    move-object/from16 v25, v9

    goto/16 :goto_371

    .line 505
    :cond_135
    move-object/from16 v25, v9

    .line 532
    :goto_137
    :try_start_137
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/f/c;->b()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v15
    :try_end_13b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_137 .. :try_end_13b} :catch_26a
    .catchall {:try_start_137 .. :try_end_13b} :catchall_264

    .line 533
    :try_start_13b
    iget-object v0, v15, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 534
    iput v0, v15, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_143
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13b .. :try_end_143} :catch_25e
    .catchall {:try_start_13b .. :try_end_143} :catchall_258

    .line 535
    const/4 v6, -0x1

    if-ne v0, v6, :cond_156

    .line 536
    move-object/from16 v8, v25

    :try_start_148
    invoke-interface {v8, v15}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_14b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_148 .. :try_end_14b} :catch_153
    .catchall {:try_start_148 .. :try_end_14b} :catchall_150

    .line 537
    nop

    .line 538
    nop

    .line 539
    move-wide v6, v11

    const/4 v9, 0x0

    goto :goto_1a3

    .line 570
    :catchall_150
    move-exception v0

    goto/16 :goto_25b

    .line 567
    :catch_153
    move-exception v0

    goto/16 :goto_261

    .line 542
    :cond_156
    move-object/from16 v8, v25

    int-to-long v6, v0

    add-long v13, v22, v6

    .line 543
    cmp-long v0, v13, v11

    if-lez v0, :cond_239

    .line 544
    add-long v20, v11, v20

    cmp-long v0, v13, v20

    if-lez v0, :cond_16e

    .line 546
    sub-long v22, v13, v20

    sub-long v6, v6, v22

    long-to-int v0, v6

    :try_start_16a
    iput v0, v15, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 547
    move-wide/from16 v13, v20

    .line 549
    :cond_16e
    iput-wide v13, v1, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 550
    invoke-interface {v8, v15}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_173
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_16a .. :try_end_173} :catch_252
    .catchall {:try_start_16a .. :try_end_173} :catchall_24c

    .line 551
    nop

    .line 552
    :try_start_174
    const-string v0, "SegmentReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loopAndRead: bytesRead = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v28, v11

    sub-long v11, v13, v4

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget-object v7, v7, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_174 .. :try_end_19e} :catch_233
    .catchall {:try_start_174 .. :try_end_19e} :catchall_22d

    .line 553
    move-object v9, v8

    move-wide/from16 v22, v13

    move-wide/from16 v6, v28

    .line 562
    :goto_1a3
    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-lez v0, :cond_1e5

    cmp-long v0, v6, v18

    if-eqz v0, :cond_1e5

    cmp-long v0, v22, v6

    if-lez v0, :cond_1b2

    goto :goto_1e5

    .line 564
    :cond_1b2
    :try_start_1b2
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v8, 0x41b

    const-string v11, "range[%d, %d] , but readCurrent[%d] , readStart[%d]"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    .line 565
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v12, v7

    const/4 v6, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v6

    .line 564
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1df
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1b2 .. :try_end_1df} :catch_1e2
    .catchall {:try_start_1b2 .. :try_end_1df} :catchall_1df

    .line 570
    :catchall_1df
    move-exception v0

    goto/16 :goto_2db

    .line 567
    :catch_1e2
    move-exception v0

    goto/16 :goto_371

    .line 580
    :cond_1e5
    :goto_1e5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/f/f;->c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 581
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 582
    if-eqz v9, :cond_209

    .line 585
    nop

    .line 586
    :try_start_1f6
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/f/c;->b()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v2
    :try_end_1fa
    .catchall {:try_start_1f6 .. :try_end_1fa} :catchall_206

    .line 588
    const/4 v6, -0x1

    :try_start_1fb
    iput v6, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 589
    invoke-interface {v9, v2}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_200
    .catchall {:try_start_1fb .. :try_end_200} :catchall_203

    .line 590
    nop

    .line 593
    const/4 v9, 0x0

    goto :goto_20a

    .line 591
    :catchall_203
    move-exception v0

    move-object v9, v2

    goto :goto_20a

    :catchall_206
    move-exception v0

    const/4 v9, 0x0

    goto :goto_20a

    .line 582
    :cond_209
    const/4 v9, 0x0

    .line 595
    :goto_20a
    if-eqz v9, :cond_20f

    .line 596
    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 598
    :cond_20f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    .line 599
    cmp-long v0, v22, v4

    if-lez v0, :cond_367

    .line 600
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->m:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->g:Ljava/lang/String;

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->h:Ljava/lang/String;

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->i:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v0, :cond_22b

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    if-eqz v0, :cond_350

    :cond_22b
    goto/16 :goto_352

    .line 570
    :catchall_22d
    move-exception v0

    move-object v9, v8

    move-wide/from16 v22, v13

    goto/16 :goto_2db

    .line 567
    :catch_233
    move-exception v0

    move-object v9, v8

    move-wide/from16 v22, v13

    goto/16 :goto_371

    .line 556
    :cond_239
    move-wide/from16 v28, v11

    const-wide/16 v11, 0x0

    :try_start_23d
    iput-wide v13, v1, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 557
    invoke-interface {v8, v15}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_242
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_23d .. :try_end_242} :catch_252
    .catchall {:try_start_23d .. :try_end_242} :catchall_24c

    .line 558
    nop

    .line 560
    move-object v9, v8

    move-wide/from16 v22, v13

    const/4 v8, 0x0

    move-wide v13, v11

    move-wide/from16 v11, v28

    goto/16 :goto_8a

    .line 570
    :catchall_24c
    move-exception v0

    move-object v9, v8

    move-wide/from16 v22, v13

    goto/16 :goto_2dc

    .line 567
    :catch_252
    move-exception v0

    move-object v9, v8

    move-wide/from16 v22, v13

    goto/16 :goto_372

    .line 570
    :catchall_258
    move-exception v0

    move-object/from16 v8, v25

    :goto_25b
    move-object v9, v8

    goto/16 :goto_2dc

    .line 567
    :catch_25e
    move-exception v0

    move-object/from16 v8, v25

    :goto_261
    move-object v9, v8

    goto/16 :goto_372

    .line 570
    :catchall_264
    move-exception v0

    move-object/from16 v8, v25

    move-object v9, v8

    goto/16 :goto_2db

    .line 567
    :catch_26a
    move-exception v0

    move-object/from16 v8, v25

    move-object v9, v8

    goto/16 :goto_371

    .line 570
    :catchall_270
    move-exception v0

    move-object v8, v9

    goto/16 :goto_2db

    .line 567
    :catch_274
    move-exception v0

    move-object v8, v9

    goto/16 :goto_371

    .line 570
    :catchall_278
    move-exception v0

    move-object v8, v9

    move-wide/from16 v22, v6

    goto :goto_2dc

    .line 567
    :catch_27d
    move-exception v0

    move-object v8, v9

    move-wide/from16 v22, v6

    goto/16 :goto_372

    .line 570
    :catchall_283
    move-exception v0

    move-object v8, v9

    :goto_285
    move-wide/from16 v22, v4

    goto :goto_2dc

    .line 567
    :catch_288
    move-exception v0

    move-object v8, v9

    :goto_28a
    move-wide/from16 v22, v4

    goto/16 :goto_372

    .line 466
    :cond_28e
    :try_start_28e
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v6, "probe"

    invoke-direct {v0, v6}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_296
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_28e .. :try_end_296} :catch_29b
    .catchall {:try_start_28e .. :try_end_296} :catchall_296

    .line 570
    :catchall_296
    move-exception v0

    move-wide/from16 v22, v4

    const/4 v9, 0x0

    goto :goto_2dc

    .line 567
    :catch_29b
    move-exception v0

    move-wide/from16 v22, v4

    const/4 v9, 0x0

    goto/16 :goto_372

    .line 454
    :cond_2a1
    :try_start_2a1
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v6, 0x3ec

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the content-length is 0, contentLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    throw v0

    .line 570
    :catchall_2bc
    move-exception v0

    move-wide/from16 v22, v4

    const/4 v9, 0x0

    goto :goto_2db

    .line 567
    :catch_2c1
    move-exception v0

    move-wide/from16 v22, v4

    const/4 v9, 0x0

    goto/16 :goto_371

    .line 449
    :cond_2c7
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v6, 0x412

    new-instance v7, Ljava/io/IOException;

    const-string v8, "inputStream is null"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_2d6
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2a1 .. :try_end_2d6} :catch_2c1
    .catchall {:try_start_2a1 .. :try_end_2d6} :catchall_2bc

    .line 570
    :catchall_2d6
    move-exception v0

    move-wide/from16 v22, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2db
    const/4 v15, 0x0

    .line 571
    :goto_2dc
    :try_start_2dc
    const-string v6, "SegmentReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loopAndRead: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",stack = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_305
    .catchall {:try_start_2dc .. :try_end_305} :catchall_375

    .line 574
    :try_start_305
    const-string v6, "loopAndRead"

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_30a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_305 .. :try_end_30a} :catch_368
    .catchall {:try_start_305 .. :try_end_30a} :catchall_375

    .line 578
    nop

    .line 580
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/f/f;->c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 581
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 582
    if-eqz v9, :cond_32d

    .line 585
    if-nez v15, :cond_321

    .line 586
    :try_start_31d
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/f/c;->b()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v15

    .line 588
    :cond_321
    const/4 v2, -0x1

    iput v2, v15, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 589
    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_327
    .catchall {:try_start_31d .. :try_end_327} :catchall_32a

    .line 590
    nop

    .line 593
    const/4 v9, 0x0

    goto :goto_32e

    .line 591
    :catchall_32a
    move-exception v0

    move-object v9, v15

    goto :goto_32e

    .line 582
    :cond_32d
    move-object v9, v15

    .line 595
    :goto_32e
    if-eqz v9, :cond_333

    .line 596
    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 598
    :cond_333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    .line 599
    cmp-long v0, v22, v4

    if-lez v0, :cond_367

    .line 600
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/f/m;->m:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v7, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->g:Ljava/lang/String;

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->h:Ljava/lang/String;

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->i:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v0, :cond_352

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    if-eqz v0, :cond_350

    goto :goto_352

    :cond_350
    const/4 v11, 0x0

    goto :goto_353

    :cond_352
    :goto_352
    const/4 v11, 0x1

    :goto_353
    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/f/m;->n:Lcom/ss/android/socialbase/downloader/network/i;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    sub-long v14, v22, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    sub-long/2addr v2, v4

    .line 602
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    .line 600
    invoke-static/range {v6 .. v17}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V

    .line 605
    :cond_367
    return-void

    .line 575
    :catch_368
    move-exception v0

    .line 576
    :try_start_369
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 577
    throw v0

    .line 567
    :catch_36c
    move-exception v0

    move-wide/from16 v22, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_371
    const/4 v15, 0x0

    .line 568
    :goto_372
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 569
    throw v0
    :try_end_375
    .catchall {:try_start_369 .. :try_end_375} :catchall_375

    .line 580
    :catchall_375
    move-exception v0

    move-object v6, v0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/f/f;->c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 581
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v10, v0, v7

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 582
    if-eqz v9, :cond_399

    .line 585
    if-nez v15, :cond_38d

    .line 586
    :try_start_389
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/f/c;->b()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v15

    .line 588
    :cond_38d
    const/4 v8, -0x1

    iput v8, v15, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 589
    invoke-interface {v9, v15}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_393
    .catchall {:try_start_389 .. :try_end_393} :catchall_396

    .line 590
    nop

    .line 593
    const/4 v9, 0x0

    goto :goto_39a

    .line 591
    :catchall_396
    move-exception v0

    move-object v9, v15

    goto :goto_39a

    .line 582
    :cond_399
    move-object v9, v15

    .line 595
    :goto_39a
    if-eqz v9, :cond_39f

    .line 596
    invoke-interface {v3, v9}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 598
    :cond_39f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    .line 599
    cmp-long v0, v22, v4

    if-lez v0, :cond_3d3

    .line 600
    iget-object v8, v1, Lcom/ss/android/socialbase/downloader/f/m;->m:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/f/m;->g:Ljava/lang/String;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->h:Ljava/lang/String;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/f/m;->i:Ljava/lang/String;

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v0, :cond_3be

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    if-eqz v0, :cond_3bc

    goto :goto_3be

    :cond_3bc
    move v13, v7

    goto :goto_3bf

    :cond_3be
    :goto_3be
    move v13, v2

    :goto_3bf
    iget-object v14, v1, Lcom/ss/android/socialbase/downloader/f/m;->n:Lcom/ss/android/socialbase/downloader/network/i;

    iget-object v15, v1, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    sub-long v16, v22, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    sub-long/2addr v2, v4

    .line 602
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    .line 600
    invoke-static/range {v8 .. v19}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V

    :cond_3d3
    throw v6
.end method

.method private i()V
    .registers 3

    .line 242
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->E:J

    .line 243
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    .line 244
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    .line 245
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    .line 246
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    .line 247
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->j()V

    .line 248
    return-void
.end method

.method private j()V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->n:Lcom/ss/android/socialbase/downloader/network/i;

    .line 252
    if-eqz v0, :cond_26

    .line 254
    :try_start_4
    const-string v1, "SegmentReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeConnection: thread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 256
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->c()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_25

    .line 259
    goto :goto_26

    .line 257
    :catchall_25
    move-exception v0

    .line 261
    :cond_26
    :goto_26
    return-void
.end method

.method private k()V
    .registers 2

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->G:Z

    .line 265
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->l()V

    .line 266
    return-void
.end method

.method private l()V
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    iget-boolean v0, v0, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->l:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v0

    :goto_13
    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->C:I

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->D:I

    .line 272
    return-void
.end method

.method private m()J
    .registers 5

    .line 628
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->r:J

    .line 629
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->r:J

    .line 630
    cmp-long v2, v0, v2

    if-gtz v2, :cond_10

    .line 631
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 633
    :cond_10
    return-wide v0
.end method


# virtual methods
.method a(JJ)J
    .registers 6

    .line 778
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->K:Lcom/ss/android/socialbase/downloader/i/d;

    .line 779
    if-nez v0, :cond_7

    .line 780
    const-wide/16 p1, -0x1

    return-wide p1

    .line 782
    :cond_7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/i/d;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method a()V
    .registers 7

    .line 652
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    .line 654
    :try_start_2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_20

    .line 655
    :try_start_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/m;->c()J

    move-result-wide v2

    .line 656
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_17

    .line 657
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->u:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->u:J

    .line 658
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/f/q;->a(J)V

    .line 660
    :cond_17
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 661
    monitor-exit v1

    .line 664
    goto :goto_21

    .line 661
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 662
    :catchall_20
    move-exception v0

    .line 665
    :goto_21
    return-void
.end method

.method a(Ljava/util/concurrent/Future;)V
    .registers 2

    .line 741
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->v:Ljava/util/concurrent/Future;

    .line 742
    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 722
    const-string v0, "SegmentReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect: threadIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    monitor-enter p0

    .line 724
    :try_start_1b
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->y:Z

    .line 725
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->x:Z

    .line 726
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->A:Z

    .line 727
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_4a

    .line 728
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->j()V

    .line 729
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->z:Ljava/lang/Thread;

    .line 730
    if-eqz p1, :cond_49

    .line 732
    :try_start_2a
    const-string v0, "SegmentReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect: t.interrupt threadIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_48

    .line 736
    goto :goto_49

    .line 734
    :catchall_48
    move-exception p1

    .line 738
    :cond_49
    :goto_49
    return-void

    .line 727
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public a(J)Z
    .registers 9

    .line 637
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->s:J

    .line 638
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_e

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    .line 639
    return v5

    .line 641
    :cond_e
    cmp-long v4, p1, v0

    if-lez v4, :cond_17

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 643
    return v5

    .line 645
    :cond_17
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->r:J

    .line 646
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->A:Z

    .line 647
    return p1
.end method

.method a(Lcom/ss/android/socialbase/downloader/f/q;)Z
    .registers 4

    .line 275
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->F:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    .line 276
    const/4 p1, 0x0

    return p1

    .line 278
    :cond_8
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->F:I

    .line 279
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    .line 280
    if-eqz v0, :cond_13

    .line 281
    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/f/q;->b(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 283
    :cond_13
    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/f/q;->a(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 284
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    .line 285
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->l()V

    .line 286
    return v1
.end method

.method public b()J
    .registers 6

    .line 671
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    monitor-enter v0

    .line 672
    :try_start_3
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->u:J

    .line 673
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/m;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 674
    monitor-exit v0

    return-wide v1

    .line 675
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method b(J)V
    .registers 8

    .line 765
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 766
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->K:Lcom/ss/android/socialbase/downloader/i/d;

    .line 767
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_35

    if-nez v2, :cond_d

    goto :goto_35

    .line 770
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markProgress: curSegmentReadOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SegmentReader"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/ss/android/socialbase/downloader/i/d;->a(JJ)Z

    .line 772
    return-void

    .line 768
    :cond_35
    :goto_35
    return-void
.end method

.method b(Z)V
    .registers 2

    .line 745
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->I:Z

    .line 746
    return-void
.end method

.method public c()J
    .registers 9

    .line 682
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    monitor-enter v0

    .line 683
    :try_start_3
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    .line 684
    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->q:J

    .line 685
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_14

    cmp-long v7, v1, v3

    if-lez v7, :cond_14

    .line 686
    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    .line 688
    :cond_14
    monitor-exit v0

    return-wide v5

    .line 689
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public c(Z)V
    .registers 2

    .line 757
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/m;->J:Z

    .line 758
    return-void
.end method

.method public d()J
    .registers 3

    .line 693
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->t:J

    return-wide v0
.end method

.method public e()V
    .registers 4

    .line 697
    const-string v0, "SegmentReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: threadIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    monitor-enter p0

    .line 699
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    .line 700
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->A:Z

    .line 701
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_34

    .line 702
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/m;->j()V

    .line 703
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->v:Ljava/util/concurrent/Future;

    .line 704
    if-eqz v1, :cond_33

    .line 705
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->v:Ljava/util/concurrent/Future;

    .line 707
    :try_start_2b
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    .line 710
    goto :goto_33

    .line 708
    :catchall_2f
    move-exception v0

    .line 709
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 712
    :cond_33
    :goto_33
    return-void

    .line 701
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public f()V
    .registers 2

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/f/m;->a(Z)V

    .line 716
    return-void
.end method

.method g()Z
    .registers 2

    .line 749
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->I:Z

    return v0
.end method

.method h()J
    .registers 3

    .line 806
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->q:J

    return-wide v0
.end method

.method public run()V
    .registers 6

    .line 126
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 129
    const/4 v0, 0x0

    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->z:Ljava/lang/Thread;

    .line 130
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 131
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/f/q;->a(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 135
    :goto_16
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-interface {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_d3

    .line 136
    const-string v2, "SegmentReader"

    if-nez v1, :cond_3c

    .line 138
    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no more segment, thread_index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_d3

    .line 139
    goto/16 :goto_b6

    .line 144
    :cond_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/f/i;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 146
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Lcom/ss/android/socialbase/downloader/f/j; {:try_start_3c .. :try_end_47} :catch_88
    .catchall {:try_start_3c .. :try_end_47} :catchall_86

    .line 170
    :try_start_47
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    :goto_49
    invoke-interface {v2, p0, v1}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_d3

    .line 171
    goto/16 :goto_cb

    .line 150
    :cond_4e
    :try_start_4e
    iget-boolean v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->w:Z

    if-nez v3, :cond_80

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download segment failed, segment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thread_index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failedException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->H:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Lcom/ss/android/socialbase/downloader/f/j; {:try_start_4e .. :try_end_80} :catch_88
    .catchall {:try_start_4e .. :try_end_80} :catchall_86

    .line 170
    :cond_80
    :try_start_80
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    :goto_82
    invoke-interface {v2, p0, v1}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_d3

    goto :goto_b6

    :catchall_86
    move-exception v2

    goto :goto_cd

    .line 157
    :catch_88
    move-exception v3

    .line 160
    :try_start_89
    iget v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->B:I

    const/16 v4, 0x32

    if-lt v3, v4, :cond_c3

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "segment apply failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "times, thread_index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_89 .. :try_end_b3} :catchall_86

    .line 170
    :try_start_b3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_d3

    goto :goto_82

    .line 177
    :goto_b6
    :try_start_b6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/f/q;->b(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 178
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/f/f;->b(Lcom/ss/android/socialbase/downloader/f/m;)V
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_c1

    goto :goto_e1

    .line 179
    :catchall_c1
    move-exception v1

    goto :goto_e3

    .line 167
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    :try_start_c5
    iput v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->B:I
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_86

    .line 170
    :try_start_c7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    goto/16 :goto_49

    .line 172
    :goto_cb
    goto/16 :goto_16

    .line 170
    :goto_cd
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v3, p0, v1}, Lcom/ss/android/socialbase/downloader/f/f;->a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    throw v2
    :try_end_d3
    .catchall {:try_start_c7 .. :try_end_d3} :catchall_d3

    .line 173
    :catchall_d3
    move-exception v1

    .line 174
    :try_start_d4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_e7

    .line 177
    :try_start_d7
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/downloader/f/q;->b(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 178
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/downloader/f/f;->b(Lcom/ss/android/socialbase/downloader/f/m;)V
    :try_end_e1
    .catchall {:try_start_d7 .. :try_end_e1} :catchall_e2

    .line 181
    :goto_e1
    goto :goto_e3

    .line 179
    :catchall_e2
    move-exception v1

    .line 182
    :goto_e3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->z:Ljava/lang/Thread;

    .line 183
    nop

    .line 184
    return-void

    .line 176
    :catchall_e7
    move-exception v1

    .line 177
    :try_start_e8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    invoke-virtual {v2, p0}, Lcom/ss/android/socialbase/downloader/f/q;->b(Lcom/ss/android/socialbase/downloader/f/m;)V

    .line 178
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/m;->j:Lcom/ss/android/socialbase/downloader/f/f;

    invoke-interface {v2, p0}, Lcom/ss/android/socialbase/downloader/f/f;->b(Lcom/ss/android/socialbase/downloader/f/m;)V
    :try_end_f2
    .catchall {:try_start_e8 .. :try_end_f2} :catchall_f3

    .line 181
    goto :goto_f4

    .line 179
    :catchall_f3
    move-exception v2

    .line 182
    :goto_f4
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/m;->z:Ljava/lang/Thread;

    throw v1
.end method
