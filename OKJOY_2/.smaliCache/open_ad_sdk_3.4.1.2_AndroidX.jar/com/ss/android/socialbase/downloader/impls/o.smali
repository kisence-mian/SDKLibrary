.class public Lcom/ss/android/socialbase/downloader/impls/o;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/l;
.implements Lcom/ss/android/socialbase/downloader/downloader/m;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/downloader/n<",
            "Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ss/android/socialbase/downloader/downloader/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 48
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->z()Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 49
    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/downloader/m;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 221
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

    .line 193
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 197
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    .line 198
    :catch_12
    move-exception p1

    .line 199
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 124
    return-void

    .line 127
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/h;->a()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 130
    goto :goto_f

    .line 128
    :catch_b
    move-exception v0

    .line 129
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    :goto_f
    return-void
.end method

.method public a(I)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 55
    return-void

    .line 58
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 61
    goto :goto_f

    .line 59
    :catch_b
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    :goto_f
    return-void
.end method

.method public a(II)V
    .registers 4

    .line 714
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_e

    .line 716
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 719
    goto :goto_e

    .line 717
    :catch_a
    move-exception p1

    .line 718
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 721
    :cond_e
    :goto_e
    return-void
.end method

.method public a(IIII)V
    .registers 6

    .line 645
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 646
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIII)V

    goto :goto_14

    .line 649
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IIII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 652
    goto :goto_14

    .line 650
    :catch_10
    move-exception p1

    .line 651
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 654
    :goto_14
    return-void
.end method

.method public a(IIIJ)V
    .registers 14

    .line 632
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_e

    .line 633
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIIJ)V

    goto :goto_1c

    .line 636
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IIIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 639
    goto :goto_1c

    .line 637
    :catch_18
    move-exception p1

    .line 638
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 641
    :goto_1c
    return-void
.end method

.method public a(IIJ)V
    .registers 6

    .line 619
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 620
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIJ)V

    goto :goto_14

    .line 623
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IIJ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 626
    goto :goto_14

    .line 624
    :catch_10
    move-exception p1

    .line 625
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 628
    :goto_14
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 13

    .line 329
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 330
    return-void

    .line 333
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    if-ne p4, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 336
    goto :goto_21

    .line 334
    :catch_1d
    move-exception p1

    .line 335
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 338
    :goto_21
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V
    .registers 15

    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 343
    return-void

    .line 346
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    if-ne p4, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 349
    goto :goto_22

    .line 347
    :catch_1e
    move-exception p1

    .line 348
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    :goto_22
    return-void
.end method

.method public a(IJ)V
    .registers 5

    .line 801
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 802
    return-void

    .line 806
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IJ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 809
    goto :goto_f

    .line 807
    :catch_b
    move-exception p1

    .line 808
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 810
    :goto_f
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 6

    .line 382
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_c

    .line 384
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string p2, "startForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 386
    :cond_c
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aidlService.startForeground, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILandroid/app/Notification;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 391
    goto :goto_2e

    .line 389
    :catch_2a
    move-exception p1

    .line 390
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 393
    :goto_2e
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/ab;)V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_12

    .line 751
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILcom/ss/android/socialbase/downloader/depend/aa;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 754
    goto :goto_12

    .line 752
    :catch_e
    move-exception p1

    .line 753
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 756
    :cond_12
    :goto_12
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

    .line 525
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 526
    return-void

    .line 529
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(ILjava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 532
    goto :goto_f

    .line 530
    :catch_b
    move-exception p1

    .line 531
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 534
    :goto_f
    return-void
.end method

.method public a(IZ)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 69
    return-void

    .line 72
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 75
    goto :goto_f

    .line 73
    :catch_b
    move-exception p1

    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    :goto_f
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .registers 2

    .line 772
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/h$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 773
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 774
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/o$1;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/downloader/impls/o$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/o;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Lcom/ss/android/socialbase/downloader/depend/al;)V

    .line 791
    :cond_14
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/al;)V
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_12

    .line 705
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/al;)Lcom/ss/android/socialbase/downloader/depend/ak;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 708
    goto :goto_12

    .line 706
    :catch_e
    move-exception p1

    .line 707
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 710
    :cond_12
    :goto_12
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 3

    .line 460
    if-nez p1, :cond_3

    .line 461
    return-void

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_a

    .line 463
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 465
    :cond_a
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 566
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_14

    .line 569
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 572
    goto :goto_14

    .line 570
    :catch_10
    move-exception p1

    .line 571
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 574
    :goto_14
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

    .line 263
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/util/List;)V

    goto :goto_14

    .line 267
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 270
    goto :goto_14

    .line 268
    :catch_10
    move-exception p1

    .line 269
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 272
    :goto_14
    return-void
.end method

.method public a(ZZ)V
    .registers 4

    .line 397
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez p1, :cond_c

    .line 399
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string p2, "stopForeground, aidlService is null"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 401
    :cond_c
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v0, "aidlService.stopForeground"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_13
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 406
    goto :goto_1d

    .line 404
    :catch_19
    move-exception p1

    .line 405
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 408
    :goto_1d
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 369
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1

    .line 372
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 375
    goto :goto_15

    .line 373
    :catch_11
    move-exception p1

    .line 374
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 377
    :goto_15
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/o;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

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

    .line 232
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 233
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 236
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    .line 237
    :catch_12
    move-exception p1

    .line 238
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 241
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V
    .registers 13

    .line 355
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 356
    return-void

    .line 359
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    if-ne p4, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {p3, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v4

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 362
    goto :goto_21

    .line 360
    :catch_1d
    move-exception p1

    .line 361
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 364
    :goto_21
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

    .line 685
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 686
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(ILjava/util/List;)V

    goto :goto_14

    .line 689
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILjava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 692
    goto :goto_14

    .line 690
    :catch_10
    move-exception p1

    .line 691
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 694
    :goto_14
    return-void
.end method

.method public b(IZ)V
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 290
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(IZ)V

    goto :goto_14

    .line 293
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 296
    goto :goto_14

    .line 294
    :catch_10
    move-exception p1

    .line 295
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    :goto_14
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 521
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 3

    .line 469
    if-nez p1, :cond_3

    .line 470
    return-void

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_a

    .line 472
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 474
    :cond_a
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

    .line 276
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 277
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/util/List;)V

    goto :goto_14

    .line 280
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 283
    goto :goto_14

    .line 281
    :catch_10
    move-exception p1

    .line 282
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 285
    :goto_14
    return-void
