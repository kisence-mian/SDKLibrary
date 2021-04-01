.class final Lcom/ss/android/socialbase/downloader/m/g$27;
.super Lcom/ss/android/socialbase/downloader/d/g$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/q;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/q;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$27;->a:Lcom/ss/android/socialbase/downloader/d/q;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$27;->a:Lcom/ss/android/socialbase/downloader/d/q;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/q;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
