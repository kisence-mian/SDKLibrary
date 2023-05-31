.class Lcom/ss/android/socialbase/appdownloader/d$3;
.super Ljava/lang/Object;
.source "AppDownloader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/d/z;
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

    .prologue
    .line 725
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->b:Lcom/ss/android/socialbase/appdownloader/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 728
    packed-switch p1, :pswitch_data_2e

    .line 748
    :goto_3
    :pswitch_3
    return-void

    .line 730
    :pswitch_4
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 733
    :pswitch_e
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_3

    .line 736
    :pswitch_14
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 743
    :pswitch_1e
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v4

    move v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(ILjava/lang/String;IJ)V

    goto :goto_3

    .line 728
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3
        :pswitch_1e
        :pswitch_3
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_14
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method public a(Z)Z
    .registers 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$3;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Z)Z

    move-result v0

    return v0
.end method
