.class public Lcom/ss/android/socialbase/downloader/impls/p;
.super Ljava/lang/Object;
.source "ProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/l;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/a;

.field private final b:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private final c:Lcom/ss/android/socialbase/downloader/downloader/n;

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 51
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 52
    if-nez p1, :cond_18

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    goto :goto_1e

    .line 55
    :cond_18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->z()Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 57
    :goto_1e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "service_alive"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->d:Z

    .line 58
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 184
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 165
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 168
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/a;->b()V

    .line 96
    :cond_7
    return-void
.end method

.method public a(I)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 63
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    .line 64
    :cond_7
    return-void
.end method

.method public a(II)V
    .registers 5

    .line 413
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 414
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 415
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/depend/al;

    .line 417
    if-eqz v1, :cond_1f

    .line 418
    invoke-interface {v1, p2, p1}, Lcom/ss/android/socialbase/downloader/depend/al;->a(II)V

    .line 420
    :cond_1f
    goto :goto_e

    .line 423
    :cond_20
    return-void
.end method

.method public a(IIII)V
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIII)V

    .line 378
    return-void
.end method

.method public a(IIIJ)V
    .registers 12

    .line 372
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIIJ)V

    .line 373
    return-void
.end method

.method public a(IIJ)V
    .registers 6

    .line 367
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 368
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 12

    .line 215
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_c

    .line 216
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 217
    :cond_c
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V
    .registers 14

    .line 221
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_d

    .line 222
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V

    .line 223
    :cond_d
    return-void
.end method

.method public a(IJ)V
    .registers 5

    .line 460
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 461
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IJ)V

    .line 463
    :cond_7
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_7

    .line 249
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILandroid/app/Notification;)V

    .line 250
    :cond_7
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 4

    .line 447
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 448
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/depend/ab;)V

    .line 449
    :cond_7
    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILjava/util/List;)V

    .line 333
    return-void
.end method

.method public a(IZ)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IZ)Z

    .line 70
    :cond_7
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/al;)V
    .registers 2

    .line 408
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/depend/al;)V

    .line 409
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 7

    .line 289
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_8

    .line 290
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_2e

    .line 292
    :cond_8
    if-eqz p1, :cond_2e

    .line 293
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "downloadServiceHandler is null"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    invoke-static {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 295
    :cond_2e
    :goto_2e
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 348
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/util/List;)V

    .line 109
    :cond_7
    return-void
.end method

.method public a(ZZ)V
    .registers 3

    .line 254
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz p1, :cond_7

    .line 255
    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Z)V

    .line 256
    :cond_7
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 5

    .line 233
    if-nez p1, :cond_4

    .line 234
    const/4 p1, 0x0

    return p1

    .line 235
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 236
    if-eqz v0, :cond_2e

    .line 237
    const/high16 v1, 0x2000000

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 238
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/p;->b(IZ)V

    goto :goto_2e

    .line 240
    :cond_27
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/p;->d(IZ)V

    .line 243
    :cond_2e
    :goto_2e
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 178
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/p;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_9

    .line 101
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 102
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 12

    .line 227
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_c

    .line 228
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 229
    :cond_c
    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(ILjava/util/List;)V

    .line 393
    return-void
.end method

.method public b(IZ)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V

    .line 199
    :cond_7
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 328
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_7

    .line 300
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 301
    :cond_7
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Ljava/util/List;)V

    .line 116
    :cond_7
    return-void
.end method

.method public b()Z
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_9

    .line 261
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->b()Z

    move-result v0

    return v0

    .line 263
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Z
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->n(I)Z

    move-result p1

    return p1

    .line 77
    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 189
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_9

    .line 190
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 192
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->f(I)Z

    .line 84
    :cond_7
    return-void
.end method

.method public c(IZ)V
    .registers 4

    .line 337
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 338
    return-void
.end method

.method public c()Z
    .registers 2

    .line 268
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->M()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 273
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz v0, :cond_9

    .line 274
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 276
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .registers 1

    .line 318
    return-void
.end method

.method public d(I)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z

    .line 90
    :cond_7
    return-void
.end method

.method public d(IZ)V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->c(IZ)V

    .line 205
    :cond_7
    return-void
.end method

.method public e(I)J
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 121
    return-wide v1

    .line 122
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 123
    if-nez v0, :cond_e

    .line 124
    return-wide v1

    .line 125
    :cond_e
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v3

    .line 126
    const/4 v4, 0x1

    if-gt v3, v4, :cond_1a

    .line 127
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    return-wide v0

    .line 129
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object p1

    .line 130
    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_29

    goto :goto_2e

    .line 133
    :cond_29
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    .line 131
    :cond_2e
    :goto_2e
    return-wide v1
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 281
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 282
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 284
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->c()Z

    move-result v0

    return v0
.end method

.method public f(I)I
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 140
    return v1

    .line 141
    :cond_6
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 142
    if-nez p1, :cond_d

    .line 143
    return v1

    .line 144
    :cond_d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    return p1
.end method

.method public f()V
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/i;->b()V

    .line 388
    return-void
.end method

.method public g()Z
    .registers 3

    .line 397
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 399
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 402
    :cond_11
    return v1
.end method

.method public g(I)Z
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 150
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p1

    return p1

    .line 152
    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    .line 160
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_7

    .line 210
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->m(I)V

    .line 211
    :cond_7
    return-void
.end method

.method public k(I)V
    .registers 2

    .line 312
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/c/a;->a(I)V

    .line 313
    return-void
.end method

.method public l(I)Z
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 306
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->k(I)Z

    move-result p1

    return p1

    .line 307
    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public m(I)I
    .registers 3

    .line 342
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result p1

    return p1
.end method

.method public n(I)Z
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->e(I)Z

    move-result p1

    return p1
.end method

.method public o(I)V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->d(I)V

    .line 363
    return-void
.end method

.method public p(I)Z
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->f(I)Z

    move-result p1

    return p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/ab;
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 428
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->i(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1

    return-object p1

    .line 429
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 3

    .line 434
    nop

    .line 435
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_a

    .line 436
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->h(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1

    goto :goto_b

    .line 435
    :cond_a
    const/4 p1, 0x0

    .line 438
    :goto_b
    if-nez p1, :cond_11

    .line 440
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->I()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1

    .line 442
    :cond_11
    return-object p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 454
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->j(I)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1

    return-object p1

    .line 455
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
