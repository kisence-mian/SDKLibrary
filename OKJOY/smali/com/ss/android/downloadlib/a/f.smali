.class public Lcom/ss/android/downloadlib/a/f;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a/g;
.implements Lcom/ss/android/downloadlib/e/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/downloadlib/e/h;

.field private c:Lcom/ss/android/downloadlib/a/h;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ss/android/a/a/c/e;

.field private g:Lcom/ss/android/socialbase/downloader/g/c;

.field private h:Lcom/ss/android/downloadlib/a/f$a;

.field private final i:Lcom/ss/android/socialbase/downloader/d/w;

.field private j:Z

.field private k:J

.field private l:J

.field private m:Lcom/ss/android/a/a/b/c;

.field private n:Lcom/ss/android/a/a/b/b;

.field private o:Lcom/ss/android/a/a/b/a;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/ss/android/downloadlib/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/ss/android/downloadlib/e/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/h;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/h$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->b:Lcom/ss/android/downloadlib/e/h;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    .line 84
    new-instance v0, Lcom/ss/android/downloadlib/a/h$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->b:Lcom/ss/android/downloadlib/e/h;

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/h$a;-><init>(Lcom/ss/android/downloadlib/e/h;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->i:Lcom/ss/android/socialbase/downloader/d/w;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    .line 92
    iput-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    .line 93
    iput-object v2, p0, Lcom/ss/android/downloadlib/a/f;->n:Lcom/ss/android/a/a/b/b;

    .line 94
    iput-object v2, p0, Lcom/ss/android/downloadlib/a/f;->o:Lcom/ss/android/a/a/b/a;

    .line 98
    new-instance v0, Lcom/ss/android/downloadlib/a/h;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/h;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a/f;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 653
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 654
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 655
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->b:Lcom/ss/android/downloadlib/e/h;

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/e/h;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/c/e;
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->p()Lcom/ss/android/a/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)V
    .registers 7

    .prologue
    .line 380
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/a/f;->p:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/h;->a(Z)I

    move-result v0

    .line 381
    packed-switch v0, :pswitch_data_32

    .line 390
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/f;->d(Z)V

    .line 393
    :goto_e
    return-void

    .line 383
    :pswitch_f
    if-eqz p1, :cond_1b

    .line 384
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 387
    :cond_1b
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    goto :goto_e

    .line 381
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method private b(I)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->i()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 372
    :goto_8
    return v0

    .line 346
    :cond_9
    const/4 v0, -0x1

    .line 347
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->y()Lcom/ss/android/a/a/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 348
    packed-switch p1, :pswitch_data_64

    .line 358
    :goto_17
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v3

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-virtual {v3, v4, v5, p1}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 360
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ss/android/downloadlib/e/d;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 361
    if-eqz v2, :cond_5a

    .line 362
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 363
    iput v0, v1, Landroid/os/Message;->what:I

    .line 364
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->b:Lcom/ss/android/downloadlib/e/h;

    invoke-static {}, Lcom/ss/android/downloadlib/a/d;->a()Lcom/ss/android/downloadlib/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/downloadlib/a/d;->b()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/ss/android/downloadlib/e/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 367
    invoke-static {}, Lcom/ss/android/downloadlib/a/d;->a()Lcom/ss/android/downloadlib/a/d;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/f;->n:Lcom/ss/android/a/a/b/b;

    invoke-virtual {v1, v0, v3, v4}, Lcom/ss/android/downloadlib/a/d;->a(ILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    :goto_54
    move v0, v2

    .line 372
    goto :goto_8

    .line 350
    :pswitch_56
    const/4 v0, 0x4

    .line 351
    goto :goto_17

    .line 353
    :pswitch_58
    const/4 v0, 0x5

    .line 354
    goto :goto_17

    .line 369
    :cond_5a
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-virtual {v0, v4, v5, v1, v1}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    goto :goto_54

    .line 348
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_56
    .end packed-switch
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/a/f;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->j()V

    return-void
.end method

.method private c(Z)V
    .registers 6

    .prologue
    .line 399
    if-eqz p1, :cond_c

    .line 400
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 402
    :cond_c
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/f;->e(Z)V

    .line 403
    return-void
.end method

.method static synthetic d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    return-object v0
.end method

.method private d(Z)V
    .registers 3

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/f;->f(Z)V

    .line 410
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/h;->b()V

    .line 411
    return-void
.end method

.method static synthetic e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    return-object v0
.end method

.method private e(Z)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 481
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    const-string v1, "performItemClickWithNewDownloader"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 482
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/h;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 483
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    const-string v1, "performItemClickWithNewDownloader ButtonClick"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/f;->f(Z)V

    .line 490
    :goto_1c
    return-void

    .line 487
    :cond_1d
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    const-string v1, "performItemClickWithNewDownloader onItemClick"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 488
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    goto :goto_1c
.end method

.method static synthetic f(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/d/w;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->i:Lcom/ss/android/socialbase/downloader/d/w;

    return-object v0
.end method

.method private f(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 496
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    const-string v1, "performButtonClickWithNewDownloader"

    invoke-static {v0, v1, v4}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 497
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_47

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->d(I)Z

    move-result v0

    if-nez v0, :cond_47

    .line 498
    :cond_29
    if-eqz p1, :cond_35

    .line 499
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 501
    :cond_35
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    const-string v1, "performButtonClickWithNewDownloader not start"

    invoke-static {v0, v1, v4}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 502
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    new-instance v1, Lcom/ss/android/downloadlib/a/f$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/a/f$2;-><init>(Lcom/ss/android/downloadlib/a/f;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/h;->a(Lcom/ss/android/a/a/a/n;)V

    .line 522
    :goto_46
    return-void

    .line 515
    :cond_47
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performButtonClickWithNewDownloader continue download, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 516
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/h;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 517
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_7f

    .line 518
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->c(Z)V

    .line 520
    :cond_7f
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;II)V

    goto :goto_46
.end method

.method static synthetic g(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/downloadlib/a/h;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    return-object v0
.end method

.method static synthetic h(Lcom/ss/android/downloadlib/a/f;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "quick_app_enable_switch"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    .line 334
    :cond_d
    :goto_d
    return v0

    .line 330
    :cond_e
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/d;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    .line 331
    invoke-static {v1}, Lcom/ss/android/downloadlib/a/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 332
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private j()V
    .registers 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->n()V

    .line 415
    return-void
.end method

.method private k()Landroid/content/Context;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 460
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 462
    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_14
.end method

.method private l()Lcom/ss/android/a/a/b/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->n:Lcom/ss/android/a/a/b/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/ss/android/a/a/b/e$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/b/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/a/a/b/e$a;->a()Lcom/ss/android/a/a/b/e;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->n:Lcom/ss/android/a/a/b/b;

    goto :goto_d
.end method

.method private m()Lcom/ss/android/a/a/b/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->o:Lcom/ss/android/a/a/b/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/ss/android/downloadad/a/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->o:Lcom/ss/android/a/a/b/a;

    goto :goto_d
.end method

.method private n()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 525
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 526
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;)V

    goto :goto_b

    .line 528
    :cond_21
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->i:Lcom/ss/android/socialbase/downloader/d/w;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a/h;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/d/w;)I

    move-result v0

    .line 529
    sget-object v1, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginDownloadWithNewDownloader id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 530
    if-eqz v0, :cond_b4

    .line 531
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-nez v1, :cond_ac

    .line 532
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/h;->c()V

    .line 536
    :goto_50
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadad/a/b/a;

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v4

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/ss/android/downloadad/a/b/a;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/downloadad/a/b/a;)V

    .line 544
    :goto_66
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/c/d;->b()Landroid/util/LongSparseArray;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 546
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/f;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a/h;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 547
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->k()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v4

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    .line 548
    sget-object v1, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginDownloadWithNewDownloader onItemClick id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 550
    :cond_ab
    return-void

    .line 534
    :cond_ac
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a/h;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_50

    .line 538
    :cond_b4
    new-instance v1, Lcom/ss/android/socialbase/downloader/g/c$a;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/g/c$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 539
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 540
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 541
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    new-instance v4, Lcom/ss/android/socialbase/downloader/e/a;

    const/4 v5, 0x2

    const-string v6, "start download failed, id=0"

    invoke-direct {v4, v5, v6}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/d/a;->a(JLcom/ss/android/socialbase/downloader/e/a;)V

    .line 542
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    goto :goto_66
.end method

.method private o()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 660
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/f$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_14

    .line 661
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    invoke-virtual {v0, v4}, Lcom/ss/android/downloadlib/a/f$a;->cancel(Z)Z

    .line 663
    :cond_14
    new-instance v0, Lcom/ss/android/downloadlib/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/downloadlib/a/f$a;-><init>(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/downloadlib/a/f$1;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    .line 664
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method private p()Lcom/ss/android/a/a/c/e;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->f:Lcom/ss/android/a/a/c/e;

    if-nez v0, :cond_b

    .line 669
    new-instance v0, Lcom/ss/android/a/a/c/e;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->f:Lcom/ss/android/a/a/c/e;

    .line 671
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->f:Lcom/ss/android/a/a/c/e;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/a/f;
    .registers 6

    .prologue
    .line 115
    if-eqz p2, :cond_18

    .line 116
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "back_use_softref_listener"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 117
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_18
    :goto_18
    return-object p0

    .line 119
    :cond_19
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method public a(Landroid/content/Context;)Lcom/ss/android/downloadlib/a/f;
    .registers 3

    .prologue
    .line 103
    if-eqz p1, :cond_9

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->d:Ljava/lang/ref/WeakReference;

    .line 106
    :cond_9
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->b(Landroid/content/Context;)V

    .line 107
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/a/f;
    .registers 6

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f;->o:Lcom/ss/android/a/a/b/a;

    .line 152
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(JLcom/ss/android/a/a/b/a;)V

    .line 153
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/a/f;
    .registers 6

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f;->n:Lcom/ss/android/a/a/b/b;

    .line 162
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->k()I

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/f;->p:Z

    .line 163
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(JLcom/ss/android/a/a/b/b;)V

    .line 164
    return-object p0

    .line 162
    :cond_1d
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/a/f;
    .registers 8

    .prologue
    const-wide/16 v4, 0x3

    .line 130
    if-eqz p1, :cond_3c

    .line 131
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/a/a/b/c;)V

    .line 132
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    .line 133
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    .line 134
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/i;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 135
    check-cast p1, Lcom/ss/android/downloadad/a/a/c;

    invoke-virtual {p1, v4, v5}, Lcom/ss/android/downloadad/a/a/c;->a(J)V

    .line 136
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/b/c;->d(J)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3c

    .line 138
    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/a/b/a;->b(J)V

    .line 139
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/a/b/e;->a(Lcom/ss/android/downloadad/a/b/a;)V

    .line 143
    :cond_3c
    return-object p0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/f;->j:Z

    .line 174
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(JLcom/ss/android/a/a/b/b;)V

    .line 175
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(JLcom/ss/android/a/a/b/a;)V

    .line 176
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/h;->a(J)V

    .line 177
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->o()V

    .line 178
    return-void
.end method

.method public a(JI)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 282
    const/4 v0, 0x2

    if-eq p3, v0, :cond_f

    if-eq p3, v4, :cond_f

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error actionType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_40

    .line 286
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2a

    .line 288
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->m:Lcom/ss/android/a/a/b/c;

    .line 289
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    .line 290
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/h;->a(J)V

    .line 295
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->k()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/a/f;->p:Z

    invoke-virtual {v0, v1, p3, v2}, Lcom/ss/android/downloadlib/a/h;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 296
    invoke-direct {p0, p3}, Lcom/ss/android/downloadlib/a/f;->b(I)Z

    move-result v0

    .line 297
    packed-switch p3, :pswitch_data_8c

    .line 314
    :cond_3f
    :goto_3f
    return-void

    .line 293
    :cond_40
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    goto :goto_2a

    .line 299
    :pswitch_44
    if-nez v0, :cond_3f

    .line 300
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownload id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tryPerformButtonClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 301
    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/a/f;->b(Z)V

    goto :goto_3f

    .line 305
    :pswitch_68
    if-nez v0, :cond_3f

    .line 306
    sget-object v0, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownload id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tryPerformItemClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 307
    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/a/f;->c(Z)V

    goto :goto_3f

    .line 297
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_44
    .end packed-switch
.end method

.method public a(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 431
    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a/f;->j:Z

    if-nez v0, :cond_8

    .line 456
    :cond_7
    :goto_7
    return-void

    .line 434
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    goto :goto_7

    .line 436
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    .line 437
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/f;->p()Lcom/ss/android/a/a/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/android/downloadlib/a/h;->a(Landroid/os/Message;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V

    goto :goto_7

    .line 440
    :pswitch_24
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 443
    :cond_34
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    .line 444
    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/a/f;->b(Z)V

    goto :goto_7

    .line 447
    :pswitch_42
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 450
    :cond_52
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    .line 451
    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/a/f;->c(Z)V

    goto :goto_7

    .line 434
    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_e
        :pswitch_24
        :pswitch_42
    .end packed-switch
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_27

    .line 220
    if-eqz p1, :cond_28

    .line 221
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_15

    .line 223
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 225
    :cond_15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(IZ)V

    .line 233
    :cond_27
    :goto_27
    return-void

    .line 227
    :cond_28
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "android.ss.intent.action.DOWNLOAD_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "extra_click_download_ids"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_27
.end method

.method public a(I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 190
    if-nez p1, :cond_72

    .line 191
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 195
    :goto_a
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 196
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/f;->j:Z

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->k:J

    .line 198
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_2f

    .line 199
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->k(I)V

    .line 201
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/f$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_42

    .line 202
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->h:Lcom/ss/android/downloadlib/a/f$a;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/f$a;->cancel(Z)Z

    .line 204
    :cond_42
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->c:Lcom/ss/android/downloadlib/a/h;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadlib/a/h;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 205
    sget-object v2, Lcom/ss/android/downloadlib/a/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbind removeCallbacksAndMessages, downloadUrl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-nez v0, :cond_7c

    const-string v0, ""

    :goto_5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 206
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->b:Lcom/ss/android/downloadlib/e/h;

    invoke-virtual {v0, v4}, Lcom/ss/android/downloadlib/e/h;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    iput-object v4, p0, Lcom/ss/android/downloadlib/a/f;->f:Lcom/ss/android/a/a/c/e;

    .line 208
    iput-object v4, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    move v0, v1

    .line 211
    :cond_71
    return v0

    .line 193
    :cond_72
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 205
    :cond_7c
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c
.end method

.method public synthetic b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/a/g;
    .registers 4

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/a/f;->a(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/ss/android/downloadlib/a/g;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/f;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/a/g;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/a/g;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/a/g;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/a/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a/f;->j:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()J
    .registers 3

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a/f;->k:J

    return-wide v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->b:Lcom/ss/android/downloadlib/e/h;

    new-instance v1, Lcom/ss/android/downloadlib/a/f$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/a/f$1;-><init>(Lcom/ss/android/downloadlib/a/f;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/e/h;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 568
    :cond_8
    :goto_8
    return-void

    .line 561
    :cond_9
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 562
    invoke-interface {v0}, Lcom/ss/android/a/a/b/d;->a()V

    goto :goto_13

    .line 565
    :cond_23
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    if-eqz v0, :cond_8

    .line 566
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f;->g:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    goto :goto_8
.end method

.method public g()V
    .registers 5

    .prologue
    .line 682
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/f;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/b/c;->f(J)V

    .line 688
    return-void
.end method
