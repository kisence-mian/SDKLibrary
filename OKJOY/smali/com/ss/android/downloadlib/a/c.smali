.class public Lcom/ss/android/downloadlib/a/c;
.super Ljava/lang/Object;
.source "AdDownloadSecurityManager.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/a/c;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/c;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/ss/android/downloadlib/a/c;->a:Lcom/ss/android/downloadlib/a/c;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/ss/android/downloadlib/a/c;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/a/c;->a:Lcom/ss/android/downloadlib/a/c;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/ss/android/downloadlib/a/c;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/c;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/c;->a:Lcom/ss/android/downloadlib/a/c;

    .line 36
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 38
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/a/c;->a:Lcom/ss/android/downloadlib/a/c;

    return-object v0

    .line 36
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 79
    :cond_6
    :goto_6
    return-void

    .line 50
    :cond_7
    if-eqz p2, :cond_6

    .line 54
    :try_start_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_4e

    .line 61
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_34

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c;->b:Landroid/os/Handler;

    .line 64
    :cond_34
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->j(I)V

    .line 66
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/downloadlib/a/c$1;

    invoke-direct {v2, p0, v0}, Lcom/ss/android/downloadlib/a/c$1;-><init>(Lcom/ss/android/downloadlib/a/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 58
    :catch_4e
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "forbid_invalidte_download_file_install"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 89
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method
