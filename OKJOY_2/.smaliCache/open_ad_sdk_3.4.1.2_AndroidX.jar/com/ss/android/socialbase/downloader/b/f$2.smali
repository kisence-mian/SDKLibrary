.class Lcom/ss/android/socialbase/downloader/b/f$2;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/b/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/f;Landroid/os/IBinder;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 86
    monitor-enter p0

    .line 88
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->b(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 89
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->c(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 90
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->c(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/b/f;->b(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_39

    .line 99
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->d(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_37

    .line 101
    :try_start_2a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->a:Landroid/os/IBinder;

    new-instance v2, Lcom/ss/android/socialbase/downloader/b/f$2$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/b/f$2$1;-><init>(Lcom/ss/android/socialbase/downloader/b/f$2;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_35

    .line 113
    :goto_34
    goto :goto_66

    .line 112
    :catchall_35
    move-exception v0

    .line 114
    goto :goto_66

    .line 115
    :catchall_37
    move-exception v0

    goto :goto_7f

    .line 93
    :catchall_39
    move-exception v1

    .line 94
    :try_start_3a
    const-string v2, "SqlDownloadCacheAidlWra"

    const-string v3, "onServiceConnected fail"

    invoke-static {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/f$a;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 96
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/f$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/b/f$a;->a()V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_68

    .line 99
    :cond_52
    :try_start_52
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->d(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_37

    .line 101
    :try_start_5b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->a:Landroid/os/IBinder;

    new-instance v2, Lcom/ss/android/socialbase/downloader/b/f$2$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/b/f$2$1;-><init>(Lcom/ss/android/socialbase/downloader/b/f$2;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_35

    goto :goto_34

    .line 115
    :goto_66
    :try_start_66
    monitor-exit p0

    .line 116
    return-void

    .line 99
    :catchall_68
    move-exception v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->b:Lcom/ss/android/socialbase/downloader/b/f;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/b/f;->d(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_37

    .line 101
    :try_start_72
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/f$2;->a:Landroid/os/IBinder;

    new-instance v3, Lcom/ss/android/socialbase/downloader/b/f$2$1;

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/downloader/b/f$2$1;-><init>(Lcom/ss/android/socialbase/downloader/b/f$2;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_7d

    .line 113
    goto :goto_7e

    .line 112
    :catchall_7d
    move-exception v0

    .line 113
    :goto_7e
    :try_start_7e
    throw v1

    .line 115
    :goto_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_37

    throw v0
.end method
