.class final Lcom/ss/android/socialbase/downloader/m/g$2;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/m;)Lcom/ss/android/socialbase/downloader/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/m;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/m;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$2;->a:Lcom/ss/android/socialbase/downloader/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$2;->a:Lcom/ss/android/socialbase/downloader/d/m;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/m;->a()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 422
    :goto_5
    return-void

    .line 419
    :catch_6
    move-exception v0

    .line 420
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
