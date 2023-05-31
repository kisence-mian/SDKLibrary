.class final Lcom/ss/android/socialbase/downloader/m/g$9;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/e;)Lcom/ss/android/socialbase/downloader/downloader/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/e;)V
    .registers 2

    .prologue
    .line 613
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$9;->a:Lcom/ss/android/socialbase/downloader/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 4

    .prologue
    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$9;->a:Lcom/ss/android/socialbase/downloader/d/e;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/e;->a(J)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 621
    :goto_6
    return v0

    .line 618
    :catch_7
    move-exception v0

    .line 619
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 621
    const/4 v0, 0x0

    goto :goto_6
.end method
