.class final Lcom/ss/android/socialbase/downloader/m/g$3;
.super Lcom/ss/android/socialbase/downloader/d/f$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/l;)Lcom/ss/android/socialbase/downloader/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/l;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/l;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$3;->a:Lcom/ss/android/socialbase/downloader/d/l;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$3;->a:Lcom/ss/android/socialbase/downloader/d/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/d/l;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 433
    return-void
.end method
