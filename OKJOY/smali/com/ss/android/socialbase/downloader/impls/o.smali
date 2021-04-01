.class public Lcom/ss/android/socialbase/downloader/impls/o;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/n;
.implements Lcom/ss/android/socialbase/downloader/downloader/o;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/downloader/p",
            "<",
            "Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 47
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 48
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 220
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 201
    :goto_a
    return-object v0

    .line 196
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_a

    .line 197
    :catch_12
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 132
    :goto_4
    return-void

    .line 126
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->a()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 127
    :catch_b
    move-exception v0

    .line 128
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 63
    :goto_4
    return-void

    .line 57
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 58
    :catch_b
    move-exception v0

    .line 59
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public a(II)V
    .registers 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_9

    .line 676
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 681
    :cond_9
    :goto_9
    return-void

    .line 677
    :catch_a
    move-exception v0

    .line 678
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(IIII)V
    .registers 6

    .prologue
    .line 605
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 606
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIII)V

    .line 614
    :goto_9
    return-void

    .line 609
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 610
    :catch_10
    move-exception v0

    .line 611
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(IIIJ)V
    .registers 12

    .prologue
    .line 592
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_e

    .line 593
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    .line 601
    :goto_d
    return-void

    .line 596
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_d

    .line 597
    :catch_18
    move-exception v0

    .line 598
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public a(IIJ)V
    .registers 6

    .prologue
    .line 579
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 580
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    .line 588
    :goto_9
    return-void

    .line 583
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 584
    :catch_10
    move-exception v0

    .line 585
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 12

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 311
    :goto_4
    return-void

    .line 306
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p4, v1, :cond_20

    const/4 v1, 0x0

    :goto_c
    invoke-static {p3, v1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/w;Z)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v3

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(IILcom/ss/android/socialbase/downloader/d/i;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 307
    :catch_1b
    move-exception v0

    .line 308
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 306
    :cond_20
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 6

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_c

    .line 344
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v1, "startForeground, aidlService is null"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_b
    return-void

    .line 346
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

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILandroid/app/Notification;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_b

    .line 349
    :catch_2a
    move-exception v0

    .line 350
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/z;)V
    .registers 5

    .prologue
    .line 709
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_d

    .line 711
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILcom/ss/android/socialbase/downloader/d/y;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 716
    :cond_d
    :goto_d
    return-void

    .line 712
    :catch_e
    move-exception v0

    .line 713
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 494
    :goto_4
    return-void

    .line 489
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(ILjava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 490
    :catch_b
    move-exception v0

    .line 491
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public a(IZ)V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 68
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    .line 77
    :goto_9
    return-void

    .line 71
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 72
    :catch_10
    move-exception v0

    .line 73
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 732
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 733
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 734
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/o$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/o$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/o;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Lcom/ss/android/socialbase/downloader/d/ag;)V

    .line 751
    :cond_14
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/ag;)V
    .registers 4

    .prologue
    .line 663
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_d

    .line 665
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ag;)Lcom/ss/android/socialbase/downloader/d/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/d/af;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 670
    :cond_d
    :goto_d
    return-void

    .line 666
    :catch_e
    move-exception v0

    .line 667
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 526
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 534
    :goto_9
    return-void

    .line 529
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/g/b;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 530
    :catch_10
    move-exception v0

    .line 531
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 3

    .prologue
    .line 420
    if-nez p1, :cond_3

    .line 425
    :cond_2
    :goto_2
    return-void

    .line 422
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->b(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 263
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/util/List;)V

    .line 271
    :goto_9
    return-void

    .line 266
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 267
    :catch_10
    move-exception v0

    .line 268
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(ZZ)V
    .registers 5

    .prologue
    .line 357
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_c

    .line 359
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v1, "stopForeground, aidlService is null"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_b
    return-void

    .line 361
    :cond_c
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v1, "aidlService.stopForeground"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :try_start_13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_b

    .line 364
    :catch_19
    move-exception v0

    .line 365
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 329
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    .line 337
    :goto_a
    return v0

    .line 332
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 337
    :goto_10
    const/4 v0, 0x0

    goto :goto_a

    .line 333
    :catch_12
    move-exception v0

    .line 334
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/o;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 232
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 240
    :goto_a
    return-object v0

    .line 235
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_a

    .line 236
    :catch_12
    move-exception v0

    .line 237
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 12

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 324
    :goto_4
    return-void

    .line 319
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p4, v1, :cond_20

    const/4 v1, 0x0

    :goto_c
    invoke-static {p3, v1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/w;Z)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v3

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IILcom/ss/android/socialbase/downloader/d/i;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 320
    :catch_1b
    move-exception v0

    .line 321
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 319
    :cond_20
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 646
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(ILjava/util/List;)V

    .line 654
    :goto_9
    return-void

    .line 649
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILjava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 650
    :catch_10
    move-exception v0

    .line 651
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public b(IZ)V
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 276
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(IZ)V

    .line 284
    :goto_9
    return-void

    .line 279
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 280
    :catch_10
    move-exception v0

    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 481
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 3

    .prologue
    .line 429
    if-nez p1, :cond_3

    .line 434
    :cond_2
    :goto_2
    return-void

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->c(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_2
.end method

.method public b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_d

    .line 374
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v2, "isServiceForeground, aidlService is null"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_c
    return v0

    .line 377
    :cond_d
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/o;->a:Ljava/lang/String;

    const-string v2, "aidlService.isServiceForeground"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_14
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    move-result v0

    goto :goto_c

    .line 380
    :catch_1b
    move-exception v1

    .line 381
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public b(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_6

    .line 91
    :goto_5
    return v0

    .line 85
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 86
    :catch_d
    move-exception v1

    .line 87
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 256
    :goto_a
    return-object v0

    .line 250
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(Ljava/lang/String;)Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_a

    .line 251
    :catch_12
    move-exception v0

    .line 252
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 256
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 105
    :goto_4
    return-void

    .line 100
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 101
    :catch_b
    move-exception v0

    .line 102
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public c(IZ)V
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 507
    :goto_4
    return-void

    .line 502
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 503
    :catch_b
    move-exception v0

    .line 504
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 389
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 539
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    .line 547
    :goto_a
    return v0

    .line 542
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v0

    goto :goto_a

    .line 543
    :catch_12
    move-exception v0

    .line 544
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 547
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 395
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 403
    :goto_a
    return-object v0

    .line 398
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e(Ljava/lang/String;)Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_a

    .line 399
    :catch_12
    move-exception v0

    .line 400
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 403
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()V
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_9

    .line 460
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->f()V

    .line 462
    :cond_9
    return-void
.end method

.method public d(I)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_5

    .line 118
    :goto_4
    return-void

    .line 113
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 114
    :catch_b
    move-exception v0

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public e(I)J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 136
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v2, :cond_7

    .line 144
    :goto_6
    return-wide v0

    .line 140
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e(I)J
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-wide v0

    goto :goto_6

    .line 141
    :catch_e
    move-exception v2

    .line 142
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_f

    .line 410
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 415
    :goto_a
    return-object v0

    .line 411
    :catch_b
    move-exception v0

    .line 412
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 415
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 467
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->e()Z

    move-result v0

    .line 475
    :goto_a
    return v0

    .line 470
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->c()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v0

    goto :goto_a

    .line 471
    :catch_12
    move-exception v0

    .line 472
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 475
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public f(I)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_6

    .line 159
    :goto_5
    return v0

    .line 154
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 155
    :catch_d
    move-exception v1

    .line 156
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public f()V
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 633
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->f()V

    .line 641
    :goto_9
    return-void

    .line 636
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->d()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 637
    :catch_10
    move-exception v0

    .line 638
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_6

    .line 173
    :goto_5
    return v0

    .line 168
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->g(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 169
    :catch_d
    move-exception v1

    .line 170
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 179
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 187
    :goto_a
    return-object v0

    .line 182
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->h(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_a

    .line 183
    :catch_12
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public h()V
    .registers 2

    .prologue
    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 756
    return-void
.end method

.method public i(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object v0

    .line 215
    :goto_a
    return-object v0

    .line 210
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->i(I)Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_a

    .line 211
    :catch_12
    move-exception v0

    .line 212
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 215
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public j(I)V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 289
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->j(I)V

    .line 298
    :goto_9
    return-void

    .line 292
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->j(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 293
    :catch_10
    move-exception v0

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public k(I)V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(I)V

    .line 455
    :cond_9
    return-void
.end method

.method public l(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_6

    .line 447
    :goto_5
    return v0

    .line 442
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->k(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    .line 443
    :catch_d
    move-exception v1

    .line 444
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public m(I)I
    .registers 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_d

    .line 512
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result v0

    .line 520
    :goto_c
    return v0

    .line 515
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->m(I)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    .line 516
    :catch_14
    move-exception v0

    .line 517
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 520
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public n(I)Z
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 553
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->n(I)Z

    move-result v0

    .line 561
    :goto_a
    return v0

    .line 556
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->n(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v0

    goto :goto_a

    .line 557
    :catch_12
    move-exception v0

    .line 558
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 561
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public o(I)V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_a

    .line 567
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->o(I)V

    .line 575
    :goto_9
    return-void

    .line 570
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->o(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 571
    :catch_10
    move-exception v0

    .line 572
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public p(I)Z
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_b

    .line 619
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->d:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->p(I)Z

    move-result v0

    .line 627
    :goto_a
    return v0

    .line 622
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->p(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v0

    goto :goto_a

    .line 623
    :catch_12
    move-exception v0

    .line 624
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 627
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_13

    .line 687
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->q(I)Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/y;)Lcom/ss/android/socialbase/downloader/d/z;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    .line 692
    :goto_e
    return-object v0

    .line 688
    :catch_f
    move-exception v0

    .line 689
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 692
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_13

    .line 699
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->r(I)Lcom/ss/android/socialbase/downloader/d/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ab;)Lcom/ss/android/socialbase/downloader/d/ac;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    .line 704
    :goto_e
    return-object v0

    .line 700
    :catch_f
    move-exception v0

    .line 701
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 704
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_13

    .line 722
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->s(I)Lcom/ss/android/socialbase/downloader/d/g;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/g;)Lcom/ss/android/socialbase/downloader/d/q;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    .line 727
    :goto_e
    return-object v0

    .line 723
    :catch_f
    move-exception v0

    .line 724
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 727
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method
