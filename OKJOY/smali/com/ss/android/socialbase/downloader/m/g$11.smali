.class final Lcom/ss/android/socialbase/downloader/m/g$11;
.super Lcom/ss/android/socialbase/downloader/d/c;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/j;)Lcom/ss/android/socialbase/downloader/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/j;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/j;)V
    .registers 2

    .prologue
    .line 646
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$11;->a:Lcom/ss/android/socialbase/downloader/d/j;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 649
    if-nez p1, :cond_3

    .line 656
    :goto_2
    return-void

    .line 652
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$11;->a:Lcom/ss/android/socialbase/downloader/d/j;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/d/j;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    .line 653
    :catch_d
    move-exception v0

    .line 654
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public a()[I
    .registers 2

    .prologue
    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$11;->a:Lcom/ss/android/socialbase/downloader/d/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/j;->b()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 675
    :goto_6
    return-object v0

    .line 672
    :catch_7
    move-exception v0

    .line 673
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 675
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$11;->a:Lcom/ss/android/socialbase/downloader/d/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/j;->a()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 665
    :goto_6
    return-object v0

    .line 662
    :catch_7
    move-exception v0

    .line 663
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 665
    const-string v0, ""

    goto :goto_6
.end method