.end method

.method public b()Z
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 414
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v2, "isServiceForeground, aidlService is null"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return v1

    .line 417
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v2, "aidlService.isServiceForeground"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :try_start_14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/h;->e()Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    .line 420
    :catch_1b
    move-exception v0

    .line 421
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    return v1
.end method

.method public b(I)Z
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 83
    return v1

    .line 86
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 87
    :catch_d
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    return v1
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

    .line 247
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 248
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 251
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    .line 252
    :catch_12
    move-exception p1

    .line 253
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 98
    return-void

    .line 101
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->c(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 104
    goto :goto_f

    .line 102
    :catch_b
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    :goto_f
    return-void
.end method

.method public c(IZ)V
    .registers 4

    .line 538
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 539
    return-void

    .line 542
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/h;->d(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 545
    goto :goto_f

    .line 543
    :catch_b
    move-exception p1

    .line 544
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 547
    :goto_f
    return-void
.end method

.method public c()Z
    .registers 2

    .line 429
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->M()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 579
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1

    .line 582
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return p1

    .line 583
    :catch_12
    move-exception p1

    .line 584
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 587
    const/4 p1, 0x0

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

    .line 434
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 435
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 438
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    .line 439
    :catch_12
    move-exception p1

    .line 440
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 443
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_7

    .line 500
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->f()V

    .line 502
    :cond_7
    return-void
.end method

.method public d(I)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_5

    .line 111
    return-void

    .line 114
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->d(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 117
    goto :goto_f

    .line 115
    :catch_b
    move-exception p1

    .line 116
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 119
    :goto_f
    return-void
.end method

.method public e(I)J
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 138
    return-wide v1

    .line 141
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->e(I)J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 142
    :catch_e
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 145
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

    .line 448
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_f

    .line 450
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p1

    .line 451
    :catch_b
    move-exception p1

    .line 452
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 455
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 507
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->e()Z

    move-result v0

    return v0

    .line 510
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/h;->c()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return v0

    .line 511
    :catch_12
    move-exception v0

    .line 512
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)I
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 152
    return v1

    .line 155
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->f(I)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 156
    :catch_d
    move-exception p1

    .line 157
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    return v1
.end method

.method public f()V
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 673
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->f()V

    goto :goto_14

    .line 676
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/h;->d()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 679
    goto :goto_14

    .line 677
    :catch_10
    move-exception v0

    .line 678
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 681
    :goto_14
    return-void
.end method

.method public g()Z
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public g(I)Z
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 166
    return v1

    .line 169
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->g(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 170
    :catch_d
    move-exception p1

    .line 171
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 174
    return v1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    .line 183
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    .line 184
    :catch_12
    move-exception p1

    .line 185
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 188
    const/4 p1, 0x0

    return-object p1
.end method

.method public h()V
    .registers 2

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 796
    return-void
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

    .line 207
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 211
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->i(I)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object p1

    .line 212
    :catch_12
    move-exception p1

    .line 213
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 316
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->j(I)V

    goto :goto_14

    .line 319
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->j(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 322
    goto :goto_14

    .line 320
    :catch_10
    move-exception p1

    .line 321
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    :goto_14
    return-void
.end method

.method public k(I)V
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_7

    .line 493
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(I)V

    .line 495
    :cond_7
    return-void
.end method

.method public l(I)Z
    .registers 4

    .line 478
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 479
    return v1

    .line 482
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->k(I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 483
    :catch_d
    move-exception p1

    .line 484
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 487
    return v1
.end method

.method public m(I)I
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_d

    .line 552
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result p1

    return p1

    .line 555
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->m(I)I

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return p1

    .line 556
    :catch_14
    move-exception p1

    .line 557
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 560
    const/4 p1, -0x1

    return p1
.end method

.method public n(I)Z
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 593
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->n(I)Z

    move-result p1

    return p1

    .line 596
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->n(I)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return p1

    .line 597
    :catch_12
    move-exception p1

    .line 598
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 601
    const/4 p1, 0x0

    return p1
.end method

.method public o(I)V
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_a

    .line 607
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->o(I)V

    goto :goto_14

    .line 610
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->o(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 613
    goto :goto_14

    .line 611
    :catch_10
    move-exception p1

    .line 612
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 615
    :goto_14
    return-void
.end method

.method public p(I)Z
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_b

    .line 659
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->p(I)Z

    move-result p1

    return p1

    .line 662
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->p(I)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return p1

    .line 663
    :catch_12
    move-exception p1

    .line 664
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 667
    const/4 p1, 0x0

    return p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/ab;
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_13

    .line 727
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->q(I)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/aa;)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 728
    :catch_f
    move-exception p1

    .line 729
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 732
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_13

    .line 739
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->r(I)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ag;)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 740
    :catch_f
    move-exception p1

    .line 741
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 744
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v0, :cond_13

    .line 762
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/h;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/h;->s(I)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 763
    :catch_f
    move-exception p1

    .line 764
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 767
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method
