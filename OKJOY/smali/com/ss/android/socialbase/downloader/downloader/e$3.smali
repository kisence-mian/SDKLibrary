.class Lcom/ss/android/socialbase/downloader/downloader/e$3;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e$3;->a:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e$3;->a:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->c(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    .line 283
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 5

    .prologue
    .line 287
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/e;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFileAsTargetName onFailed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e$3;->a:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 289
    return-void

    .line 287
    :cond_26
    const-string v0, ""

    goto :goto_15
.end method
