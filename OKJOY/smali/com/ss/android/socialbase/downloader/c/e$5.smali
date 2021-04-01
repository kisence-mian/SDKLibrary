.class Lcom/ss/android/socialbase/downloader/c/e$5;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/b;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 498
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$5;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/c/e$5;->a:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$5;->b:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/e;->b(Lcom/ss/android/socialbase/downloader/c/e;)Lcom/ss/android/socialbase/downloader/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/c/g;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$5;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/c/e$5;->a:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/b;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 507
    :goto_11
    return-void

    .line 504
    :catch_12
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method
