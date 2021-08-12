.class Lcom/ss/android/socialbase/downloader/downloader/c$1;
.super Ljava/lang/Object;
.source "DownloadProcessDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/l;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/downloader/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/c;Lcom/ss/android/socialbase/downloader/downloader/l;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 4

    .line 522
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/c$1;->c:Lcom/ss/android/socialbase/downloader/downloader/c;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/c$1;->a:Lcom/ss/android/socialbase/downloader/downloader/l;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/c$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c$1;->a:Lcom/ss/android/socialbase/downloader/downloader/l;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 526
    return-void
.end method
