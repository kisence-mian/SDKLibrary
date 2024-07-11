.class public Lcom/ss/android/downloadlib/addownload/f;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/g;
.implements Lcom/ss/android/downloadlib/h/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/f$b;,
        Lcom/ss/android/downloadlib/addownload/f$a;,
        Lcom/ss/android/downloadlib/addownload/f$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/downloadlib/h/l;

.field private c:Lcom/ss/android/downloadlib/addownload/h;

.field private d:Lcom/ss/android/downloadlib/addownload/e;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ss/android/a/a/c/e;

.field private h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private i:Lcom/ss/android/downloadlib/addownload/f$c;

.field private final j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private k:Z

.field private l:J

.field private m:J

.field private n:Lcom/ss/android/a/a/b/c;

.field private o:Lcom/ss/android/a/a/b/b;

.field private p:Lcom/ss/android/a/a/b/a;

.field private q:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private final s:Z

.field private t:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/a/a/a/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const-class v0, Lcom/ss/android/downloadlib/addownload/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/ss/android/downloadlib/h/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/h/l;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/h/l$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->b:Lcom/ss/android/downloadlib/h/l;

    .line 93
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    .line 99
    new-instance v1, Lcom/ss/android/downloadlib/addownload/h$a;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;-><init>(Lcom/ss/android/downloadlib/h/l;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    .line 106
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    .line 108
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->o:Lcom/ss/android/a/a/b/b;

    .line 109
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->p:Lcom/ss/android/a/a/b/a;

    .line 117
    new-instance v1, Lcom/ss/android/downloadlib/addownload/h;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/h;-><init>()V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    .line 118
    new-instance v1, Lcom/ss/android/downloadlib/addownload/e;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/addownload/e;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    .line 119
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "ttdownloader_callback_twice"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/f;->s:Z

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/f;)Ljava/util/Map;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 835
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 836
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 837
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 838
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->b:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/h/l;->sendMessage(Landroid/os/Message;)Z

    .line 839
    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/c/e;
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->r()Lcom/ss/android/a/a/c/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/e;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    return-object p0
.end method

.method private c(Z)V
    .registers 2

    .line 454
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->e(Z)V

    .line 455
    return-void
.end method

