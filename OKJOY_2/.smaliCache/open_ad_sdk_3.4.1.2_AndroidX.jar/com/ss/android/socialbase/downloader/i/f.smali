.class public Lcom/ss/android/socialbase/downloader/i/f;
.super Ljava/lang/Object;
.source "IPCUtils.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/f;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    .line 59
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/f;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .registers 2

    .line 920
    if-nez p0, :cond_4

    .line 921
    const/4 p0, 0x0

    return-object p0

    .line 922
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$25;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$25;-><init>(Lcom/ss/android/socialbase/downloader/depend/i;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 2

    .line 334
    if-nez p0, :cond_4

    .line 335
    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$23;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$23;-><init>(Lcom/ss/android/socialbase/downloader/depend/ab;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/aa;)Lcom/ss/android/socialbase/downloader/depend/ab;
    .registers 2

    .line 591
    if-nez p0, :cond_4

    .line 592
    const/4 p0, 0x0

    return-object p0

    .line 593
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$7;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$7;-><init>(Lcom/ss/android/socialbase/downloader/depend/aa;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 2

    .line 356
    if-nez p0, :cond_4

    .line 357
    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$26;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$26;-><init>(Lcom/ss/android/socialbase/downloader/depend/ah;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ag;)Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 2

    .line 675
    if-nez p0, :cond_4

    .line 676
    const/4 p0, 0x0

    return-object p0

    .line 677
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$10;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$10;-><init>(Lcom/ss/android/socialbase/downloader/depend/ag;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/q;)Lcom/ss/android/socialbase/downloader/depend/ai;
    .registers 2

    .line 377
    if-nez p0, :cond_4

    .line 378
    const/4 p0, 0x0

    return-object p0

    .line 379
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$27;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$27;-><init>(Lcom/ss/android/socialbase/downloader/downloader/q;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/al;)Lcom/ss/android/socialbase/downloader/depend/ak;
    .registers 2

    .line 815
    if-nez p0, :cond_4

    .line 816
    const/4 p0, 0x0

    return-object p0

    .line 817
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$17;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$17;-><init>(Lcom/ss/android/socialbase/downloader/depend/al;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ak;)Lcom/ss/android/socialbase/downloader/depend/al;
    .registers 2

    .line 828
    if-nez p0, :cond_4

    .line 829
    const/4 p0, 0x0

    return-object p0

    .line 830
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$18;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$18;-><init>(Lcom/ss/android/socialbase/downloader/depend/ak;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/depend/e;
    .registers 2

    .line 504
    if-nez p0, :cond_4

    .line 505
    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$5;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$5;-><init>(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/f;
    .registers 2

    .line 462
    if-nez p0, :cond_4

    .line 463
    const/4 p0, 0x0

    return-object p0

    .line 464
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$3;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$3;-><init>(Lcom/ss/android/socialbase/downloader/depend/n;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/depend/g;
    .registers 2

    .line 399
    if-nez p0, :cond_4

    .line 400
    const/4 p0, 0x0

    return-object p0

    .line 401
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$29;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$29;-><init>(Lcom/ss/android/socialbase/downloader/depend/t;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/h;
    .registers 2

    .line 515
    if-nez p0, :cond_4

    .line 516
    const/4 p0, 0x0

    return-object p0

    .line 517
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$6;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$6;-><init>(Lcom/ss/android/socialbase/downloader/depend/y;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 3

    .line 151
    if-nez p0, :cond_4

    .line 152
    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$12;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/i/f$12;-><init>(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/depend/j;
    .registers 2

    .line 473
    if-nez p0, :cond_4

    .line 474
    const/4 p0, 0x0

    return-object p0

    .line 475
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$4;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$4;-><init>(Lcom/ss/android/socialbase/downloader/depend/z;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/depend/l;
    .registers 2

    .line 654
    if-nez p0, :cond_4

    .line 655
    const/4 p0, 0x0

    return-object p0

    .line 657
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$9;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$9;-><init>(Lcom/ss/android/socialbase/downloader/depend/m;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/l;)Lcom/ss/android/socialbase/downloader/depend/m;
    .registers 2

    .line 628
    if-nez p0, :cond_4

    .line 629
    const/4 p0, 0x0

    return-object p0

    .line 631
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$8;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$8;-><init>(Lcom/ss/android/socialbase/downloader/depend/l;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/n;
    .registers 2

    .line 728
    if-nez p0, :cond_4

    .line 729
    const/4 p0, 0x0

    return-object p0

    .line 730
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$13;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$13;-><init>(Lcom/ss/android/socialbase/downloader/depend/f;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/o;
    .registers 2

    .line 860
    if-nez p0, :cond_4

    .line 861
    const/4 p0, 0x0

    return-object p0

    .line 862
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$20;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$20;-><init>(Lcom/ss/android/socialbase/downloader/depend/q;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/depend/p;
    .registers 2

    .line 435
    if-nez p0, :cond_4

    .line 436
    const/4 p0, 0x0

    return-object p0

    .line 437
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$31;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$31;-><init>(Lcom/ss/android/socialbase/downloader/depend/r;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/o;)Lcom/ss/android/socialbase/downloader/depend/q;
    .registers 2

    .line 447
    if-nez p0, :cond_4

    .line 448
    const/4 p0, 0x0

    return-object p0

    .line 449
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$2;-><init>(Lcom/ss/android/socialbase/downloader/depend/o;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/p;)Lcom/ss/android/socialbase/downloader/depend/r;
    .registers 2

    .line 843
    if-nez p0, :cond_4

    .line 844
    const/4 p0, 0x0

    return-object p0

    .line 845
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$19;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$19;-><init>(Lcom/ss/android/socialbase/downloader/depend/p;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 2

    .line 904
    if-nez p0, :cond_4

    .line 905
    const/4 p0, 0x0

    return-object p0

    .line 906
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$24;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$24;-><init>(Lcom/ss/android/socialbase/downloader/depend/g;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/w;)Lcom/ss/android/socialbase/downloader/depend/u;
    .registers 2

    .line 798
    if-nez p0, :cond_4

    .line 799
    const/4 p0, 0x0

    return-object p0

    .line 800
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$16;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$16;-><init>(Lcom/ss/android/socialbase/downloader/depend/w;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/depend/v;
    .registers 2

    .line 388
    if-nez p0, :cond_4

    .line 389
    const/4 p0, 0x0

    return-object p0

    .line 390
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$28;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$28;-><init>(Lcom/ss/android/socialbase/downloader/depend/x;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/depend/w;
    .registers 2

    .line 410
    if-nez p0, :cond_4

    .line 411
    const/4 p0, 0x0

    return-object p0

    .line 412
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$30;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$30;-><init>(Lcom/ss/android/socialbase/downloader/depend/u;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/v;)Lcom/ss/android/socialbase/downloader/depend/x;
    .registers 2

    .line 782
    if-nez p0, :cond_4

    .line 783
    const/4 p0, 0x0

    return-object p0

    .line 784
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$15;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$15;-><init>(Lcom/ss/android/socialbase/downloader/depend/v;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/h;)Lcom/ss/android/socialbase/downloader/depend/y;
    .registers 2

    .line 888
    if-nez p0, :cond_4

    .line 889
    const/4 p0, 0x0

    return-object p0

    .line 890
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$22;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$22;-><init>(Lcom/ss/android/socialbase/downloader/depend/h;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/j;)Lcom/ss/android/socialbase/downloader/depend/z;
    .registers 2

    .line 745
    if-nez p0, :cond_4

    .line 746
    const/4 p0, 0x0

    return-object p0

    .line 747
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$14;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$14;-><init>(Lcom/ss/android/socialbase/downloader/depend/j;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .line 712
    if-nez p0, :cond_4

    .line 713
    const/4 p0, 0x0

    return-object p0

    .line 714
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$11;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$11;-><init>(Lcom/ss/android/socialbase/downloader/depend/e;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ai;)Lcom/ss/android/socialbase/downloader/downloader/q;
    .registers 2

    .line 871
    if-nez p0, :cond_4

    .line 872
    const/4 p0, 0x0

    return-object p0

    .line 873
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$21;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$21;-><init>(Lcom/ss/android/socialbase/downloader/depend/ai;)V

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/a;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .registers 5

    .line 530
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 531
    return-object v0

    .line 533
    :cond_4
    :try_start_4
    new-instance v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 535
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->b()Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkStategy(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 536
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->c()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/aa;)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationEventListener(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 537
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->e()Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/h;)Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->interceptor(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 538
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->f()Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->depend(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 539
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->j()Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/j;)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorDepend(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 540
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->g()Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/v;)Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->forbiddenHandler(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 541
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->i()Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/p;)Lcom/ss/android/socialbase/downloader/depend/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->diskSpaceHandler(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 542
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->k()Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->fileUriProvider(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 543
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->d()Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ag;)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 544
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/model/a;->h()Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ai;)Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeCalculator(Lcom/ss/android/socialbase/downloader/downloader/q;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 546
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v2

    .line 547
    if-eqz v2, :cond_9b

    .line 548
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mainThreadListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 551
    :cond_9b
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v2

    .line 552
    if-eqz v2, :cond_b2

    .line 553
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->subThreadListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 556
    :cond_b2
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/model/a;->b(I)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_c9

    .line 558
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationListenerWithHashCode(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 561
    :cond_c9
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/g;)V

    .line 562
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/g;)V

    .line 563
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/g;)V

    .line 564
    invoke-static {v1, p0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_db} :catch_dc

    .line 565
    return-object v1

    .line 566
    :catch_dc
    move-exception p0

    .line 567
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 569
    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;
    .registers 2

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/f$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/i/f$1;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    return-object v0
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/model/a;->l()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 584
    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/model/a;->c(I)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object v1

    .line 585
    if-eqz v1, :cond_14

    .line 586
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/l;)Lcom/ss/android/socialbase/downloader/depend/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 583
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    :cond_17
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/model/a;Lcom/ss/android/socialbase/downloader/constants/g;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 574
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/model/a;->a(I)I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 575
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lcom/ss/android/socialbase/downloader/model/a;->a(II)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object v2

    .line 576
    if-eqz v2, :cond_25

    .line 577
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/i;->a()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 579
    :cond_28
    invoke-virtual {p0, v0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setDownloadListeners(Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/constants/g;)V

    .line 580
    return-void
.end method
