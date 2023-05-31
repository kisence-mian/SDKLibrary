.class public abstract Lcom/ss/android/socialbase/downloader/impls/a;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/l/f$a;


# instance fields
.field protected final a:Lcom/ss/android/socialbase/downloader/l/f;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/ss/android/socialbase/downloader/m/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/m/h",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/ss/android/socialbase/downloader/downloader/k;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/h;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/m/h;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 75
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/l/f;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/l/f$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    .line 76
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 77
    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 9

    .prologue
    .line 767
    if-eqz p3, :cond_1d

    .line 768
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 769
    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {p3, v1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 770
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {p3, v2}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v2

    .line 771
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/d;->m()Z

    move-result v3

    .line 773
    const/4 v4, 0x1

    invoke-static {p1, v1, v4, v0, p2}, Lcom/ss/android/socialbase/downloader/m/e;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 774
    invoke-static {p1, v2, v3, v0, p2}, Lcom/ss/android/socialbase/downloader/m/e;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 778
    :cond_1d
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 7

    .prologue
    .line 431
    if-eqz p1, :cond_4f

    :try_start_2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    .line 432
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aq()Lcom/ss/android/socialbase/downloader/b/j;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    if-eq v0, v1, :cond_4f

    .line 433
    :cond_11
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 434
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/j;->a:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/j;)V

    .line 436
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->h()Landroid/app/AlarmManager;

    move-result-object v0

    .line 437
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ss.android.downloader.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    const-string v2, "extra_download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 440
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 443
    const-string v0, "AbsDownloadEngine"

    const-string v1, "cancelAlarm"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4f} :catch_50

    .line 448
    :cond_4f
    :goto_4f
    return-void

    .line 445
    :catch_50
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4f
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/d;Z)V
    .registers 15

    .prologue
    const/16 v6, 0x3eb

    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_6

    .line 221
    :cond_5
    :goto_5
    return-void

    .line 94
    :cond_6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    .line 95
    if-eqz v4, :cond_5

    .line 98
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->aH()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 99
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadInfo is Invalid, url is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " name is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " savePath is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v6, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    :goto_54
    invoke-static {v2, v4, v3, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto :goto_5

    :cond_58
    move v0, v1

    goto :goto_54

    .line 102
    :cond_5a
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    .line 104
    if-eqz p2, :cond_63

    .line 105
    invoke-direct {p0, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 108
    :cond_63
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    monitor-enter v2

    .line 109
    :try_start_66
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 111
    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_f8

    .line 113
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    monitor-enter v2

    .line 114
    :try_start_77
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 116
    :cond_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_fb

    .line 118
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    monitor-enter v2

    .line 119
    :try_start_88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    :cond_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_fe

    .line 124
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    monitor-enter v2

    .line 125
    :try_start_99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    :cond_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_101

    .line 129
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 134
    invoke-virtual {p0, v5}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 135
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 136
    :try_start_b8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 137
    if-eqz v0, :cond_104

    .line 140
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 144
    :goto_c5
    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_10a

    .line 148
    :cond_c6
    invoke-virtual {p0, v5}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->av()Z

    move-result v0

    if-nez v0, :cond_10d

    .line 149
    const-string v0, "AbsDownloadEngine"

    const-string v2, "another task with same id is downloading when tryDownload"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->X()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 151
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->p()V

    .line 153
    :cond_e2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const-string v3, "downloadInfo is isDownloading and addListenerToSameTask is false"

    invoke-direct {v2, v6, v3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_f3

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    :cond_f3
    invoke-static {v0, v4, v2, v1}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto/16 :goto_5

    .line 111
    :catchall_f8
    move-exception v0

    :try_start_f9
    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v0

    .line 116
    :catchall_fb
    move-exception v0

    :try_start_fc
    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v0

    .line 122
    :catchall_fe
    move-exception v0

    :try_start_ff
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v0

    .line 127
    :catchall_101
    move-exception v0

    :try_start_102
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v0

    .line 142
    :cond_104
    :try_start_104
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c5

    .line 144
    :catchall_10a
    move-exception v0

    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_10a

    throw v0

    .line 157
    :cond_10d
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->av()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 158
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/a;->c:Lcom/ss/android/socialbase/downloader/b/a;

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/a;)V

    .line 160
    :cond_118
    const v0, 0x8000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 162
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v2

    .line 163
    :try_start_124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/m/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 164
    monitor-exit v2
    :try_end_131
    .catchall {:try_start_124 .. :try_end_131} :catchall_198

    .line 168
    if-eqz v0, :cond_136

    .line 169
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/d;->b(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 173
    :cond_136
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v6

    .line 174
    :try_start_139
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 175
    if-eqz v0, :cond_19b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 176
    :goto_147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 177
    sub-long v2, v8, v2

    const-wide/16 v10, 0x32

    cmp-long v0, v2, v10

    if-gez v0, :cond_1e2

    .line 180
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 181
    if-eqz v0, :cond_1f7

    .line 182
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_1f7

    .line 184
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v2

    .line 185
    if-nez v2, :cond_1f4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/b/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 186
    const/4 v0, 0x1

    .line 192
    :goto_170
    if-eqz v0, :cond_1d0

    .line 193
    const-string v0, "AbsDownloadEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can add listener, oldTaskStatus is :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-ltz v2, :cond_19e

    const/4 v0, 0x2

    if-ge v2, v0, :cond_19e

    .line 197
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->p()V

    .line 220
    :goto_192
    monitor-exit v6

    goto/16 :goto_5

    :catchall_195
    move-exception v0

    monitor-exit v6
    :try_end_197
    .catchall {:try_start_139 .. :try_end_197} :catchall_195

    throw v0

    .line 164
    :catchall_198
    move-exception v0

    :try_start_199
    monitor-exit v2
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    throw v0

    .line 175
    :cond_19b
    const-wide/16 v2, 0x0

    goto :goto_147

    .line 199
    :cond_19e
    :try_start_19e
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->X()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 200
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->p()V

    goto :goto_192

    .line 202
    :cond_1a8
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v3, 0x3eb

    const-string v7, "has another same task within 50 milliseconds and addListenerToSameTask is false"

    invoke-direct {v2, v3, v7}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_1bb

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    :cond_1bb
    invoke-static {v0, v4, v2, v1}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 204
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {p0, v5, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_192

    .line 211
    :cond_1d0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    invoke-virtual {p0, v5, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_192

    .line 216
    :cond_1e2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Landroid/util/SparseArray;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v5, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_1f3
    .catchall {:try_start_19e .. :try_end_1f3} :catchall_195

    goto :goto_192

    :cond_1f4
    move v0, v1

    goto/16 :goto_170

    :cond_1f7
    move v0, v1

    move v2, v1

    goto/16 :goto_170
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->c(IZ)V

    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 6

    .prologue
    .line 237
    if-nez p1, :cond_3

    .line 274
    :cond_2
    :goto_2
    return-void

    .line 239
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2

    .line 243
    :try_start_9
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_22

    .line 244
    :try_start_c
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;Z)V

    .line 246
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 270
    :cond_1d
    :goto_1d
    monitor-exit v1

    goto :goto_2

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_22} :catch_22

    .line 271
    :catch_22
    move-exception v0

    goto :goto_2

    .line 247
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->r()Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    sget-object v2, Lcom/ss/android/socialbase/downloader/b/g;->c:Lcom/ss/android/socialbase/downloader/b/g;

    if-ne v0, v2, :cond_7b

    .line 248
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 249
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    if-ne v0, v2, :cond_4a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 250
    monitor-exit v1

    goto :goto_2

    .line 251
    :cond_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 253
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v3

    if-ne v0, v3, :cond_50

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 258
    :cond_6b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 259
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    invoke-direct {v0, p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V

    .line 260
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a()V

    goto :goto_1d

    .line 262
    :cond_7b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 263
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v3

    if-ne v2, v3, :cond_9a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 264
    monitor-exit v1

    goto/16 :goto_2

    .line 265
    :cond_9a
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    .line 266
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;Z)V

    .line 267
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v2

    if-eq v0, v2, :cond_1d

    .line 268
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_24 .. :try_end_b4} :catchall_1f

    goto/16 :goto_1d
.end method

.method private declared-synchronized c(IZ)V
    .registers 6

    .prologue
    .line 631
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_24

    .line 633
    if-eqz p2, :cond_16

    .line 634
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_16
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aY()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_5e
    .catchall {:try_start_1 .. :try_end_24} :catchall_63

    .line 640
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_29} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_5e
    .catchall {:try_start_24 .. :try_end_29} :catchall_63

    .line 644
    :goto_29
    const/4 v0, -0x4

    :try_start_2a
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 645
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 646
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 647
    :cond_3a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 648
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 649
    :cond_47
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v1
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_4a} :catch_5e
    .catchall {:try_start_2a .. :try_end_4a} :catchall_63

    .line 650
    :try_start_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/m/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_66

    .line 652
    :try_start_54
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->b(I)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_5e
    .catchall {:try_start_54 .. :try_end_57} :catchall_63

    .line 656
    :goto_57
    monitor-exit p0

    return-void

    .line 641
    :catch_59
    move-exception v0

    .line 642
    :try_start_5a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_63

    goto :goto_29

    .line 653
    :catch_5e
    move-exception v0

    .line 654
    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_57

    .line 631
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    .line 651
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v0
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_69} :catch_5e
    .catchall {:try_start_68 .. :try_end_69} :catchall_63