.method private c(I)Z
    .registers 7

    .line 397
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 398
    return v1

    .line 400
    :cond_8
    nop

    .line 401
    nop

    .line 402
    const/4 v0, -0x1

    .line 403
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->B()Lcom/ss/android/a/a/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 405
    packed-switch p1, :pswitch_data_72

    goto :goto_1d

    .line 407
    :pswitch_19
    const/4 v0, 0x4

    .line 408
    goto :goto_1d

    .line 410
    :pswitch_1b
    const/4 v0, 0x5

    .line 411
    nop

    .line 415
    :goto_1d
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    instance-of v4, v3, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v4, :cond_29

    .line 416
    check-cast v3, Lcom/ss/android/downloadad/a/a/c;

    .line 417
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadad/a/a/c;->a(I)Lcom/ss/android/downloadad/a/a/c;

    .line 420
    :cond_29
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ss/android/downloadlib/h/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 421
    if-eqz v2, :cond_67

    .line 422
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v1, v3, v4, p1}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 424
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 425
    iput v0, p1, Landroid/os/Message;->what:I

    .line 426
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->b:Lcom/ss/android/downloadlib/h/l;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c;->a()Lcom/ss/android/downloadlib/addownload/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/downloadlib/addownload/c;->b()J

    move-result-wide v3

    invoke-virtual {v1, p1, v3, v4}, Lcom/ss/android/downloadlib/h/l;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 429
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c;->a()Lcom/ss/android/downloadlib/addownload/c;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->o:Lcom/ss/android/a/a/b/b;

    invoke-virtual {p1, v0, v1, v3}, Lcom/ss/android/downloadlib/addownload/c;->a(ILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 430
    goto :goto_70

    .line 431
    :cond_67
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {p1, v3, v4, v1, v1}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    .line 434
    :goto_70
    return v2

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
    .end packed-switch
.end method

.method static synthetic d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p0
.end method

.method private d(Z)V
    .registers 5

    .line 474
    if-eqz p1, :cond_c

    .line 475
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 477
    :cond_c
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->n()V

    .line 478
    return-void
.end method

.method static synthetic e(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/h;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    return-object p0
.end method

.method private e(Z)V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/e;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "notification_opt_2"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_20

    .line 486
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 488
    :cond_20
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->f(Z)V

    .line 489
    return-void
.end method

.method static synthetic f(Lcom/ss/android/downloadlib/addownload/f;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->o()V

    return-void
.end method

.method private f(Z)V
    .registers 12

    .line 573
    sget-object v0, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    const-string v1, "performButtonClickWithNewDownloader"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 574
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "fix_info"

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 576
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 578
    :cond_2c
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v1, :cond_12d

    .line 580
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    const/4 v3, -0x3

    if-eq v1, v3, :cond_4b

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->canResume(I)Z

    move-result v1

    if-eqz v1, :cond_12d

    :cond_4b
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 581
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_55

    goto/16 :goto_12d

    .line 615
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performButtonClickWithNewDownloader continue download, status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 616
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_80

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    if-eqz v1, :cond_80

    .line 617
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    .line 619
    :cond_80
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    .line 621
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v1

    .line 623
    const/4 v2, -0x4

    if-eq v0, v2, :cond_df

    const/4 v2, -0x2

    if-eq v0, v2, :cond_df

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a0

    goto :goto_df

    .line 644
    :cond_a0
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 645
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadlib/addownload/e;->a(Z)V

    .line 646
    invoke-static {}, Lcom/ss/android/downloadlib/d/g;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v4

    iget-wide v5, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v4, v5, v6}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadlib/d/g;->b(Lcom/ss/android/downloadad/a/b/b;)V

    .line 648
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/f;->a()Lcom/ss/android/downloadlib/addownload/d/f;

    move-result-object v2

    new-instance v4, Lcom/ss/android/downloadlib/addownload/f$3;

    invoke-direct {v4, p0, p1, v3, v0}, Lcom/ss/android/downloadlib/addownload/f$3;-><init>(Lcom/ss/android/downloadlib/addownload/f;ZII)V

    invoke-virtual {v2, v1, v0, v4}, Lcom/ss/android/downloadlib/addownload/d/f;->a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)V

    goto/16 :goto_1a2

    .line 657
    :cond_cb
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 658
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;II)V

    goto/16 :goto_1a2

    .line 626
    :cond_df
    :goto_df
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4, p1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 627
    if-eqz v1, :cond_f8

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->h(J)V

    .line 629
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->i(J)V

    .line 631
    :cond_f8
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 633
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/e;

    iget-wide v5, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v8

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v9

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 634
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v6

    new-instance v8, Lcom/ss/android/downloadlib/addownload/f$2;

    invoke-direct {v8, p0, v3, v0}, Lcom/ss/android/downloadlib/addownload/f$2;-><init>(Lcom/ss/android/downloadlib/addownload/f;II)V

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/downloadlib/addownload/e;->a(IJJLcom/ss/android/downloadlib/addownload/f$a;)V

    goto/16 :goto_1a2

    .line 582
    :cond_12d
    :goto_12d
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v1, :cond_145

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    if-eqz v1, :cond_145

    .line 585
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Z)V

    .line 586
    return-void

    .line 590
    :cond_145
    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/f;->r:Z

    if-eqz v1, :cond_16f

    .line 591
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v1

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->t:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_16b

    .line 593
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->s()Z

    move-result v1

    .line 595
    if-eqz v1, :cond_16a

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    if-eqz v1, :cond_16a

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    .line 596
    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 597
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Z)V

    .line 599
    :cond_16a
    goto :goto_1a1

    .line 600
    :cond_16b
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Z)V

    goto :goto_1a1

    .line 604
    :cond_16f
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v1

    if-eqz v1, :cond_19e

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    if-eqz v1, :cond_19e

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    .line 606
    invoke-interface {v1}, Lcom/ss/android/a/a/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_19e

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v1, :cond_19e

    .line 608
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v1

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 609
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 610
    return-void

    .line 612
    :cond_19e
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->b(Z)V

    .line 614
    :goto_1a1
    nop

    .line 662
    :goto_1a2
    return-void
.end method

