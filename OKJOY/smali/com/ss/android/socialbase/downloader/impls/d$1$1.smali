.class Lcom/ss/android/socialbase/downloader/impls/d$1$1;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/d$1;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/d$1;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/d$1;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/k;->a()Z

    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/d$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/impls/d$1;->a:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->h()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 61
    :goto_a
    return-void

    .line 58
    :catch_b
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
