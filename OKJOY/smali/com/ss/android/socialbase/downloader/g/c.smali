.class public Lcom/ss/android/socialbase/downloader/g/c;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/g/c$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Lcom/ss/android/socialbase/downloader/b/j;

.field private F:Z

.field private G:Lcom/ss/android/socialbase/downloader/b/a;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/util/concurrent/atomic/AtomicLong;

.field private P:J

.field private Q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private R:Z

.field private S:Z

.field private T:J

.field private U:J

.field private V:Z

.field private W:Z

.field private X:J

.field private Y:J

.field private Z:Ljava/lang/StringBuffer;

.field private a:I

.field private aA:Landroid/os/Bundle;

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/ss/android/socialbase/downloader/b/b;

.field private ag:Z

.field private ah:Lcom/ss/android/socialbase/downloader/b/g;

.field private ai:Ljava/lang/String;

.field private aj:I

.field private ak:Ljava/lang/String;

.field private al:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile am:Z

.field private volatile an:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/ae;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Ljava/lang/String;

.field private av:Lcom/ss/android/socialbase/downloader/e/a;

.field private aw:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private ax:Lorg/json/JSONObject;

.field private ay:Lorg/json/JSONObject;

.field private az:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:[Ljava/lang/String;

.field private l:[I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 375
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/c$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/g/c$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    .line 81
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/a;->a:Lcom/ss/android/socialbase/downloader/b/a;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    .line 89
    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 93
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 94
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 107
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/b;->a:Lcom/ss/android/socialbase/downloader/b/b;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    .line 109
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->al:Ljava/util/concurrent/atomic/AtomicLong;

    .line 117
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    .line 120
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v6, -0x1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 80
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    .line 81
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/a;->a:Lcom/ss/android/socialbase/downloader/b/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    .line 89
    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 93
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 94
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 107
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/b;->a:Lcom/ss/android/socialbase/downloader/b/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    .line 109
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    .line 113
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->al:Ljava/util/concurrent/atomic/AtomicLong;

    .line 117
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    .line 120
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    .line 417
    if-nez p1, :cond_2e

    .line 593
    :cond_2d
    :goto_2d
    return-void

    .line 421
    :cond_2e
    :try_start_2e
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 422
    if-eq v2, v6, :cond_3c

    .line 423
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    .line 425
    :cond_3c
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 426
    if-eq v2, v6, :cond_4a

    .line 427
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    .line 429
    :cond_4a
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 430
    if-eq v2, v6, :cond_58

    .line 431
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    .line 433
    :cond_58
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 434
    if-eq v2, v6, :cond_66

    .line 435
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    .line 437
    :cond_66
    const-string v2, "savePath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 438
    if-eq v2, v6, :cond_74

    .line 439
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    .line 441
    :cond_74
    const-string v2, "tempPath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 442
    if-eq v2, v6, :cond_82

    .line 443
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    .line 445
    :cond_82
    const-string v2, "chunkCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 446
    if-eq v2, v6, :cond_90

    .line 447
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 449
    :cond_90
    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 450
    if-eq v2, v6, :cond_271

    .line 451
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 455
    :goto_a3
    const-string v2, "curBytes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 456
    if-eq v2, v6, :cond_27b

    .line 457
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    .line 461
    :goto_b6
    const-string v2, "totalBytes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 462
    if-eq v2, v6, :cond_c4

    .line 463
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    .line 465
    :cond_c4
    const-string v2, "eTag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 466
    if-eq v2, v6, :cond_d2

    .line 467
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    .line 469
    :cond_d2
    const-string v2, "onlyWifi"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 470
    if-eq v2, v6, :cond_e3

    .line 471
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_286

    move v2, v0

    :goto_e1
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    .line 473
    :cond_e3
    const-string v2, "force"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 474
    if-eq v2, v6, :cond_f4

    .line 475
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_289

    move v2, v0

    :goto_f2
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    .line 477
    :cond_f4
    const-string v2, "retryCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 478
    if-eq v2, v6, :cond_102

    .line 479
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    .line 481
    :cond_102
    const-string v2, "extra"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 482
    if-eq v2, v6, :cond_110

    .line 483
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    .line 485
    :cond_110
    const-string v2, "mimeType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 486
    if-eq v2, v6, :cond_11e

    .line 487
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    .line 489
    :cond_11e
    const-string v2, "notificationEnable"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 490
    if-eq v2, v6, :cond_12f

    .line 491
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_28c

    move v2, v0

    :goto_12d
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    .line 493
    :cond_12f
    const-string v2, "notificationVisibility"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 494
    if-eq v2, v6, :cond_13d

    .line 495
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    .line 497
    :cond_13d
    const-string v2, "isFirstDownload"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 498
    if-eq v2, v6, :cond_14e

    .line 499
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_28f

    move v2, v0

    :goto_14c
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 501
    :cond_14e
    const-string v2, "isFirstSuccess"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 502
    if-eq v2, v6, :cond_15f

    .line 503
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_292

    move v2, v0

    :goto_15d
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 505
    :cond_15f
    const-string v2, "needHttpsToHttpRetry"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 506
    if-eq v2, v6, :cond_170

    .line 507
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_295

    move v2, v0

    :goto_16e
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    .line 509
    :cond_170
    const-string v2, "downloadTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 510
    if-eq v2, v6, :cond_17e

    .line 511
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    .line 513
    :cond_17e
    const-string v2, "packageName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 514
    if-eq v2, v6, :cond_18c

    .line 515
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    .line 517
    :cond_18c
    const-string v2, "md5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 518
    if-eq v2, v6, :cond_19a

    .line 519
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    .line 521
    :cond_19a
    const-string v2, "retryDelay"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 522
    if-eq v2, v6, :cond_1ab

    .line 523
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_298

    move v2, v0

    :goto_1a9
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    .line 525
    :cond_1ab
    const-string v2, "curRetryTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 526
    if-eq v2, v6, :cond_1b9

    .line 527
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    .line 529
    :cond_1b9
    const-string v2, "retryDelayStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 530
    if-eq v2, v6, :cond_1d1

    .line 531
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 532
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_29b

    .line 533
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 542
    :cond_1d1
    :goto_1d1
    const-string v2, "defaultHttpServiceBackUp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 543
    if-eq v2, v6, :cond_1e2

    .line 544
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2bd

    move v2, v0

    :goto_1e0
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    .line 546
    :cond_1e2
    const-string v2, "chunkRunnableReuse"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 547
    if-eq v2, v6, :cond_1f3

    .line 548
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2c0

    move v2, v0

    :goto_1f1
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    .line 550
    :cond_1f3
    const-string v2, "retryDelayTimeArray"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 551
    if-eq v2, v6, :cond_201

    .line 552
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    .line 555
    :cond_201
    const-string v2, "chunkDowngradeRetry"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 556
    if-eq v2, v6, :cond_212

    .line 557
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2c3

    move v2, v0

    :goto_210
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    .line 560
    :cond_212
    const-string v2, "backUpUrlsStr"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 561
    if-eq v2, v6, :cond_221

    .line 562
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->i(Ljava/lang/String;)V

    .line 565
    :cond_221
    const-string v2, "backUpUrlRetryCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 566
    if-eq v2, v6, :cond_22f

    .line 567
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    .line 570
    :cond_22f
    const-string v2, "realDownloadTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 571
    if-eq v2, v6, :cond_23d

    .line 572
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    .line 575
    :cond_23d
    const-string v2, "retryScheduleMinutes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 576
    if-eq v2, v6, :cond_24b

    .line 577
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->aw:I

    .line 580
    :cond_24b
    const-string v2, "independentProcess"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 581
    if-eq v2, v6, :cond_25b

    .line 582
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2c6

    :goto_259
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    .line 585
    :cond_25b
    const-string v0, "auxiliaryJsonobjectString"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 586
    if-eq v0, v6, :cond_2d

    .line 587
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_269} :catch_26b

    goto/16 :goto_2d

    .line 590
    :catch_26b
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2d

    .line 453
    :cond_271
    :try_start_271
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    goto/16 :goto_a3

    .line 459
    :cond_27b
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    goto/16 :goto_b6

    :cond_286
    move v2, v1

    .line 471
    goto/16 :goto_e1

    :cond_289
    move v2, v1

    .line 475
    goto/16 :goto_f2

    :cond_28c
    move v2, v1

    .line 491
    goto/16 :goto_12d

    :cond_28f
    move v2, v1

    .line 499
    goto/16 :goto_14c

    :cond_292
    move v2, v1

    .line 503
    goto/16 :goto_15d

    :cond_295
    move v2, v1

    .line 507
    goto/16 :goto_16e

    :cond_298
    move v2, v1

    .line 523
    goto/16 :goto_1a9

    .line 534
    :cond_29b
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/j;->c:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2a9

    .line 535
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->c:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    goto/16 :goto_1d1

    .line 536
    :cond_2a9
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/j;->d:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2b7

    .line 537
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->d:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    goto/16 :goto_1d1

    .line 539
    :cond_2b7
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_2bb} :catch_26b

    goto/16 :goto_1d1

    :cond_2bd
    move v2, v1

    .line 544
    goto/16 :goto_1e0

    :cond_2c0
    move v2, v1

    .line 548
    goto/16 :goto_1f1

    :cond_2c3
    move v2, v1

    .line 557
    goto/16 :goto_210

    :cond_2c6
    move v0, v1

    .line 582
    goto :goto_259
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    .line 81
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/a;->a:Lcom/ss/android/socialbase/downloader/b/a;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    .line 89
    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 93
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 94
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 107
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/b;->a:Lcom/ss/android/socialbase/downloader/b/b;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    .line 109
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->al:Ljava/util/concurrent/atomic/AtomicLong;

    .line 117
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    .line 120
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    .line 352
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Landroid/os/Parcel;)V

    .line 353
    return-void