.method static synthetic g(Lcom/ss/android/downloadlib/addownload/f;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->p()V

    return-void
.end method

.method static synthetic h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    .line 81
    sget-object v0, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .registers 4

    .line 383
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "quick_app_enable_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 384
    return v2

    .line 386
    :cond_e
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/c;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 387
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 388
    const/4 v0, 0x1

    return v0

    .line 390
    :cond_20
    return v2
.end method

.method static synthetic i(Lcom/ss/android/downloadlib/addownload/f;)Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/ss/android/downloadlib/addownload/f;->s:Z

    return p0
.end method

.method static synthetic j(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/f;->j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object p0
.end method

.method private j()V
    .registers 6

    .line 461
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->q:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 462
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->q:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/a/s;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/a/a/a/s;->a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->q:Ljava/lang/ref/SoftReference;

    goto :goto_38

    .line 466
    :cond_23
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->c()Lcom/ss/android/a/a/a/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/a/a/a/c;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    .line 468
    :goto_38
    return-void
.end method

.method private k()Landroid/content/Context;
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 534
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 536
    :cond_13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/ss/android/downloadlib/addownload/f;)Landroid/content/Context;
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->k()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private l()Lcom/ss/android/a/a/b/b;
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->o:Lcom/ss/android/a/a/b/b;

    if-nez v0, :cond_d

    new-instance v0, Lcom/ss/android/a/a/b/g$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/b/g$a;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/a/a/b/g$a;->a()Lcom/ss/android/a/a/b/g;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method private m()Lcom/ss/android/a/a/b/a;
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->p:Lcom/ss/android/a/a/b/a;

    if-nez v0, :cond_b

    .line 547
    new-instance v0, Lcom/ss/android/a/a/b/f;

    invoke-direct {v0}, Lcom/ss/android/a/a/b/f;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->p:Lcom/ss/android/a/a/b/a;

    .line 549
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->p:Lcom/ss/android/a/a/b/a;

    return-object v0
.end method

.method private n()V
    .registers 5

    .line 558
    sget-object v0, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    const-string v1, "performItemClickWithNewDownloader"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 559
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/h;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 560
    const-string v1, "performItemClickWithNewDownloader ButtonClick"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/f;->f(Z)V

    goto :goto_24

    .line 564
    :cond_1c
    const-string v1, "performItemClickWithNewDownloader onItemClick"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 565
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->j()V

    .line 567
    :goto_24
    return-void
.end method

.method private o()V
    .registers 16

    .line 695
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    new-instance v7, Lcom/ss/android/downloadlib/addownload/b/e;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v5

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    invoke-virtual {v0, v7}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 696
    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/f;->d:Lcom/ss/android/downloadlib/addownload/e;

    new-instance v14, Lcom/ss/android/downloadlib/addownload/f$5;

    invoke-direct {v14, p0}, Lcom/ss/android/downloadlib/addownload/f$5;-><init>(Lcom/ss/android/downloadlib/addownload/f;)V

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/ss/android/downloadlib/addownload/e;->a(IJJLcom/ss/android/downloadlib/addownload/f$a;)V

    .line 705
    return-void
.end method

.method private p()V
    .registers 10

    .line 708
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/d;

    .line 709
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;)V

    .line 710
    goto :goto_a

    .line 712
    :cond_20
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/h;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)I

    move-result v0

    .line 714
    sget-object v1, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginDownloadWithNewDownloader id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 715
    if-eqz v0, :cond_67

    .line 716
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_61

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v4, "fix_click_start"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_61

    .line 719
    :cond_58
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    goto :goto_91

    .line 717
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/h;->a()V

    goto :goto_91

    .line 722
    :cond_67
    new-instance v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 723
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 724
    invoke-direct {p0, v2}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 725
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v2

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    new-instance v6, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/4 v7, 0x2

    const-string v8, "start download failed, id=0"

    invoke-direct {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4, v5, v6}, Lcom/ss/android/downloadlib/e/a;->a(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 726
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 729
    :goto_91
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/f;->c()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadlib/addownload/h;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginDownloadWithNewDownloader onItemClick id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 731
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->j()V

    .line 733
    :cond_b6
    return-void
.end method

.method private q()V
    .registers 6

    .line 842
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->i:Lcom/ss/android/downloadlib/addownload/f$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/f$c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_12

    .line 843
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->i:Lcom/ss/android/downloadlib/addownload/f$c;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/f$c;->cancel(Z)Z

    .line 845
    :cond_12
    new-instance v0, Lcom/ss/android/downloadlib/addownload/f$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ss/android/downloadlib/addownload/f$c;-><init>(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/downloadlib/addownload/f$1;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->i:Lcom/ss/android/downloadlib/addownload/f$c;

    .line 846
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/h/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method private r()Lcom/ss/android/a/a/c/e;
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->g:Lcom/ss/android/a/a/c/e;

    if-nez v0, :cond_b

    .line 851
    new-instance v0, Lcom/ss/android/a/a/c/e;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->g:Lcom/ss/android/a/a/c/e;

    .line 853
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->g:Lcom/ss/android/a/a/c/e;

    return-object v0
.end method

.method private s()Z
    .registers 6

    .line 886
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->t:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 887
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/a/n;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a/n;->a(Z)V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->t:Ljava/lang/ref/SoftReference;

    .line 890
    return v1

    .line 893
    :cond_1a
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/4 v3, 0x7

    const-string v4, "downloadSDK: mDownloadButtonClickListener has recycled"

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/f/a;->a(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 895
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/f;
    .registers 5

    .line 136
    if-eqz p2, :cond_27

    .line 137
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "back_use_softref_listener"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 138
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 140
    :cond_19
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_27
    :goto_27
    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/f;
    .registers 3

    .line 124
    if-eqz p1, :cond_9

    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->e:Ljava/lang/ref/WeakReference;

    .line 127
    :cond_9
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/k;->b(Landroid/content/Context;)V

    .line 128
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/addownload/f;
    .registers 5

    .line 172
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->p:Lcom/ss/android/a/a/b/a;

    .line 173
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "force_auto_open"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 174
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ss/android/a/a/b/a;->b(I)V

    .line 176
    :cond_18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "fix_show_dialog"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 177
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->z()Lorg/json/JSONObject;

    move-result-object p1

    .line 179
    if-eqz p1, :cond_3c

    const-string v0, "subprocess"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3c

    .line 180
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ss/android/a/a/b/a;->a(Z)V

    .line 183
    :cond_3c
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/a/a/b/a;)V

    .line 184
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/addownload/f;
    .registers 5

    .line 192
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->o:Lcom/ss/android/a/a/b/b;

    .line 193
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/a/a/b/b;->k()I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/addownload/f;->r:Z

    .line 194
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/a/a/b/b;)V

    .line 195
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/addownload/f;
    .registers 6

    .line 151
    if-eqz p1, :cond_3c

    .line 152
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/a/a/b/c;)V

    .line 153
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    .line 154
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    .line 155
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 156
    check-cast p1, Lcom/ss/android/downloadad/a/a/c;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/a/a/c;->a(J)V

    .line 157
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    .line 158
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->l()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3c

    .line 159
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/a/b/b;->e(J)V

    .line 160
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 164
    :cond_3c
    return-object p0
