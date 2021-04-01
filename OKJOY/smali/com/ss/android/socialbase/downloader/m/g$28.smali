.class final Lcom/ss/android/socialbase/downloader/m/g$28;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/r;)Lcom/ss/android/socialbase/downloader/d/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/r;)V
    .registers 2

    .prologue
    .line 377
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$28;->a:Lcom/ss/android/socialbase/downloader/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$28;->a:Lcom/ss/android/socialbase/downloader/d/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/r;->a(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 385
    :goto_5
    return-void

    .line 382
    :catch_6
    move-exception v0

    .line 383
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$28;->a:Lcom/ss/android/socialbase/downloader/d/r;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/r;->a()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 394
    :goto_6
    return v0

    .line 391
    :catch_7
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 394
    const/4 v0, 0x0

    goto :goto_6
.end method
