.class Lcom/ss/android/socialbase/downloader/b/e$5;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/b;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 476
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$5;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/e$5;->a:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$5;->b:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->b(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e$5;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/e$5;->a:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/b;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 484
    goto :goto_16

    .line 482
    :catchall_12
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 485
    :goto_16
    return-void
.end method
