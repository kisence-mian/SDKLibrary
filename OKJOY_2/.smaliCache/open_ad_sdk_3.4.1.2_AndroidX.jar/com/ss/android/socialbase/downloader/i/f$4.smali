.class final Lcom/ss/android/socialbase/downloader/i/f$4;
.super Lcom/ss/android/socialbase/downloader/depend/j$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/depend/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/z;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/z;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$4;->a:Lcom/ss/android/socialbase/downloader/depend/z;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$4;->a:Lcom/ss/android/socialbase/downloader/depend/z;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/z;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    return-void

    .line 481
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$4;->a:Lcom/ss/android/socialbase/downloader/depend/z;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/depend/z;->a(Lorg/json/JSONObject;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_12

    .line 485
    goto :goto_16

    .line 483
    :catch_12
    move-exception p1

    .line 484
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 486
    :goto_16
    return-void
.end method

.method public b()[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$4;->a:Lcom/ss/android/socialbase/downloader/depend/z;

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/c;

    if-eqz v1, :cond_d

    .line 496
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/depend/c;->a()[I

    move-result-object v0

    return-object v0

    .line 498
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
