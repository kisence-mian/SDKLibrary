.class public Lcom/ss/android/downloadlib/addownload/h;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/h/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/h$b;,
        Lcom/ss/android/downloadlib/addownload/h$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/ss/android/downloadlib/addownload/b/e;

.field private c:Z

.field private final d:Lcom/ss/android/downloadlib/h/l;

.field private e:Lcom/ss/android/downloadlib/addownload/h$b;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/h;->c:Z

    .line 80
    new-instance v0, Lcom/ss/android/downloadlib/h/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/h/l;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/h/l$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->d:Lcom/ss/android/downloadlib/h/l;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/h;)Lcom/ss/android/downloadlib/addownload/b/e;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;
    .registers 10

    .line 488
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 489
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 492
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 493
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1}, Lcom/ss/android/downloadlib/h/i;->b(Ljava/lang/String;)Z

    move-result v1

    .line 495
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/h;->b()Ljava/lang/String;

    move-result-object v2

    .line 496
    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 498
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    .line 499
    if-eqz v1, :cond_48

    .line 500
    return-object v3

    .line 502
    :cond_48
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 503
    return-object v3

    .line 506
    :cond_57
    :try_start_57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_65

    if-eqz v4, :cond_64

    .line 507
    return-object v3

    .line 511
    :cond_64
    goto :goto_69

    .line 509
    :catch_65
    move-exception v3

    .line 510
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    :goto_69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    .line 516
    :cond_78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 518
    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_7f
    const-string v5, "ttdownloader_code"

    if-eqz v1, :cond_85

    move v6, v3

    goto :goto_86

    :cond_85
    move v6, v4

    :goto_86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_8d} :catch_8e

    .line 521
    goto :goto_92

    .line 519
    :catch_8e
    move-exception v5

    .line 520
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 522
    :goto_92
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    const-string v7, "label_external_permission"

    invoke-virtual {v5, v7, v0, v6}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 524
    const/4 v0, 0x0

    .line 527
    :try_start_9e
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a2} :catch_a3

    .line 529
    goto :goto_a4

    .line 528
    :catch_a3
    move-exception v5

    .line 530
    :goto_a4
    nop

    .line 532
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/socialbase/downloader/g/a;)I

    move-result p1

    .line 533
    if-eqz p1, :cond_e0

    .line 535
    const/4 v5, 0x4

    if-eq p1, v5, :cond_c1

    if-nez v1, :cond_b3

    if-ne p1, v4, :cond_b3

    goto :goto_c1

    .line 544
    :cond_b3
    const/4 v4, 0x3

    if-eq p1, v4, :cond_ba

    if-nez v1, :cond_e0

    if-ne p1, v3, :cond_e0

    .line 546
    :cond_ba
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e0

    .line 547
    goto :goto_e1

    .line 537
    :cond_c1
    :goto_c1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d2

    .line 539
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 541
    :cond_d2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 542
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_df

    .line 541
    :cond_de
    move-object v2, v0

    .line 544
    :goto_df
    goto :goto_e1

    .line 551
    :cond_e0
    move-object v2, v0

    :goto_e1
    return-object v2
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/a/a/b/d;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    if-eqz p0, :cond_43

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_43

    .line 797
    :cond_e
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 798
    instance-of v2, v1, Lcom/ss/android/a/a/b/d;

    if-eqz v2, :cond_2a

    .line 799
    check-cast v1, Lcom/ss/android/a/a/b/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 800
    :cond_2a
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_41

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ss/android/a/a/b/d;

    if-eqz v2, :cond_41

    .line 801
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_41
    :goto_41
    goto :goto_16

    .line 804
    :cond_42
    return-object v0

    .line 795
    :cond_43
    :goto_43
    return-object v0
.end method

.method private a(I)Z
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    if-ne p1, v1, :cond_f

    .line 131
    return v2

    .line 133
    :cond_f
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->b()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_29

    if-ne p1, v2, :cond_29

    .line 135
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "disable_lp_if_market"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_29

    .line 136
    return v2

    .line 138
    :cond_29
    return v3
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/h;)J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    return-wide v0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/a/a/b/e;",
            ">;"
        }
    .end annotation

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 812
    if-eqz p0, :cond_43

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_43

    .line 815
    :cond_e
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 816
    instance-of v2, v1, Lcom/ss/android/a/a/b/e;

    if-eqz v2, :cond_2a

    .line 817
    check-cast v1, Lcom/ss/android/a/a/b/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 818
    :cond_2a
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_41

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ss/android/a/a/b/e;

    if-eqz v2, :cond_41

    .line 819
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_41
    :goto_41
    goto :goto_16

    .line 822
    :cond_42
    return-object v0

    .line 813
    :cond_43
    :goto_43
    return-object v0
