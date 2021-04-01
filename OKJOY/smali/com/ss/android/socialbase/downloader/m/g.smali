.class public Lcom/ss/android/socialbase/downloader/m/g;
.super Ljava/lang/Object;
.source "IPCUtils.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/g;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/g;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/d/ab;
    .registers 2

    .prologue
    .line 326
    if-nez p0, :cond_4

    .line 327
    const/4 v0, 0x0

    .line 328
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$24;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$24;-><init>(Lcom/ss/android/socialbase/downloader/d/ac;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/ab;)Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 2

    .prologue
    .line 584
    if-nez p0, :cond_4

    .line 585
    const/4 v0, 0x0

    .line 586
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$8;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$8;-><init>(Lcom/ss/android/socialbase/downloader/d/ab;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/d/ad;
    .registers 2

    .prologue
    .line 342
    if-nez p0, :cond_4

    .line 343
    const/4 v0, 0x0

    .line 344
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$25;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$25;-><init>(Lcom/ss/android/socialbase/downloader/downloader/r;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/ag;)Lcom/ss/android/socialbase/downloader/d/af;
    .registers 2

    .prologue
    .line 714
    if-nez p0, :cond_4

    .line 715
    const/4 v0, 0x0

    .line 716
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$15;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$15;-><init>(Lcom/ss/android/socialbase/downloader/d/ag;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/af;)Lcom/ss/android/socialbase/downloader/d/ag;
    .registers 2

    .prologue
    .line 727
    if-nez p0, :cond_4

    .line 728
    const/4 v0, 0x0

    .line 729
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$16;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$16;-><init>(Lcom/ss/android/socialbase/downloader/d/af;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/d/e;
    .registers 2

    .prologue
    .line 469
    if-nez p0, :cond_4

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$5;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$5;-><init>(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/l;)Lcom/ss/android/socialbase/downloader/d/f;
    .registers 2

    .prologue
    .line 427
    if-nez p0, :cond_4

    .line 428
    const/4 v0, 0x0

    .line 429
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$3;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$3;-><init>(Lcom/ss/android/socialbase/downloader/d/l;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/d/g;
    .registers 2

    .prologue
    .line 364
    if-nez p0, :cond_4

    .line 365
    const/4 v0, 0x0

    .line 366
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$27;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$27;-><init>(Lcom/ss/android/socialbase/downloader/d/q;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/v;)Lcom/ss/android/socialbase/downloader/d/h;
    .registers 2

    .prologue
    .line 480
    if-nez p0, :cond_4

    .line 481
    const/4 v0, 0x0

    .line 482
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$6;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$6;-><init>(Lcom/ss/android/socialbase/downloader/d/v;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/w;Z)Lcom/ss/android/socialbase/downloader/d/i;
    .registers 3

    .prologue
    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    .line 139
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$12;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/m/g$12;-><init>(Lcom/ss/android/socialbase/downloader/d/w;Z)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/x;)Lcom/ss/android/socialbase/downloader/d/j;
    .registers 2

    .prologue
    .line 438
    if-nez p0, :cond_4

    .line 439
    const/4 v0, 0x0

    .line 440
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$4;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$4;-><init>(Lcom/ss/android/socialbase/downloader/d/x;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/f;)Lcom/ss/android/socialbase/downloader/d/l;
    .registers 2

    .prologue
    .line 627
    if-nez p0, :cond_4

    .line 628
    const/4 v0, 0x0

    .line 629
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$10;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$10;-><init>(Lcom/ss/android/socialbase/downloader/d/f;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/o;)Lcom/ss/android/socialbase/downloader/d/m;
    .registers 2

    .prologue
    .line 759
    if-nez p0, :cond_4

    .line 760
    const/4 v0, 0x0

    .line 761
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$18;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$18;-><init>(Lcom/ss/android/socialbase/downloader/d/o;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/downloader/d/n;
    .registers 2

    .prologue
    .line 400
    if-nez p0, :cond_4

    .line 401
    const/4 v0, 0x0

    .line 402
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$29;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$29;-><init>(Lcom/ss/android/socialbase/downloader/d/p;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/m;)Lcom/ss/android/socialbase/downloader/d/o;
    .registers 2

    .prologue
    .line 412
    if-nez p0, :cond_4

    .line 413
    const/4 v0, 0x0

    .line 414
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$2;-><init>(Lcom/ss/android/socialbase/downloader/d/m;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/n;)Lcom/ss/android/socialbase/downloader/d/p;
    .registers 2

    .prologue
    .line 742
    if-nez p0, :cond_4

    .line 743
    const/4 v0, 0x0

    .line 744
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$17;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$17;-><init>(Lcom/ss/android/socialbase/downloader/d/n;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/g;)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 2

    .prologue
    .line 803
    if-nez p0, :cond_4

    .line 804
    const/4 v0, 0x0

    .line 805
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$21;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$21;-><init>(Lcom/ss/android/socialbase/downloader/d/g;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/t;)Lcom/ss/android/socialbase/downloader/d/r;
    .registers 2

    .prologue
    .line 697
    if-nez p0, :cond_4

    .line 698
    const/4 v0, 0x0

    .line 699
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$14;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$14;-><init>(Lcom/ss/android/socialbase/downloader/d/t;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/u;)Lcom/ss/android/socialbase/downloader/d/s;
    .registers 2

    .prologue
    .line 353
    if-nez p0, :cond_4

    .line 354
    const/4 v0, 0x0

    .line 355
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$26;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$26;-><init>(Lcom/ss/android/socialbase/downloader/d/u;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/r;)Lcom/ss/android/socialbase/downloader/d/t;
    .registers 2

    .prologue
    .line 375
    if-nez p0, :cond_4

    .line 376
    const/4 v0, 0x0

    .line 377
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$28;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$28;-><init>(Lcom/ss/android/socialbase/downloader/d/r;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/s;)Lcom/ss/android/socialbase/downloader/d/u;
    .registers 2

    .prologue
    .line 681
    if-nez p0, :cond_4

    .line 682
    const/4 v0, 0x0

    .line 683
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$13;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$13;-><init>(Lcom/ss/android/socialbase/downloader/d/s;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/h;)Lcom/ss/android/socialbase/downloader/d/v;
    .registers 2

    .prologue
    .line 787
    if-nez p0, :cond_4

    .line 788
    const/4 v0, 0x0

    .line 789
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$20;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$20;-><init>(Lcom/ss/android/socialbase/downloader/d/h;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;
    .registers 2

    .prologue
    .line 819
    if-nez p0, :cond_4

    .line 820
    const/4 v0, 0x0

    .line 821
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$22;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$22;-><init>(Lcom/ss/android/socialbase/downloader/d/i;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/j;)Lcom/ss/android/socialbase/downloader/d/x;
    .registers 2

    .prologue
    .line 644
    if-nez p0, :cond_4

    .line 645
    const/4 v0, 0x0

    .line 646
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$11;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$11;-><init>(Lcom/ss/android/socialbase/downloader/d/j;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/d/y;
    .registers 2

    .prologue
    .line 304
    if-nez p0, :cond_4

    .line 305
    const/4 v0, 0x0

    .line 306
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$23;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$23;-><init>(Lcom/ss/android/socialbase/downloader/d/z;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/y;)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 2

    .prologue
    .line 547
    if-nez p0, :cond_4

    .line 548
    const/4 v0, 0x0

    .line 549
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$7;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$7;-><init>(Lcom/ss/android/socialbase/downloader/d/y;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/e;)Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .prologue
    .line 611
    if-nez p0, :cond_4

    .line 612
    const/4 v0, 0x0

    .line 613
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$9;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$9;-><init>(Lcom/ss/android/socialbase/downloader/d/e;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/ad;)Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 2

    .prologue
    .line 770
    if-nez p0, :cond_4

    .line 771
    const/4 v0, 0x0

    .line 772
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$19;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$19;-><init>(Lcom/ss/android/socialbase/downloader/d/ad;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 2

    .prologue
    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/g$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/m/g$1;-><init>(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_3
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 495
    if-nez p0, :cond_4

    .line 533
    :goto_3
    return-object v0

    .line 498
    :cond_4
    :try_start_4
    new-instance v1, Lcom/ss/android/socialbase/downloader/g/d;

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/g/d;-><init>(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 500
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lcom/ss/android/socialbase/downloader/d/e;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/e;)Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 501
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/y;)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 502
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->e()Lcom/ss/android/socialbase/downloader/d/h;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/h;)Lcom/ss/android/socialbase/downloader/d/v;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/v;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 503
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->f()Lcom/ss/android/socialbase/downloader/d/f;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/f;)Lcom/ss/android/socialbase/downloader/d/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/l;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 504
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->j()Lcom/ss/android/socialbase/downloader/d/j;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/j;)Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/x;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 505
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->g()Lcom/ss/android/socialbase/downloader/d/s;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/s;)Lcom/ss/android/socialbase/downloader/d/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/u;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 506
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->i()Lcom/ss/android/socialbase/downloader/d/n;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/n;)Lcom/ss/android/socialbase/downloader/d/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 507
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->k()Lcom/ss/android/socialbase/downloader/d/g;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/g;)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 508
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->d()Lcom/ss/android/socialbase/downloader/d/ab;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ab;)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v2

    .line 509
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/g/a;->h()Lcom/ss/android/socialbase/downloader/d/ad;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ad;)Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/g/d;

    .line 511
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v2

    .line 512
    if-eqz v2, :cond_9b

    .line 513
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/g/d;->a(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    .line 516
    :cond_9b
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_b2

    .line 518
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/g/d;->b(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    .line 521
    :cond_b2
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v2

    .line 522
    if-eqz v2, :cond_c9

    .line 523
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/g/d;->c(ILcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    .line 526
    :cond_c9
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/b/h;)V

    .line 527
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/b/h;)V

    .line 528
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-static {v1, p0, v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/b/h;)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d8} :catch_db

    move-object v0, v1

    .line 529
    goto/16 :goto_3

    .line 530
    :catch_db
    move-exception v1

    .line 531
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/g/d;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/b/h;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 538
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 539
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/b/h;->ordinal()I

    move-result v2

    invoke-interface {p1, v2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(II)Lcom/ss/android/socialbase/downloader/d/i;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_25

    .line 541
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/d/i;->a()I

    move-result v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 538
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 543
    :cond_28
    invoke-virtual {p0, v1, p2}, Lcom/ss/android/socialbase/downloader/g/d;->a(Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/h;)V

    .line 544
    return-void
.end method
