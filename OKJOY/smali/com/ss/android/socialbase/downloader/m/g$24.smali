.class final Lcom/ss/android/socialbase/downloader/m/g$24;
.super Lcom/ss/android/socialbase/downloader/d/ab$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/d/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/ac;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/ac;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$24;->a:Lcom/ss/android/socialbase/downloader/d/ac;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/ab$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$24;->a:Lcom/ss/android/socialbase/downloader/d/ac;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/ac;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$24;->a:Lcom/ss/android/socialbase/downloader/d/ac;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/ac;->b(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    return v0
.end method
