.class Lcom/ss/android/socialbase/downloader/e/a$1;
.super Ljava/lang/Object;
.source "AsyncStreamReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/e/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 96
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 100
    :goto_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;)Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, v2, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 102
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v2}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 103
    iget v2, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_4e

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4d

    .line 104
    nop

    .line 112
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 114
    :try_start_2d
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z

    .line 115
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_4a

    .line 117
    new-array v1, v1, [Ljava/io/Closeable;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_7a

    .line 116
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    .line 106
    :cond_4d
    goto :goto_5

    .line 107
    :catchall_4e
    move-exception v2

    .line 108
    :try_start_4f
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v2}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_7f

    .line 112
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 114
    :try_start_5e
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z

    .line 115
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_7c

    .line 117
    new-array v1, v1, [Ljava/io/Closeable;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 118
    :goto_7a
    nop

    .line 120
    return-void

    .line 116
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    .line 112
    :catchall_7f
    move-exception v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 114
    :try_start_87
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z

    .line 115
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_a4

    .line 117
    new-array v1, v1, [Ljava/io/Closeable;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v2

    .line 116
    :catchall_a4
    move-exception v0

    :try_start_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v0
.end method
