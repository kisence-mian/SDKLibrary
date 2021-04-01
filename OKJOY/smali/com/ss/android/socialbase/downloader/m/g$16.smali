.class final Lcom/ss/android/socialbase/downloader/m/g$16;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/af;)Lcom/ss/android/socialbase/downloader/d/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/af;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/af;)V
    .registers 2

    .prologue
    .line 729
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$16;->a:Lcom/ss/android/socialbase/downloader/d/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .prologue
    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$16;->a:Lcom/ss/android/socialbase/downloader/d/af;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/af;->a(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 737
    :goto_5
    return-void

    .line 734
    :catch_6
    move-exception v0

    .line 735
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
