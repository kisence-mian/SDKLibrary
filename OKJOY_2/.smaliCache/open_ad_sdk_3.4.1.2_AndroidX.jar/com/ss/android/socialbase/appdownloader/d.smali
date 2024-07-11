.class public Lcom/ss/android/socialbase/appdownloader/d;
.super Ljava/lang/Object;
.source "AppDownloader.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/ss/android/socialbase/appdownloader/d;

.field private static k:Z

.field private static l:Z


# instance fields
.field private c:Lcom/ss/android/socialbase/appdownloader/c/c;

.field private d:Lcom/ss/android/socialbase/appdownloader/c/d;

.field private e:Lcom/ss/android/socialbase/appdownloader/c/h;

.field private f:Lcom/ss/android/socialbase/appdownloader/c/g;

.field private g:Lcom/ss/android/socialbase/appdownloader/c/m;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

.field private m:Z

.field private n:Lcom/ss/android/socialbase/appdownloader/c/f;

.field private o:Lcom/ss/android/socialbase/appdownloader/c/j;

.field private p:Lcom/ss/android/socialbase/downloader/depend/af;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/ss/android/socialbase/appdownloader/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->k:Z

    .line 77
    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->l:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->m:Z

    .line 257
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/depend/ab;
    .registers 3

    .line 680
    if-nez p1, :cond_4

    .line 681
    const/4 p1, 0x0

    return-object p1

    .line 682
    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$4;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/d$4;-><init>(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/appdownloader/c/e;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 796
    if-eqz p1, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p3, :cond_b

    goto :goto_18

    .line 799
    :cond_b
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    .line 797
    :cond_18
    :goto_18
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    nop

    .line 644
    nop

    .line 645
    const-string v1, "User-Agent"

    const/4 v2, 0x0

    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_54

    .line 646
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/c;

    .line 647
    if-eqz v3, :cond_53

    .line 648
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 649
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 650
    const/4 v2, 0x1

    .line 651
    :cond_43
    new-instance v4, Lcom/ss/android/socialbase/downloader/model/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_53
    goto :goto_16

    .line 658
    :cond_54
    if-nez v2, :cond_60

    .line 659
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/c;

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/b/a;->a:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_60
    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .registers 4

    .line 627
    if-nez p1, :cond_3

    .line 628
    return-void

    .line 630
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->download()I

    .line 631
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 632
    if-eqz p1, :cond_f

    .line 633
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAntiHijackErrorCode(I)V

    .line 635
    :cond_f
    if-eqz p1, :cond_16

    if-eqz p3, :cond_16

    .line 636
    invoke-virtual {p1, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSavePathRedirected(Z)V

    .line 638
    :cond_16
    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 3

    .line 370
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result p0

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 4

    .line 803
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 804
    if-eqz p1, :cond_24

    .line 805
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 806
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 807
    return-object p2

    .line 809
    :cond_23
    goto :goto_e

    .line 811
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    .line 284
    if-eqz p1, :cond_28

    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->k:Z

    if-nez v0, :cond_28

    .line 285
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 286
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Z)V

    .line 288
    :cond_10
    const-string v0, "application/vnd.android.package-archive"

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/e;->a(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 290
    new-instance p1, Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/d/b;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 291
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/d;->p()V

    .line 292
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/d;->q()V

    .line 293
    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/d;->k:Z

    .line 295
    :cond_28
    return-void
.end method

.method public static j()Lcom/ss/android/socialbase/appdownloader/d;
    .registers 2

    .line 260
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    if-nez v0, :cond_17

    .line 261
    const-class v0, Lcom/ss/android/socialbase/appdownloader/d;

    monitor-enter v0

    .line 262
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    if-nez v1, :cond_12

    .line 263
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/d;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    .line 264
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 266
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .registers 1

    .line 62
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private p()V
    .registers 6

    .line 314
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->l:Z

    if-eqz v0, :cond_5

    .line 315
    return-void

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    if-nez v0, :cond_10

    .line 317
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    .line 320
    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "android.ss.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 330
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->l:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_65} :catch_66

    .line 340
    goto :goto_6a

    .line 338
    :catch_66
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    :goto_6a
    return-void
.end method

.method private q()V
    .registers 3

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 355
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r$b;)V

    .line 367
    :cond_e
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/appdownloader/f;)I
    .registers 23

    .line 426
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz v8, :cond_3ca

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    move v4, v9

    goto/16 :goto_3cb

    .line 428
    :cond_10
    nop

    .line 430
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->c()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 435
    return v9

    .line 438
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->u()I

    move-result v5

    .line 440
    if-nez v5, :cond_2c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_2c
    move v6, v9

    .line 442
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->N()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->d()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v6}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v12, 0xff

    if-le v4, v12, :cond_56

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_57

    .line 450
    :cond_56
    move-object v4, v0

    .line 454
    :goto_57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 455
    move-object v3, v4

    .line 457
    :cond_5e
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v12, ".apk"

    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_78

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 459
    const-string v0, "application/vnd.android.package-archive"

    move-object v15, v0

    goto :goto_79

    .line 462
    :cond_78
    move-object v15, v0

    :goto_79
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 464
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->b()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_8e

    .line 463
    :cond_8d
    move-object v14, v0

    .line 467
    :goto_8e
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    goto/16 :goto_3a0

    .line 470
    :cond_9c
    invoke-static {v2, v14}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v12, "resume_task_override_settings"

    invoke-virtual {v0, v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 473
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0
    :try_end_bc
    .catchall {:try_start_11 .. :try_end_bc} :catchall_3a2

    .line 474
    if-eqz v0, :cond_cc

    .line 477
    :try_start_be
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_cb

    .line 479
    goto :goto_cc

    .line 478
    :catchall_cb
    move-exception v0

    .line 482
    :cond_cc
    :goto_cc
    :try_start_cc
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(ILorg/json/JSONObject;)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->M()Z

    move-result v0

    .line 485
    if-nez v0, :cond_ef

    invoke-static {v14, v4}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ef

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v12

    if-nez v12, :cond_ef

    .line 486
    const/4 v12, 0x1

    goto :goto_f0

    .line 488
    :cond_ef
    move v12, v0

    :goto_f0
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->l()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v0

    .line 489
    if-nez v0, :cond_13f

    .line 490
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->g()Z

    move-result v16

    if-nez v16, :cond_10a

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->h()Z

    move-result v16

    if-eqz v16, :cond_103

    goto :goto_10a

    :cond_103
    move v9, v12

    move/from16 v19, v13

    move-object v10, v14

    move-object/from16 v20, v15

    goto :goto_145

    .line 491
    :cond_10a
    :goto_10a
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->p()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-eqz v0, :cond_121

    .line 492
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/b;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->p()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/ss/android/socialbase/appdownloader/e/b;-><init>(Lcom/ss/android/socialbase/downloader/notification/a;)V

    move v9, v12

    move/from16 v19, v13

    move-object v10, v14

    move-object/from16 v20, v15

    move-object v12, v0

    goto :goto_146

    .line 494
    :cond_121
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/b;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->m()Ljava/lang/String;

    move-result-object v18

    move v9, v12

    move-object v12, v0

    move/from16 v19, v13

    move-object v13, v10

    move-object v10, v14

    move/from16 v14, v19

    move-object/from16 v20, v15

    move-object v15, v3

    move-object/from16 v16, v10

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v18}, Lcom/ss/android/socialbase/appdownloader/e/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    goto :goto_146

    .line 489
    :cond_13f
    move v9, v12

    move/from16 v19, v13

    move-object v10, v14

    move-object/from16 v20, v15

    .line 498
    :goto_145
    move-object v12, v0

    :goto_146
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->P()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v0

    .line 500
    if-nez v0, :cond_153

    .line 501
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$2;

    invoke-direct {v0, v7}, Lcom/ss/android/socialbase/appdownloader/d$2;-><init>(Lcom/ss/android/socialbase/appdownloader/d;)V

    move-object v13, v0

    goto :goto_154

    .line 500
    :cond_153
    move-object v13, v0

    .line 510
    :goto_154
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->A()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_17c

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->T()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_17c

    .line 513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ss/android/socialbase/downloader/depend/m;

    .line 514
    invoke-virtual {v8, v14}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 515
    goto :goto_16c

    .line 518
    :cond_17c
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->m()Ljava/lang/String;

    move-result-object v14
    :try_end_180
    .catchall {:try_start_cc .. :try_end_180} :catchall_3a2

    .line 520
    nop

    .line 521
    :try_start_181
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 522
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_192

    .line 524
    :cond_18d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 527
    :goto_192
    const-string v15, "auto_install_with_notification"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->i()Z

    move-result v11

    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 528
    const-string v11, "auto_install_without_notification"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->h()Z

    move-result v15

    invoke-virtual {v0, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 530
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_1a8
    .catchall {:try_start_181 .. :try_end_1a8} :catchall_1a9

    .line 532
    goto :goto_1aa

    .line 531
    :catchall_1a9
    move-exception v0

    .line 534
    :goto_1aa
    :try_start_1aa
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->g()Z

    move-result v0

    if-nez v0, :cond_1b9

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1b7

    goto :goto_1b9

    :cond_1b7
    const/4 v0, 0x0

    goto :goto_1ba

    :cond_1b9
    :goto_1b9
    const/4 v0, 0x1

    .line 535
    :goto_1ba
    if-eqz v0, :cond_1d7

    invoke-static/range {v19 .. v19}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v11

    const-string v15, "enable_notification_ui"

    invoke-virtual {v11, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v11

    const/4 v15, 0x1

    if-lt v11, v15, :cond_1d7

    .line 536
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->aa()Ljava/lang/String;

    move-result-object v15

    move/from16 v8, v19

    invoke-virtual {v11, v8, v15}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(ILjava/lang/String;)V

    goto :goto_1d9

    .line 535
    :cond_1d7
    move/from16 v8, v19

    .line 539
    :goto_1d9
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->with(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v11

    .line 540
    invoke-virtual {v11, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->url(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ab()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrls(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 542
    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->name(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 543
    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->title(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 544
    invoke-virtual {v2, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->savePath(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->j()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->onlyWifi(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v2

    .line 546
    invoke-virtual {v2, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extraHeaders(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 547
    invoke-virtual {v1, v13}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->depend(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->z()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrlRetryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 550
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->showNotification(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 551
    invoke-virtual {v1, v14}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extra(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 552
    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mimeType(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 553
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->F()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->minProgressTimeMsInterval(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->maxProgressCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->k()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mainThreadListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 556
    invoke-virtual {v1, v12}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->Q()Lcom/ss/android/socialbase/appdownloader/c/e;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationEventListener(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 558
    invoke-virtual {v1, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->force(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->s()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->autoResumed(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->t()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->showNotificationForAutoResumed(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->q()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkStategy(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->r()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkAdjustCalculator(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needHttpsToHttpRetry(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->packageName(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->md5(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->x()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->expectFileLength(J)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->A()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needRetryDelay(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeArray(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->C()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needDefaultHttpServiceBackUp(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->D()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needReuseFirstConnection(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->H()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needReuseChunkRunnable(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->I()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needIndependentProcess(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->L()Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->enqueueType(Lcom/ss/android/socialbase/downloader/constants/f;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 574
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->O()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorDepend(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 575
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->E()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeCalculator(Lcom/ss/android/socialbase/downloader/downloader/q;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->J()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->headConnectionAvailable(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->R()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->fileUriProvider(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ac()Lcom/ss/android/socialbase/downloader/depend/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->diskSpaceHandler(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->K()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needChunkDowngradeRetry(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->S()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->downloadSetting(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->iconUrl(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->X()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needSDKMonitor(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorScene(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->Z()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extraMonitorStatus([I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->V()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->executorGroup(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->W()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->throttleNetSpeed(J)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v4

    .line 589
    if-eqz v4, :cond_34e

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34e

    .line 590
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->T()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setDownloadCompleteHandlers(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 592
    :cond_34e
    if-eqz v4, :cond_39f

    .line 593
    if-eqz v0, :cond_381

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->U()Z

    move-result v0

    if-eqz v0, :cond_381

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_381

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_381

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_381

    .line 594
    nop

    .line 595
    nop

    .line 596
    nop

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v9, Lcom/ss/android/socialbase/appdownloader/d$3;

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/d$3;-><init>(Lcom/ss/android/socialbase/appdownloader/d;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    invoke-static {v0, v9}, Lcom/ss/android/socialbase/appdownloader/e/d;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V

    .line 610
    goto :goto_39f

    .line 611
    :cond_381
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification permission need not request, start download :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-direct {v7, v4, v5, v6}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    .line 613
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_39f
    .catchall {:try_start_1aa .. :try_end_39f} :catchall_3a2

    .line 617
    :cond_39f
    :goto_39f
    return v8

    .line 468
    :cond_3a0
    :goto_3a0
    const/4 v1, 0x0

    return v1

    .line 619
    :catchall_3a2
    move-exception v0

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->O()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "addDownloadTask"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 621
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "add download task error:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return v4

    .line 426
    :cond_3ca
    move v4, v9

    .line 427
    :goto_3cb
    return v4
.end method

.method public a()Lcom/ss/android/socialbase/appdownloader/c/c;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->c:Lcom/ss/android/socialbase/appdownloader/c/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 7

    .line 760
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5e

    if-nez p1, :cond_a

    goto :goto_5e

    .line 764
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/d;->h()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 765
    if-nez v0, :cond_1e

    .line 767
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 769
    :cond_1e
    if-nez v0, :cond_2a

    .line 771
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 773
    :cond_2a
    if-nez v0, :cond_34

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 783
    :cond_34
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v3, "get_download_info_by_list"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    .line 784
    if-nez v0, :cond_46

    if-eqz v2, :cond_46

    .line 786
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_47

    .line 788
    :cond_46
    return-object v0

    .line 789
    :catchall_47
    move-exception p1

    .line 790
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "getAppDownloadInfo error:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-object v1

    .line 761
    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 666
    nop

    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 668
    const-string p2, "application/vnd.android.package-archive"

    .line 670
    :cond_17
    return-object p2
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 815
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;II)V
    .registers 4

    .line 376
    packed-switch p3, :pswitch_data_28

    :pswitch_3
    goto :goto_26

    .line 391
    :pswitch_4
    :try_start_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    .line 392
    goto :goto_26

    .line 382
    :pswitch_c
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->resume(I)V

    .line 383
    goto :goto_26

    .line 394
    :pswitch_14
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    .line 395
    goto :goto_26

    .line 379
    :pswitch_19
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    .line 380
    goto :goto_26

    .line 399
    :catch_21
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 401
    :goto_26
    nop

    .line 402
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch -0x4
        :pswitch_19
        :pswitch_14
        :pswitch_c
        :pswitch_19
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/appdownloader/c/h;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    if-eqz p3, :cond_4

    .line 272
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/d;->c:Lcom/ss/android/socialbase/appdownloader/c/c;

    .line 274
    :cond_4
    if-eqz p4, :cond_8

    .line 275
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/d;->d:Lcom/ss/android/socialbase/appdownloader/c/d;

    .line 277
    :cond_8
    if-eqz p5, :cond_c

    .line 278
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/c/h;

    .line 280
    :cond_c
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/d;->c(Landroid/content/Context;)V

    .line 281
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/c/g;)V
    .registers 2

    .line 835
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->f:Lcom/ss/android/socialbase/appdownloader/c/g;

    .line 836
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/c/j;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Lcom/ss/android/socialbase/appdownloader/c/j;

    .line 138
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/af;)V
    .registers 2

    .line 856
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->p:Lcom/ss/android/socialbase/downloader/depend/af;

    .line 857
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/p;)V
    .registers 3

    .line 852
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setReserveWifiStatusListener(Lcom/ss/android/socialbase/downloader/downloader/p;)V

    .line 853
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    return-void

    .line 99
    :cond_7
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->i:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b()Lcom/ss/android/socialbase/appdownloader/c/d;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->d:Lcom/ss/android/socialbase/appdownloader/c/d;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 819
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 303
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setDefaultSavePath(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public c()Lcom/ss/android/socialbase/appdownloader/c/h;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ss/android/socialbase/appdownloader/c/f;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->n:Lcom/ss/android/socialbase/appdownloader/c/f;

    return-object v0
.end method

.method public f()Z
    .registers 4

    .line 129
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package_flag_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public g()Lcom/ss/android/socialbase/appdownloader/c/j;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Lcom/ss/android/socialbase/appdownloader/c/j;

    return-object v0
.end method

.method public h()Ljava/io/File;
    .registers 2

    .line 141
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getGlobalSaveDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/ss/android/socialbase/appdownloader/c/m;
    .registers 2

    .line 823
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->g:Lcom/ss/android/socialbase/appdownloader/c/m;

    return-object v0
.end method

.method public l()Lcom/ss/android/socialbase/appdownloader/c/g;
    .registers 2

    .line 831
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->f:Lcom/ss/android/socialbase/appdownloader/c/g;

    return-object v0
.end method

.method public m()Lcom/ss/android/socialbase/downloader/downloader/p;
    .registers 2

    .line 848
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/ss/android/socialbase/downloader/depend/af;
    .registers 2

    .line 860
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->p:Lcom/ss/android/socialbase/downloader/depend/af;

    return-object v0
.end method
