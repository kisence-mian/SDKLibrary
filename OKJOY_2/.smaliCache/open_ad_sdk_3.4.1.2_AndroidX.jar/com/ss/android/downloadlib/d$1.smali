.class Lcom/ss/android/downloadlib/d$1;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d;->e()V
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

    .line 151
    iput-object p1, p0, Lcom/ss/android/downloadlib/d$1;->a:Lcom/ss/android/downloadlib/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 154
    const-class v0, Lcom/ss/android/downloadlib/d;

    monitor-enter v0

    .line 156
    const/16 v1, 0xd

    :try_start_5
    const-string v2, "sp_ad_download_event"

    const-string v3, "sp_download_finish_cache"

    const-string v4, "sp_delay_operation_info"

    const-string v5, "sp_ttdownloader_md5"

    const-string v6, "sp_name_installed_app"

    const-string v7, "misc_config"

    const-string v8, "sp_ad_install_back_dialog"

    const-string v9, "sp_ttdownloader_clean"

    const-string v10, "sp_order_download"

    const-string v11, "sp_a_b_c"

    const-string v12, "sp_ah_config"

    const-string v13, "sp_download_info"

    const-string v14, "sp_appdownloader"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    .line 170
    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v1, :cond_41

    aget-object v5, v2, v4

    .line 171
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 172
    if-eqz v5, :cond_3e

    .line 173
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 176
    :cond_41
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v1

    .line 177
    instance-of v2, v1, Lcom/ss/android/socialbase/downloader/impls/d;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_7c

    if-nez v2, :cond_4b

    .line 178
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_7f

    return-void

    .line 180
    :cond_4b
    :try_start_4b
    check-cast v1, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/d;->a()Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5b
    if-ltz v2, :cond_7b

    .line 182
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 183
    if-eqz v3, :cond_78

    .line 184
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->clearDownloadData(I)V
    :try_end_78
    .catchall {:try_start_4b .. :try_end_78} :catchall_7c

    .line 181
    :cond_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 189
    :cond_7b
    goto :goto_7d

    .line 187
    :catchall_7c
    move-exception v1

    .line 190
    :goto_7d
    :try_start_7d
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_7f

    throw v1
.end method
