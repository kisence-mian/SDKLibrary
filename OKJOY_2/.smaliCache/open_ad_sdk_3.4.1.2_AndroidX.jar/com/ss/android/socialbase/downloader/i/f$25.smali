.class final Lcom/ss/android/socialbase/downloader/i/f$25;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/i;)V
    .registers 2

    .line 922
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 929
    goto :goto_a

    .line 927
    :catch_6
    move-exception p1

    .line 928
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 930
    :goto_a
    return-void
.end method

.method public onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 992
    goto :goto_a

    .line 990
    :catch_6
    move-exception p1

    .line 991
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 993
    :goto_a
    return-void
.end method

.method public onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 983
    goto :goto_a

    .line 981
    :catch_6
    move-exception p1

    .line 982
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 984
    :goto_a
    return-void
.end method

.method public onFirstStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->g(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1001
    goto :goto_a

    .line 999
    :catch_6
    move-exception p1

    .line 1000
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1002
    :goto_a
    return-void
.end method

.method public onFirstSuccess(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 1007
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1010
    goto :goto_a

    .line 1008
    :catch_6
    move-exception p1

    .line 1009
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1011
    :goto_a
    return-void
.end method

.method public onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 965
    goto :goto_a

    .line 963
    :catch_6
    move-exception p1

    .line 964
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 966
    :goto_a
    return-void
.end method

.method public onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 938
    goto :goto_a

    .line 936
    :catch_6
    move-exception p1

    .line 937
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 939
    :goto_a
    return-void
.end method

.method public onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 956
    goto :goto_a

    .line 954
    :catch_6
    move-exception p1

    .line 955
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 957
    :goto_a
    return-void
.end method

.method public onRetry(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/i;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1019
    goto :goto_a

    .line 1017
    :catch_6
    move-exception p1

    .line 1018
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1020
    :goto_a
    return-void
.end method

.method public onRetryDelay(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/i;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1028
    goto :goto_a

    .line 1026
    :catch_6
    move-exception p1

    .line 1027
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1029
    :goto_a
    return-void
.end method

.method public onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 947
    goto :goto_a

    .line 945
    :catch_6
    move-exception p1

    .line 946
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 948
    :goto_a
    return-void
.end method

.method public onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$25;->a:Lcom/ss/android/socialbase/downloader/depend/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/i;->e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 974
    goto :goto_a

    .line 972
    :catch_6
    move-exception p1

    .line 973
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 975
    :goto_a
    return-void
.end method
