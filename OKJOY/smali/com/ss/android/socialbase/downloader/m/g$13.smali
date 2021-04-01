.class final Lcom/ss/android/socialbase/downloader/m/g$13;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/s;)Lcom/ss/android/socialbase/downloader/d/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/s;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/s;)V
    .registers 2

    .prologue
    .line 683
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$13;->a:Lcom/ss/android/socialbase/downloader/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/d/t;)Z
    .registers 4

    .prologue
    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$13;->a:Lcom/ss/android/socialbase/downloader/d/s;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/t;)Lcom/ss/android/socialbase/downloader/d/r;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/d/s;->a(Lcom/ss/android/socialbase/downloader/d/r;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 691
    :goto_a
    return v0

    .line 688
    :catch_b
    move-exception v0

    .line 689
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 691
    const/4 v0, 0x0

    goto :goto_a
.end method
