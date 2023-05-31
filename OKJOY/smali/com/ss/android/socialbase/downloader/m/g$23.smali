.class final Lcom/ss/android/socialbase/downloader/m/g$23;
.super Lcom/ss/android/socialbase/downloader/d/y$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/d/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/z;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/z;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$23;->a:Lcom/ss/android/socialbase/downloader/d/z;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/y$a;-><init>()V

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
    .line 320
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$23;->a:Lcom/ss/android/socialbase/downloader/d/z;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/z;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$23;->a:Lcom/ss/android/socialbase/downloader/d/z;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public a(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$23;->a:Lcom/ss/android/socialbase/downloader/d/z;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/z;->a(Z)Z

    move-result v0

    return v0
.end method