.end method

.method private b(Lcom/ss/android/a/a/a/q;)V
    .registers 4

    .line 215
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 216
    if-eqz p1, :cond_d

    .line 217
    invoke-interface {p1}, Lcom/ss/android/a/a/a/q;->a()V

    .line 219
    :cond_d
    return-void

    .line 221
    :cond_e
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/h$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/addownload/h$2;-><init>(Lcom/ss/android/downloadlib/addownload/h;Lcom/ss/android/a/a/a/q;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/i;->a([Ljava/lang/String;Lcom/ss/android/downloadlib/h/i$a;)V

    .line 237
    return-void
.end method

.method private c()Z
    .registers 2

    .line 168
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/h;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/h;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private d()Z
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 173
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 174
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 172
    :goto_25
    return v0
.end method

.method private d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 2

    .line 361
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/h;->e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private e()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->d()Z

    move-result v0

    return v0
.end method

.method private e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 377
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    const/4 v0, -0x3

    if-ne p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private f()Z
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)I
    .registers 13

    .line 388
    nop

    .line 389
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 390
    return v0

    .line 392
    :cond_5
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->j()Ljava/util/Map;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    if-eqz v1, :cond_3f

    .line 395
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 396
    if-eqz v3, :cond_3e

    .line 397
    new-instance v4, Lcom/ss/android/socialbase/downloader/model/c;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_3e
    goto :goto_1c

    .line 402
    :cond_3f
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 403
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 404
    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 405
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->k()Z

    move-result v4

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 406
    invoke-interface {v5}, Lcom/ss/android/a/a/b/c;->A()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-static {v1, v3, v4, v5}, Lcom/ss/android/downloadlib/h/d;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v3}, Lcom/ss/android/downloadlib/h/e;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    .line 410
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->F()I

    move-result v4

    .line 412
    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v5}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v5

    if-nez v5, :cond_8f

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v5}, Lcom/ss/android/downloadlib/addownload/i;->b(Lcom/ss/android/a/a/b/c;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 413
    :cond_8f
    const/4 v4, 0x4

    .line 416
    :cond_90
    invoke-direct {p0, v3}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;

    move-result-object v5

    .line 417
    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v6}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 418
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v6

    .line 419
    const/4 v7, 0x1

    if-eqz v6, :cond_c0

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v9, v9, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v9}, Lcom/ss/android/a/a/b/c;->A()I

    move-result v9

    if-ne v8, v9, :cond_c0

    .line 420
    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 421
    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 423
    :cond_c0
    new-instance v6, Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v8, v8, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v8}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v8}, Lcom/ss/android/socialbase/appdownloader/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 424
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v6, v6, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 425
    invoke-interface {v6}, Lcom/ss/android/a/a/b/c;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 426
    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 427
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 428
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->l()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 429
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->m()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 430
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 431
    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 432
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->j(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 433
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 434
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/f;->i(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 435
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->f()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/socialbase/appdownloader/f;->a(J)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 436
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 437
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->q()Z

    move-result p2

    if-nez p2, :cond_15e

    const-string p2, "need_independent_process"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_15c

    goto :goto_15e

    :cond_15c
    move p2, v0

    goto :goto_15f

    :cond_15e
    :goto_15e
    move p2, v7

    :goto_15f
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->l(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 438
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->D()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 439
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->C()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->b(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 440
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const/16 p2, 0x3e8

    .line 441
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->d(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const/16 p2, 0x64

    .line 442
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->e(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 443
    invoke-static {p2}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/a/a/b/c;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/appdownloader/f;->i(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/appdownloader/f;->j(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    const/4 p2, 0x5

    .line 446
    const-string v1, "retry_count"

    invoke-virtual {v3, v1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->b(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 447
    const-string p2, "backup_url_retry_count"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->c(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 448
    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/appdownloader/f;->j(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 449
    const-string p2, "need_head_connection"

    invoke-virtual {v3, p2, v7}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_1ca

    move p2, v7

    goto :goto_1cb

    :cond_1ca
    move p2, v0

    :goto_1cb
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->m(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 450
    const-string p2, "need_https_to_http_retry"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_1d9

    move p2, v7

    goto :goto_1da

    :cond_1d9
    move p2, v0

    :goto_1da
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->d(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 451
    const-string p2, "need_chunk_downgrade_retry"

    invoke-virtual {v3, p2, v7}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_1e8

    move p2, v7

    goto :goto_1e9

    :cond_1e8
    move p2, v0

    :goto_1e9
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->h(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 452
    const-string p2, "need_retry_delay"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_1f7

    move p2, v7

    goto :goto_1f8

    :cond_1f7
    move p2, v0

    :goto_1f8
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->g(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 453
    const-string p2, "retry_delay_time_array"

    invoke-virtual {v3, p2}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 454
    const-string p2, "need_reuse_runnable"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_210

    move p2, v7

    goto :goto_211

    :cond_210
    move p2, v0

    :goto_211
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->k(Z)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 455
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->p()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ss/android/downloadlib/addownload/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 456
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->p()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/d;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 457
    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/appdownloader/f;->f(I)Lcom/ss/android/socialbase/appdownloader/f;

    move-result-object p1

    .line 459
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_25b

    .line 460
    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    goto :goto_260

    .line 462
    :cond_25b
    const-string p2, "application/vnd.android.package-archive"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 465
    :goto_260
    const-string p2, "notification_opt_2"

    invoke-virtual {v3, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_26e

    .line 466
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 467
    invoke-virtual {p1, v7}, Lcom/ss/android/socialbase/appdownloader/f;->b(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 470
    :cond_26e
    const/4 p2, 0x0

    .line 473
    const-string v1, "clear_space_use_disk_handler"

    invoke-virtual {v3, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_27f

    .line 474
    new-instance p2, Lcom/ss/android/downloadlib/addownload/c/a;

    invoke-direct {p2}, Lcom/ss/android/downloadlib/addownload/c/a;-><init>()V

    .line 475
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 478
    :cond_27f
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/h;->c()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/downloadlib/addownload/b/e;ZLcom/ss/android/socialbase/appdownloader/f;)I

    move-result p1

    .line 479
    if-eqz p2, :cond_28e

    .line 480
    invoke-virtual {p2, p1}, Lcom/ss/android/downloadlib/addownload/c/a;->a(I)V

    .line 484
    :cond_28e
    return p1
.end method

.method a()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->e:Lcom/ss/android/downloadlib/addownload/h$b;

    if-nez v0, :cond_b

    .line 331
    new-instance v0, Lcom/ss/android/downloadlib/addownload/h$3;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/h$3;-><init>(Lcom/ss/android/downloadlib/addownload/h;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->e:Lcom/ss/android/downloadlib/addownload/h$b;

    .line 338
    :cond_b
    return-void
.end method

.method public a(J)V
    .registers 4

    .line 88
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    .line 89
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    .line 90
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/e;->w()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 91
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 93
    :cond_15
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 2

    .line 717
    return-void
.end method

.method a(Landroid/os/Message;Lcom/ss/android/a/a/c/e;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/ss/android/a/a/c/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 244
    if-eqz p1, :cond_f0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto/16 :goto_f0

    .line 247
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 248
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    goto :goto_42

    .line 250
    :cond_14
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1a

    goto :goto_42

    .line 252
    :cond_1a
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_42

    .line 253
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIsFirstDownload()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 256
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-virtual {p1, v1, v2, v4}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    .line 258
    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 260
    :cond_3b
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 262
    :cond_42
    :goto_42
    invoke-virtual {p2, v0}, Lcom/ss/android/a/a/c/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 263
    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/a/a/c/e;)Lcom/ss/android/a/a/c/e;

    .line 265
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)I

    move-result p1

    .line 266
    nop

    .line 267
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    .line 268
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_6e

    .line 269
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long/2addr v3, v1

    long-to-int v3, v3

    .line 271
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->e:Lcom/ss/android/downloadlib/addownload/h$b;

    if-eqz v1, :cond_6e

    .line 272
    invoke-interface {v1, v0}, Lcom/ss/android/downloadlib/addownload/h$b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->e:Lcom/ss/android/downloadlib/addownload/h$b;

    .line 276
    :cond_6e
    invoke-static {p3}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/a/a/b/d;

    .line 278
    packed-switch p1, :pswitch_data_f2

    goto :goto_ee

    .line 293
    :pswitch_86
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, -0x4

    if-ne v4, v5, :cond_91

    .line 294
    invoke-interface {v2}, Lcom/ss/android/a/a/b/d;->a()V

    goto :goto_ee

    .line 295
    :cond_91
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9c

    .line 296
    invoke-interface {v2, p2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;)V

    goto :goto_ee

    .line 297
    :cond_9c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_ee

    .line 298
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v4}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 299
    invoke-interface {v2, p2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_ee

    .line 301
    :cond_b1
    invoke-interface {v2, p2}, Lcom/ss/android/a/a/b/d;->c(Lcom/ss/android/a/a/c/e;)V

    goto :goto_ee

    .line 290
    :pswitch_b5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-static {v4, v3}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result v4

    invoke-interface {v2, p2, v4}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;I)V

    .line 291
    goto :goto_ee

    .line 280
    :pswitch_c1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_d5

    .line 281
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-static {v4, v3}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result v4

    invoke-interface {v2, p2, v4}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;I)V

    goto :goto_ee

    .line 283
    :cond_d5
    invoke-static {p3}, Lcom/ss/android/downloadlib/addownload/h;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 284
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/a/a/b/e;

    .line 285
    invoke-interface {v4, v0}, Lcom/ss/android/a/a/b/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 286
    goto :goto_dd

    .line 288
    :cond_ed
    nop

    .line 308
    :cond_ee
    :goto_ee
    goto :goto_76

    .line 309
    :cond_ef
    return-void

    .line 245
    :cond_f0
    :goto_f0
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_b5
        :pswitch_86
    .end packed-switch
.end method

.method a(Lcom/ss/android/a/a/a/q;)V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 183
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->n()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 186
    invoke-interface {p1}, Lcom/ss/android/a/a/a/q;->a()V

    .line 187
    return-void

    .line 190
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 191
    invoke-interface {p1}, Lcom/ss/android/a/a/a/q;->a()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3f

    .line 192
    return-void

    .line 195
    :cond_3e
    goto :goto_40

    .line 194
    :catch_3f
    move-exception v0

    .line 197
    :cond_40
    :goto_40
    new-instance v0, Lcom/ss/android/downloadlib/addownload/h$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/addownload/h$1;-><init>(Lcom/ss/android/downloadlib/addownload/h;Lcom/ss/android/a/a/a/q;)V

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/h;->b(Lcom/ss/android/a/a/a/q;)V

    .line 212
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/h;->c:Z

    .line 97
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->e:Lcom/ss/android/downloadlib/addownload/h$b;

    if-eqz v0, :cond_d

    .line 98
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/addownload/h$b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 99
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->e:Lcom/ss/android/downloadlib/addownload/h$b;

    .line 101
    :cond_d
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Lcom/ss/android/a/a/c/e;",
            "Ljava/util/List<",
            "Lcom/ss/android/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    .line 636
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 637
    return-void

    .line 639
    :cond_7
    if-eqz p1, :cond_ab

    if-nez p2, :cond_d

    goto/16 :goto_ab

    .line 645
    :cond_d
    nop

    .line 647
    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_27

    .line 648
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    div-long/2addr v1, v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_29

    long-to-int v1, v1

    goto :goto_28

    .line 647
    :cond_27
    move v1, v0

    .line 652
    :goto_28
    goto :goto_2e

    .line 650
    :catch_29
    move-exception v1

    .line 651
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    .line 653
    :goto_2e
    if-gez v1, :cond_31

    .line 654
    goto :goto_32

    .line 653
    :cond_31
    move v0, v1

    .line 656
    :goto_32
    invoke-virtual {p2, p1}, Lcom/ss/android/a/a/c/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 657
    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/a/a/c/e;)Lcom/ss/android/a/a/c/e;

    .line 659
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/d;

    .line 660
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_c0

    :pswitch_4f
    goto :goto_a9

    .line 686
    :pswitch_50
    instance-of v2, v1, Lcom/ss/android/a/a/b/e;

    if-eqz v2, :cond_5a

    .line 687
    check-cast v1, Lcom/ss/android/a/a/b/e;

    invoke-interface {v1, p1}, Lcom/ss/android/a/a/b/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_a9

    .line 689
    :cond_5a
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;I)V

    .line 691
    goto :goto_a9

    .line 683
    :pswitch_66
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;I)V

    .line 684
    goto :goto_a9

    .line 671
    :pswitch_72
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;)V

    .line 672
    goto :goto_a9

    .line 674
    :pswitch_76
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/addownload/j;->a(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;I)V

    .line 675
    goto :goto_a9

    .line 693
    :pswitch_82
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v2}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 694
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_a9

    .line 696
    :cond_90
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->c(Lcom/ss/android/a/a/c/e;)V

    .line 698
    goto :goto_a9

    .line 663
    :pswitch_94
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v2}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 664
    const/4 v2, -0x3

    iput v2, p2, Lcom/ss/android/a/a/c/e;->b:I

    .line 665
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_a9

    .line 667
    :cond_a5
    invoke-interface {v1}, Lcom/ss/android/a/a/b/d;->a()V

    .line 669
    nop

    .line 702
    :goto_a9
    goto :goto_3c

    .line 703
    :cond_aa
    return-void

    .line 640
    :cond_ab
    :goto_ab
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_af
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/a/a/b/d;

    .line 641
    invoke-interface {p2}, Lcom/ss/android/a/a/b/d;->a()V

    .line 642
    goto :goto_af

    .line 643
    :cond_bf
    return-void

    :pswitch_data_c0
    .packed-switch -0x4
        :pswitch_94
        :pswitch_82
        :pswitch_76
        :pswitch_72
        :pswitch_94
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_4f
        :pswitch_66
        :pswitch_66
        :pswitch_4f
        :pswitch_4f
        :pswitch_50
    .end packed-switch
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .registers 8

    .line 572
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_fd

    if-eqz p1, :cond_fd

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_fd

    .line 575
    :cond_10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 576
    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4c

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1c

    goto :goto_4c

    .line 578
    :cond_1c
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 579
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    goto :goto_55

    .line 580
    :cond_30
    if-eqz p2, :cond_55

    .line 582
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/e/c;->c()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 583
    const/4 v1, -0x2

    if-eq v0, v1, :cond_42

    const/4 v1, -0x3

    if-ne v0, v1, :cond_55

    .line 584
    :cond_42
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    goto :goto_55

    .line 577
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 589
    :cond_55
    :goto_55
    packed-switch v0, :pswitch_data_fe

    :pswitch_58
    goto/16 :goto_fc

    .line 612
    :pswitch_5a
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/ss/android/downloadlib/e/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 613
    goto/16 :goto_fc

    .line 596
    :pswitch_66
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/ss/android/downloadlib/e/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 598
    if-eqz p2, :cond_fc

    .line 599
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/e/c;->b()Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 600
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/ss/android/downloadlib/e/c;->b(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_fc

    .line 601
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    goto :goto_fc

    .line 615
    :pswitch_9a
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 616
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    goto :goto_fc

    .line 619
    :cond_a8
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/ss/android/downloadlib/e/a;->a(JILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 622
    if-eqz p2, :cond_fc

    .line 623
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/e/c;->b()Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 624
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/ss/android/downloadlib/e/c;->b(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_fc

    .line 625
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/h;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    goto :goto_fc

    .line 592
    :pswitch_dc
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/h;->a()V

    .line 593
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p2

    new-instance v0, Lcom/ss/android/downloadad/a/b/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/ss/android/downloadad/a/b/b;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 594
    nop

    .line 632
    :cond_fc
    :goto_fc
    return-void

    .line 573
    :cond_fd
    :goto_fd
    return-void

    :pswitch_data_fe
    .packed-switch -0x4
        :pswitch_dc
        :pswitch_9a
        :pswitch_66
        :pswitch_dc
        :pswitch_58
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_58
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method a(Landroid/content/Context;IZ)Z
    .registers 4

    .line 109
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 110
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-wide p2, p2, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    .line 111
    if-eqz p1, :cond_23

    .line 112
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 115
    :cond_23
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z

    move-result p1

    return p1

    .line 116
    :cond_2a
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/addownload/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 117
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 118
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "disable_market"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_52

    .line 119
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/e;I)Z

    move-result p1

    return p1

    .line 121
    :cond_52
    const/4 p1, 0x0

    return p1
.end method

.method a(Z)Z
    .registers 3

    .line 161
    const/4 v0, 0x1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object p1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {p1}, Lcom/ss/android/a/a/b/a;->b()I

    move-result p1

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 556
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_20

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 561
    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 562
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 565
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 317
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/h;->c:Z

    if-nez v0, :cond_2b

    .line 318
    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move p1, v0

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x2

    .line 319
    :goto_1e
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/h;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    const-string v3, "file_status"

    invoke-virtual {v1, v3, p1, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;ILcom/ss/android/downloadlib/addownload/b/e;)V

    .line 320
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/h;->c:Z

    .line 323
    :cond_2b
    return-void
.end method

.method c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 2

    .line 353
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/h;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/h;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
