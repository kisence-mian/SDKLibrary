.class public Lcom/ss/android/socialbase/downloader/downloader/c;
.super Ljava/lang/Object;
.source "DownloadProcessDispatcher.java"


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/downloader/c;


# instance fields
.field private volatile b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/downloader/c;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    if-nez v0, :cond_f

    .line 44
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v1

    .line 45
    :try_start_7
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    .line 46
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 48
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Lcom/ss/android/socialbase/downloader/downloader/c;

    return-object v0

    .line 46
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    if-eqz p1, :cond_2b

    .line 363
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 364
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    .line 365
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {p3, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    .line 370
    :cond_2b
    if-eqz p2, :cond_51

    .line 371
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 372
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_31

    .line 373
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {p3, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_31

    .line 378
    :cond_51
    const/4 v0, 0x0

    move v1, v0

    :goto_53
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    .line 379
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 380
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 381
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 383
    :cond_6a
    return-object v2
.end method

.method private b(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/downloader/n;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    if-nez p1, :cond_6

    .line 178
    :cond_5
    :goto_5
    return-object v0

    .line 135
    :cond_6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_5

    .line 138
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->T()Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v1

    .line 139
    :goto_13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    move v0, v1

    .line 142
    :cond_20
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v4

    .line 143
    if-ltz v4, :cond_7c

    if-eq v4, v0, :cond_7c

    .line 145
    if-ne v4, v1, :cond_90

    .line 146
    :try_start_2e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 147
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(I)V

    .line 148
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    .line 149
    if-eqz v4, :cond_57

    .line 150
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 152
    :cond_57
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v4

    if-le v4, v1, :cond_7c

    .line 153
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object v4

    .line 154
    if-eqz v4, :cond_7c

    .line 155
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 156
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_7c} :catch_c2

    .line 177
    :cond_7c
    :goto_7c
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    if-ne v0, v1, :cond_d6

    move v3, v1

    :goto_83
    invoke-virtual {p0, v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 178
    if-ne v0, v1, :cond_d8

    :goto_88
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    goto/16 :goto_5

    :cond_8e
    move v0, v2

    .line 138
    goto :goto_13

    .line 161
    :cond_90
    :try_start_90
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 162
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(I)V

    .line 163
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object v4

    .line 164
    if-eqz v4, :cond_7c

    .line 165
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 166
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V

    goto :goto_7c

    .line 173
    :catch_c2
    move-exception v4

    goto :goto_7c

    .line 169
    :cond_c4
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/downloader/g/d;->a(Z)V

    .line 170
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(II)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_d5} :catch_c2

    goto :goto_7c

    :cond_d6
    move v3, v2

    .line 177
    goto :goto_83

    :cond_d8
    move v1, v2

    .line 178
    goto :goto_88
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->g()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 117
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->m(I)I

    move-result v0

    .line 119
    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result v0

    goto :goto_19
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 295
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 5
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
    .line 308
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 309
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 310
    if-nez v0, :cond_18

    if-nez v1, :cond_18

    .line 311
    const/4 v0, 0x0

    .line 318
    :cond_17
    :goto_17
    return-object v0

    .line 313
    :cond_18
    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 315
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 316
    goto :goto_17

    .line 318
    :cond_26
    if-nez v0, :cond_17

    move-object v0, v1

    goto :goto_17
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 11

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 432
    if-nez v0, :cond_7

    .line 435
    :goto_6
    return-void

    .line 434
    :cond_7
    if-nez p2, :cond_12

    const/4 v2, 0x0

    :goto_a
    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    goto :goto_6

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a
.end method

.method public a(IZ)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    .line 96
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 97
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(IZ)V

    .line 99
    :cond_1b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->b()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v0

    if-nez v0, :cond_49

    .line 101
    :try_start_2d
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v1, "com.ss.android.downloader.action.PROCESS_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "extra_download_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_49} :catch_4a

    .line 109
    :cond_49
    :goto_49
    return-void

    .line 105
    :catch_4a
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_49
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 8

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Lcom/ss/android/socialbase/downloader/g/d;)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 492
    if-nez v0, :cond_2d

    .line 493
    if-eqz p1, :cond_2a

    .line 494
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v0, 0x3eb

    const-string v4, "tryDownload but getDownloadHandler failed"

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    :goto_27
    invoke-static {v1, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 509
    :cond_2a
    :goto_2a
    return-void

    .line 494
    :cond_2b
    const/4 v0, 0x0

    goto :goto_27

    .line 498
    :cond_2d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 499
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/c$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/c;Lcom/ss/android/socialbase/downloader/downloader/n;Lcom/ss/android/socialbase/downloader/g/d;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    .line 506
    :cond_40
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_2a
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
    .line 405
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_a

    .line 407
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/util/List;)V

    .line 408
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_14

    .line 410
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/util/List;)V

    .line 411
    :cond_14
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 446
    if-nez p1, :cond_4

    .line 451
    :cond_3
    :goto_3
    return v0

    .line 448
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_3

    .line 451
    invoke-interface {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    goto :goto_3
.end method

.method public declared-synchronized b(I)I
    .registers 3

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v0

    if-nez v0, :cond_c

    .line 124
    const/4 v0, -0x1

    .line 125
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1e

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_a

    :cond_1c
    const/4 v0, 0x0

    goto :goto_a

    .line 123
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 5

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    .line 302
    if-nez v1, :cond_c

    .line 303
    const/4 v0, 0x0

    .line 304
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    goto :goto_b
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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
    const/4 v1, 0x0

    .line 388
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 390
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_21

    .line 393
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 395
    :goto_11
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_1c

    .line 398
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 400
    :cond_1c
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_11
.end method

.method public b()V
    .registers 4

    .prologue
    .line 83
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    monitor-enter v1

    .line 84
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 85
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/aa;

    .line 87
    if-eqz v0, :cond_9

    .line 88
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/aa;->a()V

    goto :goto_9

    .line 91
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 92
    return-void
.end method

.method public b(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 11

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 440
    if-nez v0, :cond_7

    .line 443
    :goto_6
    return-void

    .line 442
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    goto :goto_6
.end method

.method public declared-synchronized b(IZ)V
    .registers 5

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Landroid/util/SparseArray;

    if-eqz p2, :cond_c

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :cond_c
    :try_start_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_f

    goto :goto_7

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/downloader/n;
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v1

    if-ne v1, v0, :cond_12

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v1

    if-nez v1, :cond_12

    :goto_d
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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
    const/4 v1, 0x0

    .line 459
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 461
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_21

    .line 464
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 466
    :goto_11
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v3

    .line 468
    if-eqz v3, :cond_1c

    .line 469
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 471
    :cond_1c
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_11
.end method

.method public c()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_a

    .line 256
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a()V

    .line 257
    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_14

    .line 259
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a()V

    .line 260
    :cond_14
    return-void
.end method

.method public c(IZ)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 191
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 192
    const/high16 v0, 0x800000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_23

    .line 199
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_19

    .line 201
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    .line 204
    :cond_19
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_22

    .line 206
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    .line 226
    :cond_22
    :goto_22
    return-void

    .line 209
    :cond_23
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_2c

    .line 211
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    .line 214
    :cond_2c
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_22

    .line 216
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    goto :goto_22

    .line 220
    :cond_36
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_3f

    .line 222
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    .line 224
    :cond_3f
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(II)V

    goto :goto_22
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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
    const/4 v1, 0x0

    .line 475
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 477
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_21

    .line 480
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 482
    :goto_11
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v3

    .line 484
    if-eqz v3, :cond_1c

    .line 485
    invoke-interface {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 487
    :cond_1c
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_11
.end method

.method public d(I)V
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 184
    if-nez v0, :cond_7

    .line 187
    :goto_6
    return-void

    .line 186
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(I)V

    goto :goto_6
.end method

.method public d(IZ)V
    .registers 4

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 416
    if-nez v0, :cond_7

    .line 419
    :goto_6
    return-void

    .line 418
    :cond_7
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(IZ)V

    goto :goto_6
.end method

.method public e(I)Z
    .registers 3

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 231
    if-nez v0, :cond_8

    .line 232
    const/4 v0, 0x0

    .line 233
    :goto_7
    return v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(I)Z

    move-result v0

    goto :goto_7
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 239
    if-nez v0, :cond_7

    .line 242
    :goto_6
    return-void

    .line 241
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(I)V

    goto :goto_6
.end method

.method public g(I)V
    .registers 3

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 247
    if-nez v0, :cond_7

    .line 250
    :goto_6
    return-void

    .line 249
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(I)V

    goto :goto_6
.end method

.method public h(I)I
    .registers 3

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 273
    if-nez v0, :cond_8

    .line 274
    const/4 v0, 0x0

    .line 275
    :goto_7
    return v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->f(I)I

    move-result v0

    goto :goto_7
.end method

.method public i(I)Z
    .registers 3

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 281
    if-nez v0, :cond_8

    .line 282
    const/4 v0, 0x0

    .line 283
    :goto_7
    return v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->g(I)Z

    move-result v0

    goto :goto_7
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 289
    if-nez v0, :cond_8

    .line 290
    const/4 v0, 0x0

    .line 291
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    goto :goto_7
.end method

.method public k(I)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 3

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 323
    if-nez v0, :cond_8

    .line 324
    const/4 v0, 0x0

    .line 325
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->q(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    goto :goto_7
.end method

.method public l(I)Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 3

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 330
    if-nez v0, :cond_8

    .line 331
    const/4 v0, 0x0

    .line 332
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->r(I)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    goto :goto_7
.end method

.method public m(I)Z
    .registers 3

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 513
    if-nez v0, :cond_8

    .line 514
    const/4 v0, 0x0

    .line 515
    :goto_7
    return v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->l(I)Z

    move-result v0

    goto :goto_7
.end method

.method public n(I)V
    .registers 3

    .prologue
    .line 529
    if-nez p1, :cond_3

    .line 536
    :cond_2
    :goto_2
    return-void

    .line 531
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    .line 532
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_2

    .line 535
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->d()V

    goto :goto_2
.end method

.method public o(I)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 3

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 555
    if-nez v0, :cond_8

    .line 556
    const/4 v0, 0x0

    .line 557
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->s(I)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    goto :goto_7
.end method
