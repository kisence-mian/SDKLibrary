.class final Lcom/ss/android/socialbase/downloader/m/g$22;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/i;)V
    .registers 2

    .prologue
    .line 821
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->a(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 829
    :goto_5
    return-void

    .line 826
    :catch_6
    move-exception v0

    .line 827
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/i;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 874
    :goto_5
    return-void

    .line 871
    :catch_6
    move-exception v0

    .line 872
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->b(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 838
    :goto_5
    return-void

    .line 835
    :catch_6
    move-exception v0

    .line 836
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 906
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/i;->b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 910
    :goto_5
    return-void

    .line 907
    :catch_6
    move-exception v0

    .line 908
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->c(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 847
    :goto_5
    return-void

    .line 844
    :catch_6
    move-exception v0

    .line 845
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/i;->c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 919
    :goto_5
    return-void

    .line 916
    :catch_6
    move-exception v0

    .line 917
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->d(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 856
    :goto_5
    return-void

    .line 853
    :catch_6
    move-exception v0

    .line 854
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public e(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->e(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 865
    :goto_5
    return-void

    .line 862
    :catch_6
    move-exception v0

    .line 863
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public f(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->f(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 883
    :goto_5
    return-void

    .line 880
    :catch_6
    move-exception v0

    .line 881
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public g(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->g(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 892
    :goto_5
    return-void

    .line 889
    :catch_6
    move-exception v0

    .line 890
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public h(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$22;->a:Lcom/ss/android/socialbase/downloader/d/i;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/i;->h(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 901
    :goto_5
    return-void

    .line 898
    :catch_6
    move-exception v0

    .line 899
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
