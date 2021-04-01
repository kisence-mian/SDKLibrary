.class Lcom/ss/android/socialbase/downloader/c/e$7;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->a(IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;IIIJ)V
    .registers 8

    .prologue
    .line 593
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->e:Lcom/ss/android/socialbase/downloader/c/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->a:I

    iput p3, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->b:I

    iput p4, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->c:I

    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->e:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/e;->b(Lcom/ss/android/socialbase/downloader/c/e;)Lcom/ss/android/socialbase/downloader/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 598
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->e:Lcom/ss/android/socialbase/downloader/c/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->a:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->b:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->c:I

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/c/e$7;->d:J

    invoke-static/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 602
    :goto_17
    return-void

    .line 599
    :catch_18
    move-exception v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method
