.class Lcom/ss/android/downloadlib/a/f$a;
.super Landroid/os/AsyncTask;
.source "CommonDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ss/android/socialbase/downloader/g/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/f;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadlib/a/f;)V
    .registers 2

    .prologue
    .line 575
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/downloadlib/a/f$1;)V
    .registers 3

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a/f$a;-><init>(Lcom/ss/android/downloadlib/a/f;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 578
    if-eqz p1, :cond_10

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    aget-object v1, p1, v3

    .line 579
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 591
    :cond_10
    :goto_10
    return-object v0

    .line 582
    :cond_11
    aget-object v1, p1, v3

    .line 585
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 586
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 588
    :cond_41
    if-nez v0, :cond_10

    .line 589
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    goto :goto_10
.end method

.method protected a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 596
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 597
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/f$a;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    if-nez v1, :cond_13

    .line 649
    :cond_12
    :goto_12
    return-void

    .line 601
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->p()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/a/b/b;

    move-result-object v1

    .line 602
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/b/b;->a()Z

    move-result v1

    .line 603
    if-eqz p1, :cond_f3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    if-eqz v2, :cond_f3

    if-nez v1, :cond_51

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 604
    :cond_51
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->k(I)V

    .line 609
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    .line 610
    const-string v2, "bugfix_remove_listener"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 611
    const/4 v0, 0x0

    .line 615
    :cond_72
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    if-eqz v1, :cond_d2

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    .line 616
    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    const/4 v2, -0x4

    if-eq v1, v2, :cond_96

    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d2

    .line 617
    :cond_96
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/g/c;

    .line 622
    :goto_9c
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->g(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/downloadlib/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->b(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/c/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a/h;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V

    .line 644
    :goto_bb
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->g(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/downloadlib/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/h;->b(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_ca} :catch_cc

    goto/16 :goto_12

    .line 645
    :catch_cc
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    .line 619
    :cond_d2
    :try_start_d2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/g/c;

    .line 620
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->f(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/d/w;)V

    goto :goto_9c

    .line 624
    :cond_f3
    if-eqz p1, :cond_114

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 625
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 626
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/g/c;

    .line 628
    :cond_114
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    if-eqz v0, :cond_14e

    .line 629
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->k(I)V

    .line 630
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->h(Lcom/ss/android/downloadlib/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/f;->f(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/d/w;)V

    .line 632
    :cond_14e
    if-eqz v1, :cond_193

    .line 634
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    new-instance v1, Lcom/ss/android/socialbase/downloader/g/c$a;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->d(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/g/c$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c$a;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/g/c;

    .line 635
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 636
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->g(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/downloadlib/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a/f;->e(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->b(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/c/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a/h;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/a/a/c/e;Ljava/util/List;)V

    goto/16 :goto_bb

    .line 638
    :cond_193
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 639
    invoke-interface {v0}, Lcom/ss/android/a/a/b/d;->a()V

    goto :goto_1a1

    .line 641
    :cond_1b1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$a;->a:Lcom/ss/android/downloadlib/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_1b7} :catch_cc

    goto/16 :goto_bb
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 575
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/f$a;->a([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 575
    check-cast p1, Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/f$a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    return-void
.end method
