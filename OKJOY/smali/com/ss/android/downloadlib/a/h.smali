.class public Lcom/ss/android/downloadlib/a/h;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/h$b;,
        Lcom/ss/android/downloadlib/a/h$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/ss/android/downloadlib/a/b/c$a;

.field private c:Z

.field private final d:Lcom/ss/android/downloadlib/e/h;

.field private e:Lcom/ss/android/downloadlib/a/h$b;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/h;->c:Z

    .line 78
    new-instance v0, Lcom/ss/android/downloadlib/e/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/h;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/h$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/h;->d:Lcom/ss/android/downloadlib/e/h;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a/h;)Lcom/ss/android/downloadlib/a/b/c$a;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/k/a;)Ljava/lang/String;
    .registers 8
    .param p2    # Lcom/ss/android/socialbase/downloader/k/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_15

    .line 496
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_14
    :goto_14
    return-object v0

    .line 498
    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, p1

    .line 500
    goto :goto_14

    .line 502
    :cond_1d
    const/4 v0, 0x0

    .line 505
    :try_start_1e
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_6e

    move-result-object v0

    .line 508
    :goto_26
    const-string v1, "back_fix_sigbus"

    invoke-virtual {p2, v1, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_14

    .line 511
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 513
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 515
    :cond_3f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 518
    const-string v2, "bugfix_sigbus_all_brand"

    invoke-virtual {p2, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_59

    .line 519
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->b()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 520
    :cond_59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 521
    const/16 v3, 0x15

    if-lt v2, v3, :cond_14

    const/16 v3, 0x19

    if-gt v2, v3, :cond_14

    .line 522
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/k;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 523
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 506
    :catch_6e
    move-exception v1

    goto :goto_26
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/a/a/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 719
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v2

    .line 729
    :goto_e
    return-object v0

    .line 722
    :cond_f
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 723
    instance-of v1, v0, Lcom/ss/android/a/a/b/d;

    if-eqz v1, :cond_2b

    .line 724
    check-cast v0, Lcom/ss/android/a/a/b/d;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 725
    :cond_2b
    instance-of v1, v0, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/ss/android/a/a/b/d;

    if-eqz v1, :cond_17

    .line 726
    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_46
    move-object v0, v2

    .line 729
    goto :goto_e
.end method

.method private a(I)Z
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 159
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/a;->b()I

    move-result v1

    if-ne v1, v2, :cond_f

    if-ne p1, v2, :cond_f

    .line 166
    :cond_e
    :goto_e
    return v0

    .line 163
    :cond_f
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/a;->b()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    .line 166
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/a/h;)J
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    return-wide v0
.end method

.method private b(Lcom/ss/android/a/a/a/n;)V
    .registers 5

    .prologue
    .line 247
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 248
    if-eqz p1, :cond_d

    .line 249
    invoke-interface {p1}, Lcom/ss/android/a/a/a/n;->a()V

    .line 269
    :cond_d
    :goto_d
    return-void

    .line 253
    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    new-instance v1, Lcom/ss/android/downloadlib/a/h$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a/h$2;-><init>(Lcom/ss/android/downloadlib/a/h;Lcom/ss/android/a/a/a/n;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/e;->a([Ljava/lang/String;Lcom/ss/android/downloadlib/e/e$a;)V

    goto :goto_d
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/h;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/h;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 212
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 213
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    .line 211
    :goto_23
    return v0

    .line 213
    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private e(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/h;->f(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private f()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->d()Z

    move-result v0

    return v0
.end method

.method private f(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 4

    .prologue
    .line 397
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private g()V
    .registers 5

    .prologue
    .line 364
    const-wide/16 v0, 0x4b0

    .line 365
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 366
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 367
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->d:Lcom/ss/android/downloadlib/e/h;

    invoke-virtual {v3, v2, v0, v1}, Lcom/ss/android/downloadlib/e/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    return-void
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/d/w;)I
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 408
    .line 409
    if-nez p1, :cond_5

    .line 489
    :cond_4
    :goto_4
    return v3

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->h()Ljava/util/Map;

    move-result-object v0

    .line 413
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    if-eqz v0, :cond_3f

    .line 415
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 416
    if-eqz v0, :cond_1c

    .line 417
    new-instance v6, Lcom/ss/android/socialbase/downloader/g/e;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 422
    :cond_3f
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 423
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 424
    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 425
    invoke-interface {v5}, Lcom/ss/android/a/a/b/c;->i()Z

    move-result v5

    iget-object v6, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v6, v6, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 426
    invoke-interface {v6}, Lcom/ss/android/a/a/b/c;->x()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-static {v0, v1, v5, v6}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->n()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    .line 430
    iget-object v5, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v5}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v6, v6, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v6}, Lcom/ss/android/a/a/b/c;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/k/a;)Ljava/lang/String;

    move-result-object v5

    .line 431
    iget-object v6, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v6, v6, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v6}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 432
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v6

    .line 433
    if-eqz v6, :cond_b6

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v8, v8, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v8}, Lcom/ss/android/a/a/b/c;->x()I

    move-result v8

    if-ne v7, v8, :cond_b6

    .line 434
    invoke-virtual {v6, v2}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 435
    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 437
    :cond_b6
    new-instance v6, Lcom/ss/android/socialbase/appdownloader/g;

    iget-object v7, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v7, v7, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v7}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/ss/android/socialbase/appdownloader/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v7, v7, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 438
    invoke-interface {v7}, Lcom/ss/android/a/a/b/c;->b()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/appdownloader/g;->b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v7, v7, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 439
    invoke-interface {v7}, Lcom/ss/android/a/a/b/c;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ss/android/socialbase/appdownloader/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v6

    .line 440
    invoke-virtual {v6, v0}, Lcom/ss/android/socialbase/appdownloader/g;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 442
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->j()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 443
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->k()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->c(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 444
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/appdownloader/g;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 446
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 447
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->o()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->l(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 448
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->A()Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 449
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->z()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->b(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 450
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    const/16 v4, 0x3e8

    .line 451
    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->c(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    const/16 v4, 0x64

    .line 452
    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->d(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 453
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->n()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 454
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->i(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->j(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    const-string v4, "retry_count"

    const/4 v5, 0x5

    .line 456
    invoke-virtual {v1, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    const-string v4, "backup_url_retry_count"

    .line 457
    invoke-virtual {v1, v4, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->b(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 458
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->j(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->m(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v4

    const-string v0, "need_https_to_http_retry"

    .line 460
    invoke-virtual {v1, v0, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_22c

    move v0, v2

    :goto_185
    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->d(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v4

    const-string v0, "need_chunk_downgrade_retry"

    .line 461
    invoke-virtual {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_22f

    move v0, v2

    :goto_192
    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->h(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v4

    const-string v0, "need_retry_delay"

    .line 462
    invoke-virtual {v1, v0, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_232

    move v0, v2

    :goto_19f
    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->g(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    const-string v4, "retry_delay_time_array"

    .line 463
    invoke-virtual {v1, v4}, Lcom/ss/android/socialbase/downloader/k/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v4

    const-string v0, "need_reuse_runnable"

    .line 464
    invoke-virtual {v1, v0, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_235

    move v0, v2

    :goto_1b6
    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->k(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v4

    const-string v0, "need_independent_process"

    .line 465
    invoke-virtual {v1, v0, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_237

    move v0, v2

    :goto_1c3
    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->l(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 466
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v5}, Lcom/ss/android/a/a/b/c;->n()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/downloadlib/a/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 467
    invoke-interface {v4}, Lcom/ss/android/a/a/b/c;->n()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/downloadlib/a/e;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v4

    .line 469
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_239

    .line 470
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    .line 475
    :goto_208
    const/4 v0, 0x0

    .line 478
    const-string v5, "clear_space_use_disk_handler"

    invoke-virtual {v1, v5, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_219

    .line 479
    new-instance v0, Lcom/ss/android/downloadlib/a/c/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/c/a;-><init>()V

    .line 480
    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/appdownloader/g;

    .line 483
    :cond_219
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/h;->d()Z

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/ss/android/downloadlib/a/i;->a(Lcom/ss/android/a/a/b/c;ZLcom/ss/android/socialbase/appdownloader/g;)I

    move-result v3

    .line 484
    if-eqz v0, :cond_4

    .line 485
    invoke-virtual {v0, v3}, Lcom/ss/android/downloadlib/a/c/a;->a(I)V

    goto/16 :goto_4

    :cond_22c
    move v0, v3

    .line 460
    goto/16 :goto_185

    :cond_22f
    move v0, v3

    .line 461
    goto/16 :goto_192

    :cond_232
    move v0, v3

    .line 462
    goto/16 :goto_19f

    :cond_235
    move v0, v3

    .line 464
    goto :goto_1b6

    :cond_237
    move v0, v3

    .line 465
    goto :goto_1c3

    .line 472
    :cond_239
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/appdownloader/g;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    goto :goto_208
.end method

.method public a(Z)I
    .registers 4

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/h;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 183
    const/4 v0, 0x1

    .line 185
    :cond_a
    return v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    .line 87
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/a/b/c;->e(J)Lcom/ss/android/downloadlib/a/b/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    .line 88
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 91
    :cond_17
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 637
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 647
    :cond_5
    :goto_5
    return-void

    .line 639
    :pswitch_6
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/ss/android/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 641
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "install_window_show"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    goto :goto_5

    .line 637
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method a(Landroid/os/Message;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/ss/android/a/a/c/e;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 276
    if-eqz p1, :cond_8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 329
    :cond_8
    return-void

    .line 279
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 280
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_56

    .line 291
    :cond_12
    :goto_12
    invoke-virtual {p2, v0}, Lcom/ss/android/a/a/c/e;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 292
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)I

    move-result v3

    .line 294
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    .line 295
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3d

    .line 296
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    div-long v4, v6, v4

    long-to-int v1, v4

    .line 298
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    if-eqz v2, :cond_3d

    .line 299
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    invoke-interface {v2, v0}, Lcom/ss/android/downloadlib/a/h$b;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 300
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    :cond_3d
    move v2, v1

    .line 303
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/a/a/b/d;

    .line 304
    packed-switch v3, :pswitch_data_b0

    goto :goto_42

    .line 306
    :pswitch_52
    invoke-interface {v1, p2, v2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;I)V

    goto :goto_42

    .line 282
    :cond_56
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_12

    .line 284
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ay()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 287
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    iget-object v5, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;)V

    .line 289
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    goto :goto_12

    .line 309
    :pswitch_7d
    invoke-interface {v1, p2, v2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;I)V

    goto :goto_42

    .line 312
    :pswitch_81
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    const/4 v6, -0x4

    if-ne v5, v6, :cond_8c

    .line 313
    invoke-interface {v1}, Lcom/ss/android/a/a/b/d;->a()V

    goto :goto_42

    .line 314
    :cond_8c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_97

    .line 315
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;)V

    goto :goto_42

    .line 316
    :cond_97
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v5

    const/4 v6, -0x3

    if-ne v5, v6, :cond_42

    .line 317
    iget-object v5, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v5, v5, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v5}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 318
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_42

    .line 320
    :cond_ac
    invoke-interface {v1, p2}, Lcom/ss/android/a/a/b/d;->c(Lcom/ss/android/a/a/c/e;)V

    goto :goto_42

    .line 304
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_52
        :pswitch_7d
        :pswitch_81
    .end packed-switch
.end method

.method a(Lcom/ss/android/a/a/a/n;)V
    .registers 4
    .param p1    # Lcom/ss/android/a/a/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 222
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 225
    invoke-interface {p1}, Lcom/ss/android/a/a/a/n;->a()V

    .line 244
    :goto_27
    return-void

    .line 229
    :cond_28
    new-instance v0, Lcom/ss/android/downloadlib/a/h$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/a/h$1;-><init>(Lcom/ss/android/downloadlib/a/h;Lcom/ss/android/a/a/a/n;)V

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a/h;->b(Lcom/ss/android/a/a/a/n;)V

    goto :goto_27
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/h;->c:Z

    .line 95
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    if-eqz v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a/h$b;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    .line 99
    :cond_f
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            "Lcom/ss/android/a/a/c/e;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 576
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 633
    :cond_7
    return-void

    .line 579
    :cond_8
    if-eqz p1, :cond_c

    if-nez p2, :cond_20

    .line 580
    :cond_c
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 581
    invoke-interface {v0}, Lcom/ss/android/a/a/b/d;->a()V

    goto :goto_10

    .line 587
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_69

    .line 588
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    div-long/2addr v2, v4
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_36} :catch_65

    long-to-int v0, v2

    .line 593
    :goto_37
    if-gez v0, :cond_8d

    .line 596
    :goto_39
    invoke-virtual {p2, p1}, Lcom/ss/android/a/a/c/e;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 597
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 598
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    :pswitch_53
    goto :goto_40

    .line 600
    :pswitch_54
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v3}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 601
    const/4 v3, -0x3

    iput v3, p2, Lcom/ss/android/a/a/c/e;->b:I

    .line 602
    invoke-interface {v0, p2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_40

    .line 590
    :catch_65
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_69
    move v0, v1

    goto :goto_37

    .line 604
    :cond_6b
    invoke-interface {v0}, Lcom/ss/android/a/a/b/d;->a()V

    goto :goto_40

    .line 608
    :pswitch_6f
    invoke-interface {v0, p2}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;)V

    goto :goto_40

    .line 611
    :pswitch_73
    invoke-interface {v0, p2, v1}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;I)V

    goto :goto_40

    .line 620
    :pswitch_77
    invoke-interface {v0, p2, v1}, Lcom/ss/android/a/a/b/d;->a(Lcom/ss/android/a/a/c/e;I)V

    goto :goto_40

    .line 623
    :pswitch_7b
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v3}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 624
    invoke-interface {v0, p2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_40

    .line 626
    :cond_89
    invoke-interface {v0, p2}, Lcom/ss/android/a/a/b/d;->c(Lcom/ss/android/a/a/c/e;)V

    goto :goto_40

    :cond_8d
    move v1, v0

    goto :goto_39

    .line 598
    nop

    :pswitch_data_90
    .packed-switch -0x4
        :pswitch_54
        :pswitch_7b
        :pswitch_73
        :pswitch_6f
        :pswitch_53
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_53
        :pswitch_77
        :pswitch_77
    .end packed-switch
.end method

.method a()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method a(Landroid/content/Context;IZ)Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 107
    new-instance v1, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v1, v2}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    .line 108
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 109
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->u()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    .line 110
    if-nez v0, :cond_40

    const/4 v0, 0x0

    .line 111
    :goto_1c
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/a;->a()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/i;->a(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 112
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    :goto_36
    move-object v1, v0

    .line 122
    :cond_37
    :goto_37
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/b/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_162

    move v0, v2

    .line 150
    :goto_3f
    return v0

    .line 110
    :cond_40
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 113
    :cond_45
    if-nez p3, :cond_15e

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/a;->a()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/i;->c(I)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 114
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/d;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    goto :goto_36

    .line 116
    :cond_5a
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/a/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 117
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 118
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "disable_market"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_37

    .line 119
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "market_click_open"

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    .line 120
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/e/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v1

    goto :goto_37

    .line 124
    :pswitch_92
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "deeplink_app_open"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    .line 125
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v2, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v1, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;)V

    move v0, v6

    .line 126
    goto :goto_3f

    .line 128
    :pswitch_bb
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "deeplink_url_open"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    .line 129
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v2, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v1, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;)V

    move v0, v6

    .line 130
    goto/16 :goto_3f

    .line 132
    :pswitch_e5
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    invoke-virtual {v0, v2, v3, p2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 133
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "market_open_success"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    .line 134
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v2, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v1, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/ss/android/downloadlib/a/a;->a()Lcom/ss/android/downloadlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/a;->a(Lcom/ss/android/a/a/b/c;)V

    .line 136
    new-instance v0, Lcom/ss/android/downloadad/a/b/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v2, v2, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/ss/android/downloadad/a/b/a;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 137
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/b/a;->a(I)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadad/a/b/a;->c(J)V

    .line 139
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/b/a;->d(I)V

    .line 140
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/downloadad/a/b/a;)V

    move v0, v6

    .line 141
    goto/16 :goto_3f

    :pswitch_14a
    move v0, v6

    .line 143
    goto/16 :goto_3f

    :pswitch_14d
    move v0, v6

    .line 145
    goto/16 :goto_3f

    .line 147
    :pswitch_150
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "market_open_failed"

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    move v0, v2

    .line 148
    goto/16 :goto_3f

    :cond_15e
    move-object v0, v1

    goto/16 :goto_36

    .line 122
    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_14d
        :pswitch_92
        :pswitch_14a
        :pswitch_e5
        :pswitch_150
    .end packed-switch
.end method

.method b()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/i;->b(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    .line 194
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->u()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 195
    invoke-static {}, Lcom/ss/android/downloadlib/a/a;->a()Lcom/ss/android/downloadlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->u()Lcom/ss/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/a;->a(Lcom/ss/android/a/a/c/b;)V

    .line 197
    :cond_27
    return-void
.end method

.method b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/i;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 337
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a/h;->c:Z

    if-nez v0, :cond_29

    .line 338
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    .line 339
    :goto_1c
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v2

    const-string v3, "file_status"

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-virtual {v2, v3, v0, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;ILcom/ss/android/downloadlib/a/b/c$a;)V

    .line 340
    iput-boolean v1, p0, Lcom/ss/android/downloadlib/a/h;->c:Z

    .line 343
    :cond_29
    return-void

    .line 338
    :cond_2a
    const/4 v0, 0x2

    goto :goto_1c
.end method

.method b(Z)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 200
    if-nez p1, :cond_e

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/a;->b()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method c()V
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    if-nez v0, :cond_b

    .line 351
    new-instance v0, Lcom/ss/android/downloadlib/a/h$3;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a/h$3;-><init>(Lcom/ss/android/downloadlib/a/h;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/h;->e:Lcom/ss/android/downloadlib/a/h$b;

    .line 358
    :cond_b
    return-void
.end method

.method c(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/h;->e(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/h;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    .line 533
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    if-nez v0, :cond_10

    .line 572
    :cond_f
    :goto_f
    return-void

    .line 536
    :cond_10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    .line 537
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, -0x4

    if-ne v0, v1, :cond_47

    .line 538
    :cond_1a
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 542
    :cond_23
    :goto_23
    packed-switch v0, :pswitch_data_8e

    :pswitch_26
    goto :goto_f

    .line 545
    :pswitch_27
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/h;->c()V

    .line 546
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadad/a/b/a;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v2, v2, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v3, v3, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v4, v4, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/downloadad/a/b/a;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_f

    .line 539
    :cond_47
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/i;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 540
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    goto :goto_23

    .line 549
    :pswitch_5b
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->b(JI)V

    goto :goto_f

    .line 558
    :pswitch_66
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->b(JI)V

    goto :goto_f

    .line 561
    :pswitch_71
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/h;->b:Lcom/ss/android/downloadlib/a/b/c$a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 562
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    goto :goto_f

    .line 565
    :cond_7f
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/a/h;->a:J

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->b(JI)V

    .line 566
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/h;->g()V

    goto :goto_f

    .line 542
    nop

    :pswitch_data_8e
    .packed-switch -0x4
        :pswitch_27
        :pswitch_71
        :pswitch_5b
        :pswitch_27
        :pswitch_26
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_26
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method
