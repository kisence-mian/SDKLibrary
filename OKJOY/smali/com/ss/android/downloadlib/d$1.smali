.class Lcom/ss/android/downloadlib/d$1;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/d;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ss/android/downloadlib/d$1;->a:Lcom/ss/android/downloadlib/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 76
    const-class v2, Lcom/ss/android/downloadlib/d;

    monitor-enter v2

    .line 78
    const/16 v1, 0x8

    :try_start_6
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sp_ad_download_event"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "sp_download_finish_cache"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "sp_delay_operation_info"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "sp_ttdownloader_md5"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "sp_name_installed_app"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "misc_config"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "sp_ad_install_back_dialog"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "sp_appdownloader"

    aput-object v4, v1, v3

    .line 87
    array-length v3, v1

    :goto_31
    if-ge v0, v3, :cond_4e

    aget-object v4, v1, v0

    .line 88
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_4b

    .line 90
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 93
    :cond_4e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    .line 94
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/impls/d;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_54} :catch_8a
    .catchall {:try_start_6 .. :try_end_54} :catchall_8d

    if-nez v1, :cond_58

    .line 95
    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_8d

    .line 108
    :goto_57
    return-void

    .line 97
    :cond_58
    :try_start_58
    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a()Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_69
    if-ltz v1, :cond_8b

    .line 99
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 100
    if-eqz v0, :cond_86

    .line 101
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->j(I)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_86} :catch_8a
    .catchall {:try_start_58 .. :try_end_86} :catchall_8d

    .line 98
    :cond_86
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_69

    .line 104
    :catch_8a
    move-exception v0

    .line 107
    :cond_8b
    :try_start_8b
    monitor-exit v2

    goto :goto_57

    :catchall_8d
    move-exception v0

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8d

    throw v0
.end method