.end method

.method public a(J)Lcom/ss/android/downloadlib/addownload/g;
    .registers 5

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1a

    .line 324
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_19

    .line 326
    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    .line 327
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    .line 328
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/h;->a(J)V

    .line 330
    :cond_19
    goto :goto_1d

    .line 331
    :cond_1a
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 333
    :goto_1d
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/n;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 3

    .line 874
    if-nez p1, :cond_6

    .line 875
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->t:Ljava/lang/ref/SoftReference;

    goto :goto_d

    .line 877
    :cond_6
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->t:Ljava/lang/ref/SoftReference;

    .line 879
    :goto_d
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/s;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 3

    .line 200
    if-nez p1, :cond_6

    .line 201
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->q:Ljava/lang/ref/SoftReference;

    goto :goto_d

    .line 203
    :cond_6
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->q:Ljava/lang/ref/SoftReference;

    .line 205
    :goto_d
    return-object p0
.end method

.method public a()V
    .registers 6

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/f;->k:Z

    .line 215
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->l()Lcom/ss/android/a/a/b/b;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/a/a/b/b;)V

    .line 216
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/a/a/b/a;)V

    .line 217
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/h;->a(J)V

    .line 218
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->q()V

    .line 220
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enable_empty_listener"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_49

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    .line 221
    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_49

    .line 222
    new-instance v0, Lcom/ss/android/a/a/a/a;

    invoke-direct {v0}, Lcom/ss/android/a/a/a/a;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/downloadlib/addownload/f;->a(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/f;

    .line 224
    :cond_49
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 6

    .line 505
    if-eqz p1, :cond_5f

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/f;->k:Z

    if-nez v0, :cond_7

    goto :goto_5f

    .line 508
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 521
    :pswitch_e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/a/a/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 522
    return-void

    .line 524
    :cond_1f
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    .line 525
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/addownload/f;->d(Z)V

    .line 526
    goto :goto_5e

    .line 514
    :pswitch_2d
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/a/a/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 515
    return-void

    .line 517
    :cond_3e
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    const/4 v0, 0x2

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    .line 518
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/addownload/f;->c(Z)V

    .line 519
    goto :goto_5e

    .line 510
    :pswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 511
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->r()Lcom/ss/android/a/a/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/android/downloadlib/addownload/h;->a(Landroid/os/Message;Lcom/ss/android/a/a/c/e;Ljava/util/Map;)V

    .line 512
    nop

    .line 530
    :goto_5e
    return-void

    .line 506
    :cond_5f
    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_4c
        :pswitch_2d
        :pswitch_e
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_4a

    .line 266
    if-eqz p1, :cond_28

    .line 267
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object p1

    .line 268
    if-eqz p1, :cond_15

    .line 269
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 271
    :cond_15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(IZ)V

    .line 272
    goto :goto_4a

    .line 273
    :cond_28
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    const-string v0, "android.ss.intent.action.DOWNLOAD_DELETE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const-string v1, "extra_click_download_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    :cond_4a
    :goto_4a
    return-void
.end method

.method public a(I)Z
    .registers 5

    .line 236
    if-nez p1, :cond_8

    .line 237
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_11

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :goto_11
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7e

    .line 242
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/f;->k:Z

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->l:J

    .line 244
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p1, :cond_37

    .line 245
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    .line 247
    :cond_37
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->i:Lcom/ss/android/downloadlib/addownload/f$c;

    const/4 v0, 0x1

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/f$c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v1, :cond_49

    .line 248
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->i:Lcom/ss/android/downloadlib/addownload/f$c;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/f$c;->cancel(Z)Z

    .line 250
    :cond_49
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 251
    sget-object p1, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind removeCallbacksAndMessages, downloadUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v2, :cond_64

    const-string v2, ""

    goto :goto_68

    :cond_64
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 252
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->b:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/h/l;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    iput-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->g:Lcom/ss/android/a/a/c/e;

    .line 254
    iput-object v2, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 255
    return v0

    .line 257
    :cond_7e
    return v0
.end method

.method public synthetic b(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 3

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/f;->a(ILcom/ss/android/a/a/b/d;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/a/a/b/a;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/a/a/b/b;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/addownload/g;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .registers 7

    .line 343
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_f

    .line 344
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error actionType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/h;->a(J)V

    .line 348
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/e;->x()Z

    move-result v1

    if-nez v1, :cond_29

    .line 349
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 351
    :cond_29
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->k()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ss/android/downloadlib/addownload/f;->r:Z

    invoke-virtual {v1, v2, p1, v3}, Lcom/ss/android/downloadlib/addownload/h;->a(Landroid/content/Context;IZ)Z

    move-result v1

    if-nez v1, :cond_89

    .line 352
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/f;->c(I)Z

    move-result v1

    .line 353
    const/4 v2, 0x0

    const-string v3, "handleDownload id:"

    packed-switch p1, :pswitch_data_8a

    goto :goto_89

    .line 355
    :pswitch_42
    if-nez v1, :cond_89

    .line 356
    sget-object p1, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",tryPerformButtonClick:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/f;->c(Z)V

    goto :goto_89

    .line 361
    :pswitch_66
    if-nez v1, :cond_89

    .line 362
    sget-object p1, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",tryPerformItemClick:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Z)V

    .line 370
    :cond_89
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_42
    .end packed-switch
.end method

.method public b(Z)V
    .registers 5

    .line 665
    if-eqz p1, :cond_c

    .line 666
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 668
    :cond_c
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/i;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 669
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->m()Lcom/ss/android/a/a/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/a/a/b/a;->g()Z

    move-result p1

    if-nez p1, :cond_29

    .line 671
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ss/android/a/a/b/c;->a(Ljava/lang/String;)Lcom/ss/android/a/a/b/c;

    .line 674
    :cond_29
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->n:Lcom/ss/android/a/a/b/c;

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->c(Lcom/ss/android/a/a/b/c;)I

    move-result p1

    if-nez p1, :cond_44

    .line 675
    sget-object p1, Lcom/ss/android/downloadlib/addownload/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "performButtonClickWithNewDownloader not start"

    invoke-static {p1, v1, v0}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 676
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f;->c:Lcom/ss/android/downloadlib/addownload/h;

    new-instance v0, Lcom/ss/android/downloadlib/addownload/f$4;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/f$4;-><init>(Lcom/ss/android/downloadlib/addownload/f;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/a/a/a/q;)V

    goto :goto_47

    .line 690
    :cond_44
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/f;->o()V

    .line 692
    :goto_47
    return-void
.end method

.method public b()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/f;->k:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public d()J
    .registers 3

    .line 310
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/f;->l:J

    return-wide v0
.end method

.method public e()V
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->b:Lcom/ss/android/downloadlib/h/l;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/f$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/f$1;-><init>(Lcom/ss/android/downloadlib/addownload/f;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/h/l;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method public f()V
    .registers 3

    .line 741
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 742
    return-void

    .line 744
    :cond_9
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/d;

    .line 745
    invoke-interface {v1}, Lcom/ss/android/a/a/b/d;->a()V

    .line 746
    goto :goto_13

    .line 748
    :cond_23
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_2b

    .line 749
    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 751
    :cond_2b
    return-void
.end method

.method public g()V
    .registers 4

    .line 864
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/f;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->f(J)V

    .line 870
    return-void
.end method
