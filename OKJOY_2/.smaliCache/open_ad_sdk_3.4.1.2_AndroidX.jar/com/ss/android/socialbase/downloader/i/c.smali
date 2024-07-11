.class public Lcom/ss/android/socialbase/downloader/i/c;
.super Ljava/lang/Object;
.source "DownloadListenerUtils.java"


# direct methods
.method public static a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;Z",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Lcom/ss/android/socialbase/downloader/exception/BaseException;",
            ")V"
        }
    .end annotation

    .line 16
    if-eqz p2, :cond_74

    if-eqz p1, :cond_74

    :try_start_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-gtz p2, :cond_c

    goto/16 :goto_74

    .line 20
    :cond_c
    monitor-enter p1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_6f

    .line 21
    :try_start_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p2

    .line 22
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_6c

    .line 23
    const/4 p1, 0x0

    :goto_13
    :try_start_13
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_6b

    .line 24
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 25
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    .line 26
    if-eqz v0, :cond_68

    .line 27
    packed-switch p0, :pswitch_data_76

    :pswitch_28
    goto :goto_68

    .line 68
    :pswitch_29
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/s;

    if-eqz v1, :cond_68

    .line 69
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/s;

    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/s;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_68

    .line 60
    :pswitch_33
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetryDelay(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 61
    goto :goto_68

    .line 51
    :pswitch_37
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFirstStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 52
    goto :goto_68

    .line 57
    :pswitch_3b
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetry(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 58
    goto :goto_68

    .line 32
    :pswitch_3f
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 33
    goto :goto_68

    .line 29
    :pswitch_43
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 30
    goto :goto_68

    .line 41
    :pswitch_47
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 42
    goto :goto_68

    .line 38
    :pswitch_4b
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 39
    goto :goto_68

    .line 35
    :pswitch_4f
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 36
    goto :goto_68

    .line 48
    :pswitch_53
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 49
    goto :goto_68

    .line 45
    :pswitch_57
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 46
    goto :goto_68

    .line 54
    :pswitch_5b
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFirstSuccess(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 55
    goto :goto_68

    .line 63
    :pswitch_5f
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;

    if-eqz v1, :cond_68

    .line 64
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;

    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onIntercept(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_68
    .catchall {:try_start_13 .. :try_end_68} :catchall_6f

    .line 23
    :cond_68
    :goto_68
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 79
    :cond_6b
    goto :goto_73

    .line 22
    :catchall_6c
    move-exception p0

    :try_start_6d
    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 77
    :catchall_6f
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :goto_73
    return-void

    .line 17
    :cond_74
    :goto_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch -0x7
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_57
        :pswitch_4b
        :pswitch_28
        :pswitch_47
        :pswitch_43
        :pswitch_28
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method
