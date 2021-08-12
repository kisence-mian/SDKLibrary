.class Lcom/ss/android/socialbase/downloader/b/e$6;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->a(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;IIJ)V
    .registers 6

    .line 527
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->d:Lcom/ss/android/socialbase/downloader/b/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->a:I

    iput p3, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->b:I

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->d:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->b(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 532
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->d:Lcom/ss/android/socialbase/downloader/b/e;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->a:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->b:I

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/b/e$6;->c:J

    invoke-static/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;IIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 535
    goto :goto_1a

    .line 533
    :catchall_16
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 536
    :goto_1a
    return-void
.end method
