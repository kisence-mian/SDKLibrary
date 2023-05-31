.class Lcom/ss/android/socialbase/downloader/j/a$1;
.super Ljava/lang/Object;
.source "AsyncStreamReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/j/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/j/a;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 94
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 98
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->a(Lcom/ss/android/socialbase/downloader/j/a;)Lcom/ss/android/socialbase/downloader/j/b;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/j/a;->b(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, v0, Lcom/ss/android/socialbase/downloader/j/b;->b:I

    .line 100
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/j/a;->a(Lcom/ss/android/socialbase/downloader/j/a;Lcom/ss/android/socialbase/downloader/j/b;)V

    .line 101
    iget v0, v0, Lcom/ss/android/socialbase/downloader/j/b;->b:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_20} :catch_47
    .catchall {:try_start_5 .. :try_end_20} :catchall_76

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_2a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/j/a;->a(Lcom/ss/android/socialbase/downloader/j/a;Z)Z

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 114
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_44

    .line 116
    :try_start_3a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->b(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_43} :catch_9d

    .line 122
    :goto_43
    return-void

    .line 114
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0

    .line 105
    :catch_47
    move-exception v0

    .line 106
    :try_start_48
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/j/a;->a(Lcom/ss/android/socialbase/downloader/j/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_76

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/j/a;->a(Lcom/ss/android/socialbase/downloader/j/a;Z)Z

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 114
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_73

    .line 116
    :try_start_67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/j/a;->b(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_43

    .line 117
    :catch_71
    move-exception v0

    goto :goto_43

    .line 114
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0

    .line 110
    :catchall_76
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_7e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/j/a;->a(Lcom/ss/android/socialbase/downloader/j/a;Z)Z

    .line 113
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 114
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_98

    .line 116
    :try_start_8e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a$1;->a:Lcom/ss/android/socialbase/downloader/j/a;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/j/a;->b(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_97} :catch_9b

    .line 119
    :goto_97
    throw v0

    .line 114
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0

    .line 117
    :catch_9b
    move-exception v1

    goto :goto_97

    :catch_9d
    move-exception v0

    goto :goto_43
.end method
