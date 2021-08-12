.class Lcom/ss/android/socialbase/downloader/b/e$7;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->a(IIIJ)V
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

.field final synthetic e:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;IIIJ)V
    .registers 7

    .line 547
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->e:Lcom/ss/android/socialbase/downloader/b/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->a:I

    iput p3, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->b:I

    iput p4, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->c:I

    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->e:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->b(Lcom/ss/android/socialbase/downloader/b/e;)Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/b/g;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 552
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->e:Lcom/ss/android/socialbase/downloader/b/e;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->a:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->b:I

    iget v4, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->c:I

    iget-wide v5, p0, Lcom/ss/android/socialbase/downloader/b/e$7;->d:J

    invoke-static/range {v1 .. v7}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    .line 555
    goto :goto_1c

    .line 553
    :catchall_18
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 556
    :goto_1c
    return-void
.end method
