.class Lcom/ss/android/downloadlib/addownload/h$a;
.super Lcom/ss/android/socialbase/downloader/depend/a;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ss/android/downloadlib/h/l;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/h/l;)V
    .registers 2

    .line 722
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/a;-><init>()V

    .line 723
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/h$a;->a:Lcom/ss/android/downloadlib/h/l;

    .line 724
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .registers 5

    .line 777
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 778
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 779
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 781
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 782
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/h$a;->a:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/h/l;->sendMessage(Landroid/os/Message;)Z

    .line 783
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 773
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 774
    return-void
.end method

.method public onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 768
    const/4 v0, -0x4

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 769
    return-void
.end method

.method public onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 3

    .line 763
    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 764
    return-void
.end method

.method public onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 753
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 754
    return-void
.end method

.method public onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 728
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 729
    return-void
.end method

.method public onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 743
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 744
    return-void
.end method

.method public onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 738
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 739
    return-void
.end method

.method public onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 758
    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/h$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 759
    return-void
.end method
