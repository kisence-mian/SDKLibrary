.class Lcom/ss/android/socialbase/downloader/downloader/e$2;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/aj;


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

    .line 276
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e$2;->a:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e$2;->a:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->c(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    .line 281
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5

    .line 285
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/e;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFileAsTargetName onFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_16
    const-string v2, ""

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e$2;->a:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 287
    return-void
.end method
