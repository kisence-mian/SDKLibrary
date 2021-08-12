.class Lcom/ss/android/socialbase/downloader/b/e$9;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 671
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$9;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/e$9;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$9;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e$9;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->c(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/g;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 678
    goto :goto_14

    .line 676
    :catchall_10
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 679
    :goto_14
    return-void
.end method
