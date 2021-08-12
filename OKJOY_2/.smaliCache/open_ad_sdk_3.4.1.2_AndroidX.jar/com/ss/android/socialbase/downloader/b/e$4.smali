.class Lcom/ss/android/socialbase/downloader/b/e$4;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;I)V
    .registers 3

    .line 444
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$4;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/b/e$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$4;->b:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->b(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e$4;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/b/e$4;->a:I

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 452
    goto :goto_16

    .line 450
    :catchall_12
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 453
    :goto_16
    return-void
.end method
