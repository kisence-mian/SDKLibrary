.class final Lcom/ss/android/socialbase/downloader/m/g$4;
.super Lcom/ss/android/socialbase/downloader/d/j$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/x;)Lcom/ss/android/socialbase/downloader/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/x;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/x;)V
    .registers 2

    .prologue
    .line 440
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$4;->a:Lcom/ss/android/socialbase/downloader/d/x;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/j$a;-><init>()V

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

    .prologue
    .line 455
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$4;->a:Lcom/ss/android/socialbase/downloader/d/x;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/x;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    :goto_6
    return-void

    .line 446
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/m/g$4;->a:Lcom/ss/android/socialbase/downloader/d/x;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/d/x;->a(Lorg/json/JSONObject;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_6

    .line 448
    :catch_12
    move-exception v0

    .line 449
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method public b()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$4;->a:Lcom/ss/android/socialbase/downloader/d/x;

    instance-of v0, v0, Lcom/ss/android/socialbase/downloader/d/c;

    if-eqz v0, :cond_f

    .line 461
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$4;->a:Lcom/ss/android/socialbase/downloader/d/x;

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/d/c;->a()[I

    move-result-object v0

    .line 463
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
