.class final Lcom/ss/android/socialbase/downloader/i/f$3;
.super Lcom/ss/android/socialbase/downloader/depend/f$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/n;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/n;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$3;->a:Lcom/ss/android/socialbase/downloader/depend/n;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$3;->a:Lcom/ss/android/socialbase/downloader/depend/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/depend/n;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 468
    return-void
.end method
