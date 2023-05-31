.class Lcom/ss/android/socialbase/downloader/c/e$6;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->a(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;IIJ)V
    .registers 6

    .prologue
    .line 561
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->d:Lcom/ss/android/socialbase/downloader/c/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->a:I

    iput p3, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->b:I

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->d:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/e;->b(Lcom/ss/android/socialbase/downloader/c/e;)Lcom/ss/android/socialbase/downloader/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 566
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->d:Lcom/ss/android/socialbase/downloader/c/e;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->a:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->b:I

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/c/e$6;->c:J

    invoke-static/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;IIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    .line 570
    :goto_15
    return-void

    .line 567
    :catch_16
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method