.end method

.method private o(I)Lcom/ss/android/socialbase/downloader/g/d;
    .registers 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 733
    if-nez v0, :cond_30

    .line 734
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 735
    if-nez v0, :cond_30

    .line 736
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 737
    if-nez v0, :cond_30

    .line 738
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 739
    if-nez v0, :cond_30

    .line 740
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 745
    :cond_30
    return-object v0
.end method

.method private p(I)V
    .registers 5

    .prologue
    .line 781
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 796
    :goto_8
    return-void

    .line 783
    :cond_9
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1

    .line 784
    :try_start_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 785
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->o()I

    move-result v0

    if-ne v0, p1, :cond_21

    .line 786
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 788
    :cond_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 789
    monitor-exit v1

    goto :goto_8

    .line 795
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw v0

    .line 791
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 792
    if-eqz v0, :cond_3c

    .line 793
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;Z)V

    .line 795
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_2b

    goto :goto_8
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
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
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    const/4 v0, 0x0

    .line 307
    :cond_7
    :goto_7
    return-object v0

    .line 293
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 295
    :cond_16
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v3

    .line 296
    :try_start_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 298
    const/4 v0, 0x0

    move v2, v0

    :goto_26
    if-ge v2, v4, :cond_51

    .line 299
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 300
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 301
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_4d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 304
    :cond_51
    monitor-exit v3

    move-object v0, v1

    goto :goto_7

    .line 305
    :catchall_54
    move-exception v0

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_19 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public declared-synchronized a(II)V
    .registers 5

    .prologue
    .line 804
    monitor-enter p0

    packed-switch p2, :pswitch_data_98

    .line 851
    :goto_4
    :pswitch_4
    monitor-exit p0

    return-void

    .line 806
    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 807
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 809
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    goto :goto_4

    .line 804
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 813
    :pswitch_1f
    :try_start_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 814
    if-eqz v0, :cond_3b

    .line 815
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_36

    .line 816
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 817
    :cond_36
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 819
    :cond_3b
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_4

    .line 822
    :pswitch_3f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 823
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_4

    .line 826
    :pswitch_48
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 827
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    .line 831
    :pswitch_5b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 832
    if-eqz v0, :cond_77

    .line 833
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_72

    .line 834
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 835
    :cond_72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 837
    :cond_77
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_4

    .line 840
    :pswitch_7b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 841
    if-eqz v0, :cond_92

    .line 842
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_92

    .line 843
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 846
    :cond_92
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V
    :try_end_95
    .catchall {:try_start_1f .. :try_end_95} :catchall_1c

    goto/16 :goto_4

    .line 804
    nop

    :pswitch_data_98
    .packed-switch -0x7
        :pswitch_1f
        :pswitch_48
        :pswitch_4
        :pswitch_3f
        :pswitch_6
        :pswitch_4
        :pswitch_1f
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5b
        :pswitch_7b
    .end packed-switch
