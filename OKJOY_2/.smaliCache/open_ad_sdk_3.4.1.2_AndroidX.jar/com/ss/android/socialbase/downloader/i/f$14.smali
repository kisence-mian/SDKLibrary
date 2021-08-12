.class final Lcom/ss/android/socialbase/downloader/i/f$14;
.super Lcom/ss/android/socialbase/downloader/depend/c;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/j;)Lcom/ss/android/socialbase/downloader/depend/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/j;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/j;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$14;->a:Lcom/ss/android/socialbase/downloader/depend/j;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .line 750
    if-nez p1, :cond_3

    .line 751
    return-void

    .line 753
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$14;->a:Lcom/ss/android/socialbase/downloader/depend/j;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/j;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    .line 756
    goto :goto_11

    .line 754
    :catch_d
    move-exception p1

    .line 755
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 757
    :goto_11
    return-void
.end method

.method public a()[I
    .registers 2

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$14;->a:Lcom/ss/android/socialbase/downloader/depend/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/j;->b()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 773
    :catch_7
    move-exception v0

    .line 774
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 776
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$14;->a:Lcom/ss/android/socialbase/downloader/depend/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/j;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 763
    :catch_7
    move-exception v0

    .line 764
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 766
    const-string v0, ""

    return-object v0
.end method
