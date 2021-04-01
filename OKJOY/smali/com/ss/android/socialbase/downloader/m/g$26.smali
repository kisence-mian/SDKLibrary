.class final Lcom/ss/android/socialbase/downloader/m/g$26;
.super Lcom/ss/android/socialbase/downloader/d/s$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/u;)Lcom/ss/android/socialbase/downloader/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/u;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/u;)V
    .registers 2

    .prologue
    .line 355
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$26;->a:Lcom/ss/android/socialbase/downloader/d/u;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/d/r;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$26;->a:Lcom/ss/android/socialbase/downloader/d/u;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/r;)Lcom/ss/android/socialbase/downloader/d/t;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/d/u;->a(Lcom/ss/android/socialbase/downloader/d/t;)Z

    move-result v0

    return v0
.end method