.end method

.method public declared-synchronized a(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 8

    .prologue
    .line 675
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v0

    .line 676
    if-nez v0, :cond_13

    .line 677
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/m/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 679
    :cond_13
    if-eqz v0, :cond_18

    .line 680
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/g/d;->a(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 682
    :cond_18
    monitor-exit p0

    return-void

    .line 675
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/z;)V
    .registers 5

    .prologue
    .line 451
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 452
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 453
    if-eqz v0, :cond_10

    .line 454
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/g/d;->b(Lcom/ss/android/socialbase/downloader/d/z;)V

    .line 455
    :cond_10
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected abstract a(ILcom/ss/android/socialbase/downloader/g/d;)V
.end method

.method public a(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 855
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 856
    const/4 v0, 0x0

    .line 857
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_2c

    .line 858
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/e/a;

    move-object v1, v0

    .line 861
    :goto_e
    const-class v3, Lcom/ss/android/socialbase/downloader/impls/a;

    monitor-enter v3

    .line 862
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 863
    if-nez v0, :cond_1d

    .line 864
    monitor-exit v3

    .line 870
    :goto_1c
    return-void

    .line 867
    :cond_1d
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4, v1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 868
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 869
    monitor-exit v3

    goto :goto_1c

    :catchall_29
    move-exception v0

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    move-object v1, v0

    goto :goto_e
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 4

    .prologue
    .line 224
    if-nez p1, :cond_3

    .line 234
    :cond_2
    :goto_2
    return-void

    .line 226
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->r()Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    if-eq v0, v1, :cond_15

    .line 230
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_2

    .line 232
    :cond_15
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;Z)V

    goto :goto_2
.end method

.method public abstract a(Lcom/ss/android/socialbase/downloader/l/c;)V
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 7
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
    const/4 v0, 0x1

    .line 565
    monitor-enter p0

    const/high16 v1, 0x100000

    :try_start_4
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 566
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;)Z

    move-result v0

    move v1, v0

    .line 571
    :goto_13
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_5b

    .line 572
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 573
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 574
    if-nez v0, :cond_33

    .line 571
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_31
    move v1, v0

    .line 568
    goto :goto_13

    .line 576
    :cond_33
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v3

    .line 577
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 578
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v4

    if-eqz v4, :cond_4b

    if-eqz v1, :cond_2d

    .line 580
    :cond_4b
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/g/c;->a(Z)V

    .line 581
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/g/c;->b(Z)V

    .line 582
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_56} :catch_57
    .catchall {:try_start_4 .. :try_end_56} :catchall_5d

    goto :goto_2d

    .line 584
    :catch_57
    move-exception v0

    .line 585
    :try_start_58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5d

    .line 587
    :cond_5b
    monitor-exit p0

    return-void

    .line 565
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(I)Z
.end method

