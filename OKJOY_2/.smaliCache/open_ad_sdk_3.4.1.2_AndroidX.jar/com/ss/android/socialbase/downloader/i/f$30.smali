.class final Lcom/ss/android/socialbase/downloader/i/f$30;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/depend/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/u;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/u;)V
    .registers 2

    .line 412
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$30;->a:Lcom/ss/android/socialbase/downloader/depend/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$30;->a:Lcom/ss/android/socialbase/downloader/depend/u;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/u;->a(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 419
    goto :goto_a

    .line 417
    :catch_6
    move-exception p1

    .line 418
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    :goto_a
    return-void
.end method

.method public a()Z
    .registers 2

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$30;->a:Lcom/ss/android/socialbase/downloader/depend/u;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/u;->a()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 426
    :catch_7
    move-exception v0

    .line 427
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 429
    const/4 v0, 0x0

    return v0
.end method