.end method

.method private constructor <init>(Lcom/ss/android/socialbase/downloader/g/c$a;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 80
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    .line 81
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/a;->a:Lcom/ss/android/socialbase/downloader/b/a;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    .line 89
    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 93
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 94
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 107
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/b;->a:Lcom/ss/android/socialbase/downloader/b/b;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    .line 109
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->al:Ljava/util/concurrent/atomic/AtomicLong;

    .line 117
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    .line 120
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    .line 163
    if-nez p1, :cond_2d

    .line 208
    :cond_2c
    :goto_2c
    return-void

    .line 165
    :cond_2d
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->b(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->c(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->d(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->e(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    .line 172
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->f(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->g(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    .line 174
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->h(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->i:Ljava/util/List;

    .line 175
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->i(Lcom/ss/android/socialbase/downloader/g/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->j:I

    .line 176
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->j(Lcom/ss/android/socialbase/downloader/g/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    .line 177
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->k(Lcom/ss/android/socialbase/downloader/g/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    .line 178
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->l(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    .line 179
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->m(Lcom/ss/android/socialbase/downloader/g/c$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->k:[Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->n(Lcom/ss/android/socialbase/downloader/g/c$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->l:[I

    .line 181
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->o(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->p:Z

    .line 182
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->p(Lcom/ss/android/socialbase/downloader/g/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->q:I

    .line 183
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->q(Lcom/ss/android/socialbase/downloader/g/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->r:I

    .line 184
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->r(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    .line 185
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->s(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    .line 186
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->t(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->u(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    .line 188
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->v(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    .line 189
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->w(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->x(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    .line 191
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->y(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ac:Z

    .line 192
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->z(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    .line 193
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->A(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    .line 194
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->B(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->C(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->D(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    .line 197
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->E(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    .line 198
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->F(Lcom/ss/android/socialbase/downloader/g/c$a;)Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    .line 199
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->G(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->H:Z

    .line 200
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->H(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->I:Z

    .line 201
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->I(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    .line 202
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->J(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ar:Z

    .line 203
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->K(Lcom/ss/android/socialbase/downloader/g/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    .line 204
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/c$a;->L(Lcom/ss/android/socialbase/downloader/g/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_2c

    .line 206
    const-string v1, "download_setting"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2c
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/g/c$a;Lcom/ss/android/socialbase/downloader/g/c$1;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/g/c;-><init>(Lcom/ss/android/socialbase/downloader/g/c$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 920
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 924
    :goto_8
    return-void

    .line 921
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 1328
    if-nez p1, :cond_3

    .line 1348
    :cond_2
    :goto_2
    return-void

    .line 1332
    :cond_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1335
    :try_start_6
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1336
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1338
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1339
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    .line 1343
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2a

    goto :goto_a

    .line 1345
    :catch_2a
    move-exception v0

    goto :goto_2
.end method

.method private bh()Ljava/lang/String;
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->au:Ljava/lang/String;

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 287
    :try_start_10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 290
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_1b

    .line 294
    :catch_31
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->au:Ljava/lang/String;

    if-nez v0, :cond_3d

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->au:Ljava/lang/String;

    .line 301
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->au:Ljava/lang/String;

    return-object v0

    .line 293
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->au:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_46} :catch_31

    goto :goto_35
.end method

.method private bi()V
    .registers 3

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    if-nez v0, :cond_15

    .line 1313
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1314
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    .line 1322
    :cond_15
    :goto_15
    return-void

    .line 1316
    :cond_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 1318
    :catch_1e
    move-exception v0

    .line 1319
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    goto :goto_15
.end method

.method private bj()V
    .registers 5

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    if-nez v0, :cond_38

    .line 1710
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 1711
    if-eqz v0, :cond_2d

    .line 1712
    const-string v1, "sp_download_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1713
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1716
    :try_start_26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2d} :catch_39

    .line 1722
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    if-nez v0, :cond_38

    .line 1723
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    .line 1726
    :cond_38
    return-void

    .line 1717
    :catch_39
    move-exception v0

    .line 1718
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method private bk()V
    .registers 2

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aA:Landroid/os/Bundle;

    if-nez v0, :cond_11

    .line 1879
    monitor-enter p0

    .line 1880
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aA:Landroid/os/Bundle;

    if-nez v0, :cond_10

    .line 1881
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aA:Landroid/os/Bundle;

    .line 1883
    :cond_10
    monitor-exit p0

    .line 1885
    :cond_11
    return-void

    .line 1883
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private i(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 324
    :cond_6
    :goto_6
    return-void

    .line 308
    :cond_7
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->au:Ljava/lang/String;

    .line 310
    :try_start_9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 314
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 316
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 319
    :cond_30
    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_33

    goto :goto_6

    .line 321
    :catch_33
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private m(I)V
    .registers 3

    .prologue
    .line 356
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->b:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 357
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->b:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    .line 362
    :goto_c
    return-void

    .line 358
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->c:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 359
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->c:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    goto :goto_c

    .line 361
    :cond_1a
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    goto :goto_c
.end method

.method private n(I)V
    .registers 3

    .prologue
    .line 365
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 366
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 373
    :goto_c
    return-void

    .line 367
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->c:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 368
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->c:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    goto :goto_c

    .line 369
    :cond_1a
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->d:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_27

    .line 370
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->d:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    goto :goto_c

    .line 372
    :cond_27
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    goto :goto_c
.end method

.method private n(Z)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 862
    if-eqz p1, :cond_35

    const/4 v0, 0x1

    .line 863
    :goto_4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_3d

    .line 864
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-nez v2, :cond_37

    .line 865
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    .line 869
    :goto_1b
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    .line 870
    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    .line 871
    :goto_1f
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 872
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_35
    move v0, v1

    .line 862
    goto :goto_4

    .line 867
    :cond_37
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1b

    .line 875
    :cond_3d
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public C()I
    .registers 2

    .prologue
    .line 813
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->j:I

    return v0
.end method

.method public D()I
    .registers 2

    .prologue
    .line 825
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    return v0
.end method

.method public E()I
    .registers 2

    .prologue
    .line 829
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    return v0
.end method

.method public F()I
    .registers 4

    .prologue
    .line 833
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    .line 834
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 835
    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 837
    :cond_18
    return v0
.end method

.method public G()I
    .registers 4

    .prologue
    .line 841
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    .line 842
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v1, :cond_13

    .line 843
    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    add-int/2addr v0, v1

    .line 844
    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    if-lez v1, :cond_13

    .line 845
    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 849
    :cond_13
    return v0
.end method

.method public H()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 4

    .prologue
    .line 878
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    .line 879
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-nez v0, :cond_25

    .line 880
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 891
    :cond_24
    :goto_24
    return-object v1

    .line 882
    :cond_25
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    if-ltz v0, :cond_55

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 883
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 884
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    :goto_53
    move-object v1, v0

    .line 886
    goto :goto_24

    :cond_55
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    if-eqz v0, :cond_24

    .line 887
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    const-string v1, "https"

    const-string v2, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_7a
    move-object v0, v1

    goto :goto_53
.end method

.method public J()Z
    .registers 2

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    return v0
.end method

.method public K()Ljava/lang/String;
    .registers 4

    .prologue
    .line 899
    const-string v1, ""

    .line 900
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 901
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 902
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 905
    :goto_30
    return-object v0

    :cond_31
    move-object v0, v1

    goto :goto_30
.end method

.method public L()V
    .registers 5

    .prologue
    .line 912
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->X:J

    .line 913
    const-string v0, "dbjson_last_start_download_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 914
    return-void
.end method

.method public M()Ljava/lang/String;
    .registers 3

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 928
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "download_setting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()I
    .registers 4

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 933
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "retry_schedule_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public O()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 958
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 959
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v3, "rw_concurrent"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public P()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 963
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->X:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    .line 970
    :cond_8
    :goto_8
    return-void

    .line 965
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->X:J

    sub-long/2addr v0, v2

    .line 966
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    .line 967
    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    .line 968
    :cond_18
    cmp-long v2, v0, v4

    if-lez v2, :cond_8

    .line 969
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    goto :goto_8
.end method

.method public Q()V
    .registers 5

    .prologue
    .line 973
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 974
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    .line 976
    :cond_e
    return-void
.end method

.method public R()V
    .registers 3

    .prologue
    .line 979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    .line 980
    return-void
.end method

.method public S()Z
    .registers 2

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    return v0
.end method

.method public T()Z
    .registers 2

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    return v0
.end method

.method public U()Z
    .registers 2

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->H:Z

    return v0
.end method

.method public V()Z
    .registers 2

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->I:Z

    return v0
.end method

.method public W()Z
    .registers 2

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    return v0
.end method

.method public X()Z
    .registers 2

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ar:Z

    return v0
.end method

.method public Y()Z
    .registers 2

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    return v0
.end method

.method public Z()J
    .registers 3

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_b

    .line 1038
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1040
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 939
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "retry_schedule_count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 943
    :goto_a
    return-void

    .line 940
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_a

    .line 1045
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1048
    :goto_9
    return-void

    .line 1047
    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_9
.end method

.method public a(JZ)V
    .registers 7

    .prologue
    .line 1051
    if-eqz p3, :cond_6

    .line 1052
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->a(J)V

    .line 1058
    :cond_5
    :goto_5
    return-void

    .line 1054
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    .line 1055
    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    .line 1056
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->a(J)V

    goto :goto_5
.end method

.method public a(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 638
    if-nez p1, :cond_7

    .line 680
    :goto_6
    return-void

    .line 641
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    .line 642
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 643
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 644
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    if-nez v0, :cond_209

    const-string v0, ""

    :goto_25
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 645
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    if-nez v0, :cond_20d

    const-string v0, ""

    :goto_34
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 646
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    if-nez v0, :cond_211

    const-string v0, ""

    :goto_43
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 647
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    if-nez v0, :cond_215

    const-string v0, ""

    :goto_52
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 648
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 649
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 650
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 651
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 652
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    if-nez v0, :cond_219

    const-string v0, ""

    :goto_93
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 653
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    if-eqz v0, :cond_21d

    move-wide v0, v2

    :goto_a1
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 654
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    if-eqz v0, :cond_220

    move-wide v0, v2

    :goto_af
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 655
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 656
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    if-nez v0, :cond_223

    const-string v0, ""

    :goto_ca
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 657
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    if-nez v0, :cond_227

    const-string v0, ""

    :goto_d9
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 658
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    if-nez v0, :cond_22b

    const-string v0, ""

    :goto_e8
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 659
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    if-eqz v0, :cond_22f

    move-wide v0, v2

    :goto_f6
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 660
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 661
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    if-eqz v0, :cond_232

    move-wide v0, v2

    :goto_110
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 662
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    if-eqz v0, :cond_235

    move-wide v0, v2

    :goto_11e
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 663
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    if-eqz v0, :cond_238

    move-wide v0, v2

    :goto_12c
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 664
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 665
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    if-nez v0, :cond_23b

    const-string v0, ""

    :goto_146
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 666
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    if-nez v0, :cond_23f

    const-string v0, ""

    :goto_155
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 667
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    if-eqz v0, :cond_243

    move-wide v0, v2

    :goto_163
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 668
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 669
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 670
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    if-eqz v0, :cond_246

    move-wide v0, v2

    :goto_18d
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 671
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    if-eqz v0, :cond_249

    move-wide v0, v2

    :goto_19b
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 672
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    if-nez v0, :cond_24c

    const-string v0, ""

    :goto_1aa
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 673
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    if-eqz v0, :cond_250

    move-wide v0, v2

    :goto_1b8
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 674
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 675
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 676
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 677
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aw:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 678
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    if-eqz v1, :cond_253

    :goto_1f5
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 679
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    if-nez v0, :cond_255

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;

    :goto_204
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 644
    :cond_209
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    goto/16 :goto_25

    .line 645
    :cond_20d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    goto/16 :goto_34

    .line 646
    :cond_211
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    goto/16 :goto_43

    .line 647
    :cond_215
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    goto/16 :goto_52

    .line 652
    :cond_219
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    goto/16 :goto_93

    :cond_21d
    move-wide v0, v4

    .line 653
    goto/16 :goto_a1

    :cond_220
    move-wide v0, v4

    .line 654
    goto/16 :goto_af

    .line 656
    :cond_223
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    goto/16 :goto_ca

    .line 657
    :cond_227
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    goto/16 :goto_d9

    .line 658
    :cond_22b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    goto/16 :goto_e8

    :cond_22f
    move-wide v0, v4

    .line 659
    goto/16 :goto_f6

    :cond_232
    move-wide v0, v4

    .line 661
    goto/16 :goto_110

    :cond_235
    move-wide v0, v4

    .line 662
    goto/16 :goto_11e

    :cond_238
    move-wide v0, v4

    .line 663
    goto/16 :goto_12c

    .line 665
    :cond_23b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    goto/16 :goto_146

    .line 666
    :cond_23f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    goto/16 :goto_155

    :cond_243
    move-wide v0, v4

    .line 667
    goto/16 :goto_163

    :cond_246
    move-wide v0, v4

    .line 670
    goto/16 :goto_18d

    :cond_249
    move-wide v0, v4

    .line 671
    goto/16 :goto_19b

    .line 672
    :cond_24c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    goto/16 :goto_1aa

    :cond_250
    move-wide v0, v4

    .line 673
    goto/16 :goto_1b8

    :cond_253
    move-wide v2, v4

    .line 678
    goto :goto_1f5

    .line 679
    :cond_255
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_204
.end method

.method public a(Landroid/os/Parcel;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1e1

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/e;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->i:Ljava/util/List;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->j:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->k:[Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->l:[I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1e4

    move v0, v1

    :goto_62
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1e7

    move v0, v1

    :goto_6b
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->p:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->q:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->r:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1ea

    move v0, v1

    :goto_86
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1ed

    move v0, v1

    :goto_95
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1f0

    move v0, v1

    :goto_aa
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1f3

    move v0, v1

    :goto_b3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1f6

    move v0, v1

    :goto_bc
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->n(I)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1f9

    move v0, v1

    :goto_de
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1fc

    move v0, v1

    :goto_e7
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->J:Z

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->K:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/ss/android/socialbase/downloader/g/c;->a(J)V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1ff

    move v0, v1

    :goto_128
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_202

    move v0, v1

    :goto_131
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    .line 256
    :try_start_133
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_205

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_142} :catch_21b

    .line 263
    :goto_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_221

    move v0, v1

    :goto_149
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_224

    move v0, v1

    :goto_152
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ac:Z

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_227

    move v0, v1

    :goto_15b
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ad:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_22a

    move v0, v1

    :goto_16a
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->m(I)V

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_22d

    move v0, v1

    :goto_17a
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->H:Z

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aj:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ak:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_230

    move v0, v1

    :goto_18f
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->am:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_233

    move v0, v1

    :goto_198
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ao:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_236

    move v0, v1

    :goto_1a1
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_239

    move v0, v1

    :goto_1aa
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ar:Z

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_23c

    move v0, v1

    :goto_1b3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_23f

    move v0, v1

    :goto_1bc
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->at:Z

    .line 278
    const-class v0, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->av:Lcom/ss/android/socialbase/downloader/e/a;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aw:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_242

    :goto_1de
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    .line 282
    return-void

    :cond_1e1
    move v0, v2

    .line 217
    goto/16 :goto_2d

    :cond_1e4
    move v0, v2

    .line 225
    goto/16 :goto_62

    :cond_1e7
    move v0, v2

    .line 226
    goto/16 :goto_6b

    :cond_1ea
    move v0, v2

    .line 230
    goto/16 :goto_86

    :cond_1ed
    move v0, v2

    .line 232
    goto/16 :goto_95

    :cond_1f0
    move v0, v2

    .line 235
    goto/16 :goto_aa

    :cond_1f3
    move v0, v2

    .line 236
    goto/16 :goto_b3

    :cond_1f6
    move v0, v2

    .line 237
    goto/16 :goto_bc

    :cond_1f9
    move v0, v2

    .line 242
    goto/16 :goto_de

    :cond_1fc
    move v0, v2

    .line 243
    goto/16 :goto_e7

    :cond_1ff
    move v0, v2

    .line 253
    goto/16 :goto_128

    :cond_202
    move v0, v2

    .line 254
    goto/16 :goto_131

    .line 259
    :cond_205
    :try_start_205
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_219} :catch_21b

    goto/16 :goto_142

    .line 260
    :catch_21b
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_142

    :cond_221
    move v0, v2

    .line 263
    goto/16 :goto_149

    :cond_224
    move v0, v2

    .line 264
    goto/16 :goto_152

    :cond_227
    move v0, v2

    .line 265
    goto/16 :goto_15b

    :cond_22a
    move v0, v2

    .line 267
    goto/16 :goto_16a

    :cond_22d
    move v0, v2

    .line 269
    goto/16 :goto_17a

    :cond_230
    move v0, v2

    .line 272
    goto/16 :goto_18f

    :cond_233
    move v0, v2

    .line 273
    goto/16 :goto_198

    :cond_236
    move v0, v2

    .line 274
    goto/16 :goto_1a1

    :cond_239
    move v0, v2

    .line 275
    goto/16 :goto_1aa

    :cond_23c
    move v0, v2

    .line 276
    goto/16 :goto_1b3

    :cond_23f
    move v0, v2

    .line 277
    goto/16 :goto_1bc

    :cond_242
    move v1, v2

    .line 281
    goto :goto_1de
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/a;)V
    .registers 2

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    .line 1262
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/b;)V
    .registers 2

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    .line 1066
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/j;)V
    .registers 2

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 1254
    return-void
.end method

.method public declared-synchronized a(Lcom/ss/android/socialbase/downloader/d/ae;)V
    .registers 6

    .prologue
    .line 1464
    monitor-enter p0

    if-nez p1, :cond_5

    .line 1477
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 1467
    :cond_5
    :try_start_5
    const-string v0, "DownloadInfo"

    const-string v1, "registerTempFileSaveCallback"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;

    if-nez v0, :cond_17

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;

    .line 1470
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1471
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_24} :catch_25
    .catchall {:try_start_5 .. :try_end_24} :catchall_3a

    goto :goto_3

    .line 1473
    :catch_25
    move-exception v0

    .line 1474
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1475
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40e

    const-string v3, "registerTempFileSaveCallback"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3a

    goto :goto_3

    .line 1464
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 2

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->av:Lcom/ss/android/socialbase/downloader/e/a;

    .line 1706
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1280
    if-nez p1, :cond_4

    .line 1304
    :goto_3
    return-void

    .line 1283
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->c(I)V

    .line 1284
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->c(J)V

    .line 1285
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 1286
    iget-wide v0, p1, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    .line 1287
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->as()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->as()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1288
    iput v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    .line 1289
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->ao:Z

    .line 1290
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    .line 1291
    iput v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    .line 1292
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    .line 1296
    :goto_34
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->b(Ljava/lang/String;)V

    .line 1297
    if-eqz p2, :cond_44

    .line 1298
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 1299
    :cond_44
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 1300
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->az()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 1302
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aq()Lcom/ss/android/socialbase/downloader/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    .line 1303
    iget-object v0, p1, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 1294
    :cond_5c
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->al()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    goto :goto_34
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 348
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ai:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 857
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    .line 858
    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/g/c;->n(Z)V

    .line 859
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 762
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    .line 763
    return-void
.end method

.method public declared-synchronized a(ZLcom/ss/android/socialbase/downloader/e/a;)V
    .registers 6

    .prologue
    .line 1564
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->am:Z

    .line 1565
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_4c

    if-nez v0, :cond_a

    .line 1579
    :cond_8
    monitor-exit p0

    return-void

    .line 1568
    :cond_a
    :try_start_a
    const-string v0, "DownloadInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTempSaveCallback isSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->an:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1570
    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1571
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/ae;

    .line 1572
    if-eqz v0, :cond_38

    .line 1573
    if-eqz p1, :cond_4f

    .line 1574
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/ae;->a()V
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_4c

    goto :goto_38

    .line 1564
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1576
    :cond_4f
    :try_start_4f
    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/d/ae;->a(Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    goto :goto_38
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->al:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 336
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1359
    if-nez p1, :cond_4

    .line 1361
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public aA()Z
    .registers 2

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public aC()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    return-object v0
.end method

.method public aD()Z
    .registers 3

    .prologue
    .line 1385
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(J)Z

    move-result v0

    return v0
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 1389
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->p:Z

    return v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 1396
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->q:I

    return v0
.end method

.method public aG()I
    .registers 3

    .prologue
    const/16 v0, 0x3e8

    .line 1408
    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->r:I

    .line 1409
    if-ge v1, v0, :cond_7

    .line 1411
    :goto_6
    return v0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public aH()Z
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public aI()Z
    .registers 2

    .prologue
    .line 1419
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    return v0
.end method

.method public aJ()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1429
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v0, :cond_c

    .line 1430
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    .line 1431
    :cond_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    if-gez v0, :cond_24

    :cond_1c
    move v0, v2

    .line 1442
    :goto_1d
    return v0

    .line 1439
    :cond_1e
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    .line 1433
    :cond_24
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 1434
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    iget v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1436
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    move v0, v1

    .line 1437
    goto :goto_1d

    :cond_42
    move v0, v2

    .line 1442
    goto :goto_1d
.end method

.method public aK()Z
    .registers 3

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    if-ltz v0, :cond_22

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    .line 1452
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    .line 1451
    :goto_21
    return v0

    .line 1452
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public aL()Z
    .registers 3

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public aM()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 1490
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 1491
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    .line 1492
    iput v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 1493
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    .line 1494
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    .line 1495
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    .line 1496
    return-void
.end method

.method public aN()Z
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 1499
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aH()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1515
    :cond_9
    :goto_9
    return v0

    .line 1502
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1504
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 1506
    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    .line 1510
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1512
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    .line 1513
    cmp-long v1, v2, v8

    if-lez v1, :cond_9

    cmp-long v1, v4, v8

    if-lez v1, :cond_9

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_9

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    if-lez v1, :cond_9

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_9

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_9

    .line 1515
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public aO()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1533
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    if-le v0, v4, :cond_46

    .line 1534
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    .line 1535
    if-eqz v0, :cond_46

    .line 1536
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v2

    .line 1537
    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    if-eq v0, v1, :cond_1f

    .line 1538
    :cond_1d
    const/4 v0, 0x0

    .line 1552
    :goto_1e
    return v0

    .line 1540
    :cond_1f
    const-wide/16 v0, 0x0

    .line 1541
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 1542
    if-eqz v0, :cond_48

    .line 1543
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->o()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_39
    move-wide v2, v0

    .line 1545
    goto :goto_26

    .line 1546
    :cond_3b
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_46

    .line 1547
    invoke-virtual {p0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/c;->a(J)V

    :cond_46
    move v0, v4

    .line 1552
    goto :goto_1e

    :cond_48
    move-wide v0, v2

    goto :goto_39
.end method

.method public declared-synchronized aP()Z
    .registers 2

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->am:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aQ()Z
    .registers 2

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aN()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1587
    const/4 v0, 0x0

    .line 1588
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aO()Z

    move-result v0

    goto :goto_7
.end method

.method public aR()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1592
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    if-nez v1, :cond_6

    .line 1598
    :cond_5
    :goto_5
    return v0

    .line 1595
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1597
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public aS()Lcom/ss/android/socialbase/downloader/b/i;
    .registers 4

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v0

    return-object v0
.end method

.method public aT()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1607
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    .line 1608
    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    const/16 v2, 0x8

    if-eq v1, v2, :cond_24

    if-eq v1, v0, :cond_1a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 1612
    :cond_1a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_25

    .line 1608
    :cond_24
    :goto_24
    return v0

    .line 1612
    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public aU()Z
    .registers 2

    .prologue
    .line 1616
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    .line 1617
    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aV()I
    .registers 2

    .prologue
    .line 1621
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    return v0
.end method

.method public aW()Lcom/ss/android/socialbase/downloader/e/a;
    .registers 2

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->av:Lcom/ss/android/socialbase/downloader/e/a;

    return-object v0
.end method

.method public aX()V
    .registers 4

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 1737
    :cond_4
    :goto_4
    return-void

    .line 1732
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_4

    .line 1734
    const-string v1, "sp_download_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1735
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method public aY()V
    .registers 4

    .prologue
    .line 1740
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 1741
    if-eqz v0, :cond_20

    .line 1743
    :try_start_6
    const-string v1, "sp_download_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1744
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_20} :catch_21

    .line 1750
    :cond_20
    :goto_20
    return-void

    .line 1745
    :catch_21
    move-exception v0

    .line 1746
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20
.end method

.method public aZ()I
    .registers 4

    .prologue
    .line 1753
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1754
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "failed_resume_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aa()Lcom/ss/android/socialbase/downloader/b/b;
    .registers 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    return-object v0
.end method

.method public ab()J
    .registers 3

    .prologue
    .line 1116
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    return-wide v0
.end method

.method public ac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->K:Ljava/lang/String;

    return-object v0
.end method

.method public ae()I
    .registers 2

    .prologue
    .line 1137
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    return v0
.end method

.method public af()Z
    .registers 2

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    if-nez v0, :cond_14

    :cond_8
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ac:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ad:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public ag()Z
    .registers 2

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    return v0
.end method

.method public ah()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public ai()Z
    .registers 2

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    return v0
.end method

.method public aj()Z
    .registers 2

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    return v0
.end method

.method public ak()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public al()I
    .registers 2

    .prologue
    .line 1202
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    return v0
.end method

.method public am()Z
    .registers 2

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ao:Z

    return v0
.end method

.method public an()V
    .registers 2

    .prologue
    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ao:Z

    .line 1211
    return-void
.end method

.method public ao()Z
    .registers 2

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    return v0
.end method

.method public ap()Z
    .registers 2

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->at:Z

    return v0
.end method

.method public aq()Lcom/ss/android/socialbase/downloader/b/j;
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    return-object v0
.end method

.method public ar()Lcom/ss/android/socialbase/downloader/b/a;
    .registers 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    return-object v0
.end method

.method public as()Z
    .registers 4

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    .line 1231
    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    if-eq v1, v2, :cond_23

    const/16 v1, 0x8

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/a;->b:Lcom/ss/android/socialbase/downloader/b/a;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/a;->c:Lcom/ss/android/socialbase/downloader/b/a;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->b:Lcom/ss/android/socialbase/downloader/b/b;

    if-ne v0, v1, :cond_25

    :cond_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public at()V
    .registers 4

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    .line 1239
    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    if-ne v1, v2, :cond_12

    .line 1240
    :cond_d
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/j;->c:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/j;)V

    .line 1241
    :cond_12
    const/16 v1, 0x8

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/a;->b:Lcom/ss/android/socialbase/downloader/b/a;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/a;->c:Lcom/ss/android/socialbase/downloader/b/a;

    if-ne v0, v1, :cond_27

    .line 1243
    :cond_22
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/a;->d:Lcom/ss/android/socialbase/downloader/b/a;

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/a;)V

    .line 1244
    :cond_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->af:Lcom/ss/android/socialbase/downloader/b/b;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/b;->b:Lcom/ss/android/socialbase/downloader/b/b;

    if-ne v0, v1, :cond_32

    .line 1245
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/b;->c:Lcom/ss/android/socialbase/downloader/b/b;

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V

    .line 1246
    :cond_32
    return-void
.end method

.method public au()Z
    .registers 3

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/j;->b:Lcom/ss/android/socialbase/downloader/b/j;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public av()Z
    .registers 3

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->G:Lcom/ss/android/socialbase/downloader/b/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/a;->b:Lcom/ss/android/socialbase/downloader/b/a;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public aw()J
    .registers 3

    .prologue
    .line 1272
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    return-wide v0
.end method

.method public ax()J
    .registers 5

    .prologue
    .line 1276
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ay()Z
    .registers 2

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    return v0
.end method

.method public az()Z
    .registers 2

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    return v0
.end method

.method public b()V
    .registers 5

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->al:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 341
    return-void
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_a

    .line 1098
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1101
    :goto_9
    return-void

    .line 1100
    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_9
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1078
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    .line 1082
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ad:Z

    .line 779
    return-void
.end method

.method public ba()J
    .registers 5

    .prologue
    .line 1767
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1768
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "last_failed_resume_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bb()I
    .registers 4

    .prologue
    .line 1781
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1782
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "uninstall_resume_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bc()J
    .registers 5

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1796
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "last_uninstall_resume_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bd()J
    .registers 5

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1813
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "dbjson_last_start_download_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public be()Z
    .registers 4

    .prologue
    .line 1838
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1839
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "is_save_path_redirected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bf()I
    .registers 4

    .prologue
    .line 1864
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1865
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "dbjson_key_preconnect_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bg()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1888
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bk()V

    .line 1889
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aA:Landroid/os/Bundle;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 1132
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    .line 1133
    return-void
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 1093
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    .line 1094
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    .line 1086
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 793
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    .line 794
    return-void
.end method

.method public d(J)J
    .registers 8

    .prologue
    .line 1400
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->q:I

    .line 1401
    if-gtz v0, :cond_6

    .line 1402
    const/16 v0, 0x64

    .line 1403
    :cond_6
    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 1404
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_14

    const-wide/32 v0, 0x100000

    :cond_14
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 412
    :cond_c
    const-string v0, ""

    .line 413
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 1141
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    .line 1142
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    .line 1113
    return-void
.end method

.method public d(Z)V
    .registers 5

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v2, "rw_concurrent"

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_10

    .line 952
    :goto_d
    return-void

    .line 948
    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    .line 949
    :catch_10
    move-exception v0

    goto :goto_d
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1626
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 596
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 597
    const-string v0, "_id"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v0, "url"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "savePath"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "tempPath"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "name"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "chunkCount"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    const-string v0, "status"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v0, "curBytes"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 605
    const-string v0, "totalBytes"

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string v0, "eTag"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v4, "onlyWifi"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    if-eqz v0, :cond_199

    move v0, v1

    :goto_6c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v4, "force"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    if-eqz v0, :cond_19c

    move v0, v1

    :goto_7a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v0, "retryCount"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v0, "extra"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "mimeType"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "title"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v4, "notificationEnable"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    if-eqz v0, :cond_19f

    move v0, v1

    :goto_a8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string v0, "notificationVisibility"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const-string v4, "isFirstDownload"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    if-eqz v0, :cond_1a2

    move v0, v1

    :goto_c1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v4, "isFirstSuccess"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    if-eqz v0, :cond_1a5

    move v0, v1

    :goto_cf
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v4, "needHttpsToHttpRetry"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    if-eqz v0, :cond_1a8

    move v0, v1

    :goto_dd
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v0, "downloadTime"

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    const-string v0, "packageName"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "md5"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v4, "retryDelay"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    if-eqz v0, :cond_1ab

    move v0, v1

    :goto_104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v0, "curRetryTime"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const-string v0, "retryDelayStatus"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const-string v4, "defaultHttpServiceBackUp"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    if-eqz v0, :cond_1ae

    move v0, v1

    :goto_12c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v4, "chunkRunnableReuse"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    if-eqz v0, :cond_1b1

    move v0, v1

    :goto_13a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v0, "retryDelayTimeArray"

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v4, "chunkDowngradeRetry"

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    if-eqz v0, :cond_1b3

    move v0, v1

    :goto_14f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v0, "backUpUrlsStr"

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "backUpUrlRetryCount"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v0, "realDownloadTime"

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    const-string v0, "retryScheduleMinutes"

    iget v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->aw:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const-string v0, "independentProcess"

    iget-boolean v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    if-eqz v4, :cond_1b5

    :goto_186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    const-string v1, "auxiliaryJsonobjectString"

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    if-nez v0, :cond_1b7

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;

    :goto_195
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-object v3

    :cond_199
    move v0, v2

    .line 607
    goto/16 :goto_6c

    :cond_19c
    move v0, v2

    .line 608
    goto/16 :goto_7a

    :cond_19f
    move v0, v2

    .line 613
    goto/16 :goto_a8

    :cond_1a2
    move v0, v2

    .line 615
    goto/16 :goto_c1

    :cond_1a5
    move v0, v2

    .line 616
    goto/16 :goto_cf

    :cond_1a8
    move v0, v2

    .line 617
    goto/16 :goto_dd

    :cond_1ab
    move v0, v2

    .line 621
    goto/16 :goto_104

    :cond_1ae
    move v0, v2

    .line 624
    goto/16 :goto_12c

    :cond_1b1
    move v0, v2

    .line 625
    goto :goto_13a

    :cond_1b3
    move v0, v2

    .line 627
    goto :goto_14f

    :cond_1b5
    move v1, v2

    .line 632
    goto :goto_186

    .line 633
    :cond_1b7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_195
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 1157
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->aj:I

    .line 1158
    return-void
.end method

.method public e(J)V
    .registers 6

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1774
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "last_failed_resume_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 1778
    :goto_a
    return-void

    .line 1775
    :catch_b
    move-exception v0

    .line 1776
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->K:Ljava/lang/String;

    .line 1129
    return-void
.end method

.method public e(Z)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 984
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_11

    .line 985
    if-eqz p1, :cond_10

    .line 986
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    .line 1001
    :cond_10
    :goto_10
    return-void

    .line 991
    :cond_11
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    sub-long v2, v0, v2

    .line 992
    if-eqz p1, :cond_23

    .line 993
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    .line 998
    :goto_19
    cmp-long v0, v2, v4

    if-lez v0, :cond_10

    .line 999
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    goto :goto_10

    .line 995
    :cond_23
    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    goto :goto_19
.end method

.method public f()I
    .registers 2

    .prologue
    .line 683
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aa:I

    return v0
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    .line 1266
    :goto_6
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    .line 1267
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    if-gez v0, :cond_10

    .line 1268
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    .line 1269
    :cond_10
    return-void

    .line 1265
    :cond_11
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    goto :goto_6
.end method

.method public f(J)V
    .registers 6

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1802
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "last_uninstall_resume_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 1806
    :goto_a
    return-void

    .line 1803
    :catch_b
    move-exception v0

    .line 1804
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ak:Ljava/lang/String;

    .line 1166
    return-void
.end method

.method public f(Z)V
    .registers 2

    .prologue
    .line 1069
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->R:Z

    .line 1070
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 687
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    if-nez v0, :cond_a

    .line 688
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/g/c;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    .line 689
    :cond_a
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    return v0
.end method

.method public g(I)V
    .registers 2

    .prologue
    .line 1365
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    .line 1366
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    .line 1179
    return-void
.end method

.method public g(Z)V
    .registers 2

    .prologue
    .line 1073
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->S:Z

    .line 1074
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(I)V
    .registers 4

    .prologue
    .line 1758
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1760
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "failed_resume_count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 1764
    :goto_a
    return-void

    .line 1761
    :catch_b
    move-exception v0

    .line 1762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public h(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 1480
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->a(JZ)V

    .line 1481
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->c(J)V

    .line 1482
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/c;->b(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->c(I)V

    .line 1484
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    .line 1485
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Y:J

    .line 1486
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    .line 1487
    return-void
.end method

.method public h(Z)V
    .registers 2

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    .line 1105
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 698
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    .line 700
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    goto :goto_a
.end method

.method public i(I)V
    .registers 4

    .prologue
    .line 1786
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bj()V

    .line 1788
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ax:Lorg/json/JSONObject;

    const-string v1, "uninstall_resume_count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 1792
    :goto_a
    return-void

    .line 1789
    :catch_b
    move-exception v0

    .line 1790
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public i(Z)V
    .registers 2

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->J:Z

    .line 1150
    return-void
.end method

.method public j(I)I
    .registers 4

    .prologue
    .line 1821
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1822
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "anti_hijack_error_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .registers 2

    .prologue
    .line 1460
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    .line 1461
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)V
    .registers 4

    .prologue
    .line 1826
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1828
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "anti_hijack_error_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 1832
    :goto_a
    return-void

    .line 1829
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public declared-synchronized k(Z)V
    .registers 3

    .prologue
    .line 1560
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->am:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1561
    monitor-exit p0

    return-void

    .line 1560
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(I)V
    .registers 4

    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1870
    const-string v0, "dbjson_key_preconnect_level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1871
    return-void
.end method

.method public l(Z)V
    .registers 2

    .prologue
    .line 1582
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c;->at:Z

    .line 1583
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Z)V
    .registers 4

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/g/c;->bi()V

    .line 1846
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    const-string v1, "is_save_path_redirected"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 1850
    :goto_a
    return-void

    .line 1847
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    return v0
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    return v0
.end method

.method public q()I
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_f

    .line 737
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 738
    const/4 v1, -0x5

    if-ne v0, v1, :cond_e

    .line 739
    const/4 v0, -0x2

    .line 742
    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public r()Lcom/ss/android/socialbase/downloader/b/g;
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    return-object v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 750
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    return v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", savePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    return v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ad:Z

    return v0
.end method

.method public w()I
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_b

    .line 783
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 785
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1631
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1634
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1637
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    if-eqz v0, :cond_1bc

    move v0, v1

    :goto_25
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1638
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1640
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->k:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->l:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1643
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->o:Z

    if-eqz v0, :cond_1bf

    move v0, v1

    :goto_51
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1646
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->p:Z

    if-eqz v0, :cond_1c2

    move v0, v1

    :goto_5a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1647
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->s:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1650
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->t:Z

    if-eqz v0, :cond_1c5

    move v0, v1

    :goto_72
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1651
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1652
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->v:Z

    if-eqz v0, :cond_1c8

    move v0, v1

    :goto_80
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1653
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1655
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->y:Z

    if-eqz v0, :cond_1cb

    move v0, v1

    :goto_93
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1656
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->A:Z

    if-eqz v0, :cond_1ce

    move v0, v1

    :goto_9c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1657
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->B:Z

    if-eqz v0, :cond_1d1

    move v0, v1

    :goto_a5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1658
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1659
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1660
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->E:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->F:Z

    if-eqz v0, :cond_1d4

    move v0, v1

    :goto_c6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1663
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->J:Z

    if-eqz v0, :cond_1d7

    move v0, v1

    :goto_cf
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1664
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1665
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->M:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->N:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1669
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->P:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1670
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->T:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1672
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/c;->U:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1673
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->V:Z

    if-eqz v0, :cond_1da

    move v0, v1

    :goto_109
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1674
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->W:Z

    if-eqz v0, :cond_1dd

    move v0, v1

    :goto_112
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1675
    const-string v0, ""

    .line 1676
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_122

    .line 1677
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->Z:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1678
    :cond_122
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ab:Z

    if-eqz v0, :cond_1e0

    move v0, v1

    :goto_12a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1680
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ac:Z

    if-eqz v0, :cond_1e3

    move v0, v1

    :goto_133
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1681
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ad:Z

    if-eqz v0, :cond_1e6

    move v0, v1

    :goto_13c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1682
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ae:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1683
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ag:Z

    if-eqz v0, :cond_1e9

    move v0, v1

    :goto_14a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1684
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ah:Lcom/ss/android/socialbase/downloader/b/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->H:Z

    if-eqz v0, :cond_1ec

    move v0, v1

    :goto_15c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1686
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ak:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1688
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->am:Z

    if-eqz v0, :cond_1ef

    move v0, v1

    :goto_16f
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1689
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ao:Z

    if-eqz v0, :cond_1f2

    move v0, v1

    :goto_178
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1690
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aq:Z

    if-eqz v0, :cond_1f4

    move v0, v1

    :goto_181
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1691
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ar:Z

    if-eqz v0, :cond_1f6

    move v0, v1

    :goto_18a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1692
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->as:Z

    if-eqz v0, :cond_1f8

    move v0, v1

    :goto_193
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1693
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->at:Z

    if-eqz v0, :cond_1fa

    move v0, v1

    :goto_19c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1694
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->av:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1695
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->aw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    if-nez v0, :cond_1fc

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->az:Ljava/lang/String;

    :goto_1b0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1697
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ap:Z

    if-eqz v0, :cond_203

    :goto_1b7
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1698
    return-void

    :cond_1bc
    move v0, v2

    .line 1637
    goto/16 :goto_25

    :cond_1bf
    move v0, v2

    .line 1645
    goto/16 :goto_51

    :cond_1c2
    move v0, v2

    .line 1646
    goto/16 :goto_5a

    :cond_1c5
    move v0, v2

    .line 1650
    goto/16 :goto_72

    :cond_1c8
    move v0, v2

    .line 1652
    goto/16 :goto_80

    :cond_1cb
    move v0, v2

    .line 1655
    goto/16 :goto_93

    :cond_1ce
    move v0, v2

    .line 1656
    goto/16 :goto_9c

    :cond_1d1
    move v0, v2

    .line 1657
    goto/16 :goto_a5

    :cond_1d4
    move v0, v2

    .line 1662
    goto/16 :goto_c6

    :cond_1d7
    move v0, v2

    .line 1663
    goto/16 :goto_cf

    :cond_1da
    move v0, v2

    .line 1673
    goto/16 :goto_109

    :cond_1dd
    move v0, v2

    .line 1674
    goto/16 :goto_112

    :cond_1e0
    move v0, v2

    .line 1679
    goto/16 :goto_12a

    :cond_1e3
    move v0, v2

    .line 1680
    goto/16 :goto_133

    :cond_1e6
    move v0, v2

    .line 1681
    goto/16 :goto_13c

    :cond_1e9
    move v0, v2

    .line 1683
    goto/16 :goto_14a

    :cond_1ec
    move v0, v2

    .line 1685
    goto/16 :goto_15c

    :cond_1ef
    move v0, v2

    .line 1688
    goto/16 :goto_16f

    :cond_1f2
    move v0, v2

    .line 1689
    goto :goto_178

    :cond_1f4
    move v0, v2

    .line 1690
    goto :goto_181

    :cond_1f6
    move v0, v2

    .line 1691
    goto :goto_18a

    :cond_1f8
    move v0, v2

    .line 1692
    goto :goto_193

    :cond_1fa
    move v0, v2

    .line 1693
    goto :goto_19c

    .line 1696
    :cond_1fc
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->ay:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b0

    :cond_203
    move v1, v2

    .line 1697
    goto :goto_1b7
.end method

.method public x()Z
    .registers 2

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->g:Z

    return v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c;->w:Ljava/lang/String;

    return-object v0
.end method
