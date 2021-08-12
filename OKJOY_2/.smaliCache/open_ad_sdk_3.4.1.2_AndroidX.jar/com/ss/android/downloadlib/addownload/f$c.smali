.class Lcom/ss/android/downloadlib/addownload/f$c;
.super Landroid/os/AsyncTask;
.source "CommonDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/f;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadlib/addownload/f;)V
    .registers 2

    .line 758
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/downloadlib/addownload/f$1;)V
    .registers 3

    .line 758
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/f$c;-><init>(Lcom/ss/android/downloadlib/addownload/f;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 6

    .line 761
    const/4 v0, 0x0

    if-eqz p1, :cond_51

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_11

    aget-object v1, p1, v3

    .line 762
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_51

    .line 765
    :cond_11
    aget-object p1, p1, v3

    .line 767
    nop

    .line 768
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 769
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 771
    :cond_42
    if-nez v0, :cond_50

    .line 772
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 774
    :cond_50
    return-object v0

    .line 763
    :cond_51
    :goto_51
    return-object v0
.end method

.method protected a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 7

    .line 779
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 780
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/f$c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1fb

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v0

    if-nez v0, :cond_13

    goto/16 :goto_1fb

    .line 784
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->r()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/c;

    move-result-object v0

    .line 785
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/h;->a()Lcom/ss/android/downloadlib/addownload/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->r()I

    move-result v2

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/c;->b()I

    move-result v3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/h;->a(IILcom/ss/android/downloadad/a/b/b;)V

    .line 786
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/c;->a()Z

    move-result v0

    .line 787
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_ff

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_ff

    if-nez v0, :cond_70

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->isDownloadSuccessAndFileNotExist(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 788
    :cond_70
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    .line 790
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v3, -0x4

    if-ne v0, v3, :cond_9a

    .line 791
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_de

    .line 793
    :cond_9a
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 794
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->i(Lcom/ss/android/downloadlib/addownload/f;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 795
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/f;->j(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    goto :goto_de

    .line 797
    :cond_c3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->j(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V

    .line 800
    :goto_de
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->e(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/h;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V

    goto/16 :goto_1e6

    .line 802
    :cond_ff
    if-eqz p1, :cond_11f

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->isDownloadSuccessAndFileNotExist(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 803
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 804
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 806
    :cond_11f
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_17f

    .line 807
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    .line 808
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->i(Lcom/ss/android/downloadlib/addownload/f;)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 809
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->k(Lcom/ss/android/downloadlib/addownload/f;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v4}, Lcom/ss/android/downloadlib/addownload/f;->j(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V

    goto :goto_17f

    .line 811
    :cond_162
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->k(Lcom/ss/android/downloadlib/addownload/f;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/f;->j(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V

    .line 814
    :cond_17f
    :goto_17f
    if-eqz v0, :cond_1c3

    .line 816
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->h(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 817
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 818
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->e(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/h;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/f;->b(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/a/a/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V

    goto :goto_1e6

    .line 820
    :cond_1c3
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 821
    invoke-interface {v0}, Lcom/ss/android/a/a/b/d;->a()V

    .line 822
    goto :goto_1d1

    .line 823
    :cond_1e1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/addownload/f;->a(Lcom/ss/android/downloadlib/addownload/f;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 826
    :goto_1e6
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/f;->e(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/downloadlib/addownload/h;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/f$c;->a:Lcom/ss/android/downloadlib/addownload/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/f;->d(Lcom/ss/android/downloadlib/addownload/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/h;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f5} :catch_1f6

    .line 829
    goto :goto_1fa

    .line 827
    :catch_1f6
    move-exception p1

    .line 828
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 831
    :goto_1fa
    return-void

    .line 781
    :cond_1fb
    :goto_1fb
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 758
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f$c;->a([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 758
    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/f$c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method
