.class final Lcom/ss/android/socialbase/downloader/m/g$19;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ad;)Lcom/ss/android/socialbase/downloader/downloader/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/ad;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/ad;)V
    .registers 2

    .prologue
    .line 772
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$19;->a:Lcom/ss/android/socialbase/downloader/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 5

    .prologue
    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$19;->a:Lcom/ss/android/socialbase/downloader/d/ad;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/ad;->a(II)J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    .line 781
    :goto_6
    return-wide v0

    .line 778
    :catch_7
    move-exception v0

    .line 779
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 781
    const-wide/16 v0, 0x0

    goto :goto_6
.end method
