.class Lcom/ss/android/socialbase/downloader/impls/r$1$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RetryScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/r$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/impls/r$1;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/r$1;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/r$1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 139
    const-string v0, "RetryScheduler"

    const-string v1, "network onAvailable: "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$1$1;->a:Lcom/ss/android/socialbase/downloader/impls/r$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/impls/r$1;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0, v2, v2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V

    .line 141
    return-void
.end method
