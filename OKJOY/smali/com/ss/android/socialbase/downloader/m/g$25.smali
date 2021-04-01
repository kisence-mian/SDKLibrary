.class final Lcom/ss/android/socialbase/downloader/m/g$25;
.super Lcom/ss/android/socialbase/downloader/d/ad$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/d/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/r;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$25;->a:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/ad$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$25;->a:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(II)J

    move-result-wide v0

    return-wide v0
.end method
