.class public Lcom/ss/android/socialbase/downloader/m/e;
.super Ljava/lang/Object;
.source "DownloadListenerUtils.java"


# direct methods
.method public static a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;Z",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            "Lcom/ss/android/socialbase/downloader/e/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    :try_start_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 77
    :cond_a
    :goto_a
    return-void

    .line 22
    :cond_b
    monitor-enter p1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_2f

    .line 23
    :try_start_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 24
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2c

    .line 25
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    :try_start_13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 26
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 27
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/w;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_23} :catch_2f

    .line 28
    if-eqz v0, :cond_28

    .line 29
    packed-switch p0, :pswitch_data_6a

    .line 25
    :cond_28
    :goto_28
    :pswitch_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 24
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 74
    :catch_2f
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 31
    :pswitch_34
    :try_start_34
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 34
    :pswitch_38
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 37
    :pswitch_3c
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->e(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 40
    :pswitch_40
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/d/w;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_28

    .line 43
    :pswitch_44
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 47
    :pswitch_48
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 50
    :pswitch_4c
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->f(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 53
    :pswitch_50
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->g(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 56
    :pswitch_54
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/d/w;->h(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_28

    .line 59
    :pswitch_58
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/d/w;->b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_28

    .line 62
    :pswitch_5c
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/d/w;->c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_28

    .line 65
    :pswitch_60
    instance-of v3, v0, Lcom/ss/android/socialbase/downloader/d/b;

    if-eqz v3, :cond_28

    .line 66
    check-cast v0, Lcom/ss/android/socialbase/downloader/d/b;

    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/d/b;->i(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_69} :catch_2f

    goto :goto_28

    .line 29
    :pswitch_data_6a
    .packed-switch -0x7
        :pswitch_60
        :pswitch_54
        :pswitch_48
        :pswitch_4c
        :pswitch_3c
        :pswitch_48
        :pswitch_40
        :pswitch_28
        :pswitch_44
        :pswitch_34
        :pswitch_28
        :pswitch_38
        :pswitch_58
        :pswitch_50
        :pswitch_5c
    .end packed-switch
.end method
