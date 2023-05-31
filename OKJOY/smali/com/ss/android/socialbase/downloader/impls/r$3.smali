.class Lcom/ss/android/socialbase/downloader/impls/r$3;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/r;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/socialbase/downloader/impls/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/r;I)V
    .registers 3

    .prologue
    .line 322
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$3;->b:Lcom/ss/android/socialbase/downloader/impls/r;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/r$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$3;->b:Lcom/ss/android/socialbase/downloader/impls/r;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$3;->a:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r$3;->b:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/r;->d(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;IIZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 330
    :goto_e
    return-void

    .line 327
    :catch_f
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
