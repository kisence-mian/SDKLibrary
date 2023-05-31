.class final Lcom/ss/android/socialbase/downloader/m/g$18;
.super Lcom/ss/android/socialbase/downloader/d/m$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/o;)Lcom/ss/android/socialbase/downloader/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/o;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/o;)V
    .registers 2

    .prologue
    .line 761
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$18;->a:Lcom/ss/android/socialbase/downloader/d/o;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$18;->a:Lcom/ss/android/socialbase/downloader/d/o;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/o;->a()V

    .line 765
    return-void
.end method
