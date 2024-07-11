.class final Lcom/ss/android/socialbase/downloader/i/f$13;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/f;)Lcom/ss/android/socialbase/downloader/depend/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/f;)V
    .registers 2

    .line 730
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$13;->a:Lcom/ss/android/socialbase/downloader/depend/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 5

    .line 733
    if-nez p1, :cond_3

    .line 734
    return-void

    .line 736
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$13;->a:Lcom/ss/android/socialbase/downloader/depend/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/depend/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 739
    goto :goto_d

    .line 737
    :catch_9
    move-exception p1

    .line 738
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 740
    :goto_d
    return-void
.end method
