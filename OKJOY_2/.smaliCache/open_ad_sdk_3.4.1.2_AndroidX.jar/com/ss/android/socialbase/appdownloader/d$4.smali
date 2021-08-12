.class Lcom/ss/android/socialbase/appdownloader/d$4;
.super Ljava/lang/Object;
.source "AppDownloader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/depend/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/c/e;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/appdownloader/c/e;)V
    .registers 3

    .line 682
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->b:Lcom/ss/android/socialbase/appdownloader/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 714
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 685
    packed-switch p1, :pswitch_data_30

    :pswitch_3
    goto :goto_2e

    .line 690
    :pswitch_4
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 691
    goto :goto_2e

    .line 687
    :pswitch_a
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 688
    goto :goto_2e

    .line 693
    :pswitch_14
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    goto :goto_2e

    .line 700
    :pswitch_1e
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    move v2, p1

    move-object v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(ILjava/lang/String;IJ)V

    .line 701
    nop

    .line 705
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3
        :pswitch_1e
        :pswitch_3
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_14
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public a(Z)Z
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Z)Z

    move-result p1

    return p1
.end method
