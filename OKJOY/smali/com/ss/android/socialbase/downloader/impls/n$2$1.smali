.class Lcom/ss/android/socialbase/downloader/impls/n$2$1;
.super Ljava/lang/Object;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/n$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/n$2;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/n$2;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n$2$1;->a:Lcom/ss/android/socialbase/downloader/impls/n$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n$2$1;->a:Lcom/ss/android/socialbase/downloader/impls/n$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/impls/n$2;->a:Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/n;->c(Lcom/ss/android/socialbase/downloader/impls/n;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 208
    :goto_7
    return-void

    .line 205
    :catch_8
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