.method public a(IZ)Z
    .registers 10

    .prologue
    const/high16 v6, 0x10000

    const/4 v5, -0x4

    .line 346
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 347
    if-nez v0, :cond_17

    .line 348
    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 349
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v0

    .line 353
    :cond_17
    if-eqz v0, :cond_3d

    .line 354
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    invoke-direct {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V

    .line 355
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->c()V

    .line 357
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 358
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v2

    .line 359
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    .line 361
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    new-instance v4, Lcom/ss/android/socialbase/downloader/impls/a$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/ss/android/socialbase/downloader/impls/a$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/g/c;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/l/f;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_3d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 390
    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 391
    if-eqz v0, :cond_4e

    .line 392
    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 399
    :cond_4e
    :goto_4e
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V

    .line 400
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_53
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 396
    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    goto :goto_4e
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
    .line 749
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 750
    const/4 v0, 0x0

    .line 761
    :goto_7
    return-object v0

    .line 751
    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    .line 752
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 755
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 756
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 758
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_39
    move-object v0, v1

    .line 761
    goto :goto_7
.end method

.method public b()V
    .registers 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    .line 591
    if-nez v0, :cond_7

    .line 596
    :cond_6
    return-void

    .line 593
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 594
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    goto :goto_b
.end method

.method protected abstract b(I)V
.end method

.method public declared-synchronized b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 10

    .prologue
    .line 685
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_38

    .line 687
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/g/d;->b(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    .line 689
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 690
    if-eqz v1, :cond_36

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    if-eq p4, v0, :cond_1e

    sget-object v0, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p4, v0, :cond_36

    .line 691
    :cond_1e
    const/4 v0, 0x1

    .line 692
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    if-ne p4, v2, :cond_2a

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 693
    const/4 v0, 0x0

    .line 694
    :cond_2a
    if-eqz v0, :cond_36

    .line 695
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/a$4;

    invoke-direct {v2, p0, v1, p3}, Lcom/ss/android/socialbase/downloader/impls/a$4;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/d/w;)V

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/l/f;->post(Ljava/lang/Runnable;)Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_74

    .line 725
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 709
    :cond_38
    const v0, 0x8000

    :try_start_3b
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 710
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_36

    .line 714
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/m/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 715
    if-nez v0, :cond_70

    .line 716
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/d;

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;-><init>(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 717
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v1
    :try_end_66
    .catchall {:try_start_3b .. :try_end_66} :catchall_74

    .line 718
    :try_start_66
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/m/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_77

    .line 721
    :cond_70
    :try_start_70
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/g/d;->b(ILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_36

    .line 685
    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    .line 719
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_74
.end method

.method public b(IZ)V
    .registers 5

    .prologue
    .line 599
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_b

    .line 601
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 602
    :cond_b
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->c(I)Lcom/ss/android/socialbase/downloader/l/c;

    .line 604
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/a$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/l/f;->post(Ljava/lang/Runnable;)Z

    .line 611
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 612
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    .line 619
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 620
    if-eqz v1, :cond_2c

    .line 621
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 627
    :cond_2c
    :goto_2c
    return-void

    .line 624
    :cond_2d
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->c(IZ)V

    goto :goto_2c
.end method

.method protected abstract c(I)Lcom/ss/android/socialbase/downloader/l/c;
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 278
    if-nez v1, :cond_20

    .line 279
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 280
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 281
    if-eqz v0, :cond_1e

    .line 282
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 284
    :goto_19
    monitor-exit v2

    .line 286
    :goto_1a
    return-object v0

    .line 284
    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    move-object v0, v1

    goto :goto_19

    :cond_20
    move-object v0, v1

    goto :goto_1a
.end method

.method public e(I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 311
    const-string v0, "AbsDownloadEngine"

    const-string v2, "pause id"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(I)V

    .line 314
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 316
    if-nez v0, :cond_33

    .line 317
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 318
    :try_start_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 319
    if-eqz v0, :cond_2d

    .line 320
    new-instance v3, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V

    .line 321
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    .line 322
    monitor-exit v2

    move v0, v1

    .line 342
    :goto_2c
    return v0

    .line 324
    :cond_2d
    monitor-exit v2

    .line 342
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    goto :goto_2c

    .line 324
    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_30

    throw v0

    .line 326
    :cond_33
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 328
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v2

    if-ne v2, v1, :cond_5b

    .line 329
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v2

    .line 330
    :try_start_3f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 331
    if-eqz v0, :cond_56

    .line 332
    new-instance v3, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/l/f;

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V

    .line 333
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    .line 334
    monitor-exit v2

    move v0, v1

    goto :goto_2c

    .line 336
    :cond_56
    monitor-exit v2

    goto :goto_2e

    :catchall_58
    move-exception v0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_3f .. :try_end_5a} :catchall_58

    throw v0

    .line 337
    :cond_5b
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/b/f;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 338
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    move v0, v1

    .line 339
    goto :goto_2c
.end method

.method public declared-synchronized f(I)Z
    .registers 3

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 405
    if-eqz v0, :cond_11

    .line 406
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 411
    :goto_e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 408
    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_e

    .line 404
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(I)Z
    .registers 3

    .prologue
    .line 415
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 416
    if-eqz v0, :cond_11

    .line 417
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    .line 426
    :goto_e
    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    .line 419
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 420
    if-eqz v0, :cond_22

    .line 421
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1f

    goto :goto_e

    .line 415
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :cond_22
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public declared-synchronized h(I)Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 3

    .prologue
    .line 459
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 460
    if-eqz v0, :cond_11

    .line 461
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->k()Lcom/ss/android/socialbase/downloader/d/ac;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_4f

    move-result-object v0

    .line 478
    :goto_f
    monitor-exit p0

    return-object v0

    .line 463
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 464
    if-eqz v0, :cond_20

    .line 465
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->k()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    goto :goto_f

    .line 467
    :cond_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 468
    if-eqz v0, :cond_2f

    .line 469
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->k()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    goto :goto_f

    .line 471
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 472
    if-eqz v0, :cond_3e

    .line 473
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->k()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    goto :goto_f

    .line 475
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 476
    if-eqz v0, :cond_4d

    .line 477
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->k()Lcom/ss/android/socialbase/downloader/d/ac;
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4f

    move-result-object v0

    goto :goto_f

    .line 478
    :cond_4d
    const/4 v0, 0x0

    goto :goto_f

    .line 459
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(I)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 3

    .prologue
    .line 482
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 483
    if-eqz v0, :cond_11

    .line 484
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->j()Lcom/ss/android/socialbase/downloader/d/z;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_4f

    move-result-object v0

    .line 501
    :goto_f
    monitor-exit p0

    return-object v0

    .line 486
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 487
    if-eqz v0, :cond_20

    .line 488
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->j()Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    goto :goto_f

    .line 490
    :cond_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 491
    if-eqz v0, :cond_2f

    .line 492
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->j()Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    goto :goto_f

    .line 494
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 495
    if-eqz v0, :cond_3e

    .line 496
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->j()Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    goto :goto_f

    .line 498
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 499
    if-eqz v0, :cond_4d

    .line 500
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->j()Lcom/ss/android/socialbase/downloader/d/z;
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4f

    move-result-object v0

    goto :goto_f

    .line 501
    :cond_4d
    const/4 v0, 0x0

    goto :goto_f

    .line 482
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(I)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 3

    .prologue
    .line 505
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 506
    if-eqz v0, :cond_11

    .line 507
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->l()Lcom/ss/android/socialbase/downloader/d/q;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_4f

    move-result-object v0

    .line 524
    :goto_f
    monitor-exit p0

    return-object v0

    .line 509
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 510
    if-eqz v0, :cond_20

    .line 511
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->l()Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    goto :goto_f

    .line 513
    :cond_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 514
    if-eqz v0, :cond_2f

    .line 515
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->l()Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    goto :goto_f

    .line 517
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 518
    if-eqz v0, :cond_3e

    .line 519
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->l()Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    goto :goto_f

    .line 521
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 522
    if-eqz v0, :cond_4d

    .line 523
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->l()Lcom/ss/android/socialbase/downloader/d/q;
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4f

    move-result-object v0

    goto :goto_f

    .line 524
    :cond_4d
    const/4 v0, 0x0

    goto :goto_f

    .line 505
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k(I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 528
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 529
    if-eqz v0, :cond_1f

    .line 530
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_1f

    .line 532
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->au()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 533
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;Z)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_38

    .line 535
    :cond_1c
    const/4 v0, 0x1

    .line 544
    :goto_1d
    monitor-exit p0

    return v0

    .line 539
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->au()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 541
    new-instance v2, Lcom/ss/android/socialbase/downloader/g/d;

    invoke-direct {v2, v0}, Lcom/ss/android/socialbase/downloader/g/d;-><init>(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;Z)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_38

    :cond_36
    move v0, v1

    .line 544
    goto :goto_1d

    .line 528
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l(I)Z
    .registers 4

    .prologue
    .line 548
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 549
    if-eqz v0, :cond_1d

    .line 550
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 551
    if-eqz v1, :cond_1d

    .line 552
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->av()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 553
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    .line 555
    :cond_1a
    const/4 v0, 0x1

    .line 558
    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 548
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m(I)V
    .registers 5

    .prologue
    .line 659
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/d;

    .line 660
    if-eqz v0, :cond_18

    .line 661
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_18

    .line 663
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/c;->i(Z)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/g/d;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 668
    :cond_18
    monitor-exit p0

    return-void

    .line 659
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n(I)Z
    .registers 3

    .prologue
    .line 671
    monitor-enter p0

    if-eqz p1, :cond_1e

    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    move-result-object v0

    if-eqz v0, :cond_1e

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    monitor-exit p0

    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
