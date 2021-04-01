.class final Lcom/ss/android/socialbase/downloader/m/g$5;
.super Lcom/ss/android/socialbase/downloader/d/e$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/i;)V
    .registers 2

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$5;->a:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$5;->a:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(J)I

    move-result v0

    return v0
.end method
