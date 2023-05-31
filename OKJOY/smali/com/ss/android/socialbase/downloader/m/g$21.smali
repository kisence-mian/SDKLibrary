.class final Lcom/ss/android/socialbase/downloader/m/g$21;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/g;)Lcom/ss/android/socialbase/downloader/d/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/g;)V
    .registers 2

    .prologue
    .line 805
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$21;->a:Lcom/ss/android/socialbase/downloader/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$21;->a:Lcom/ss/android/socialbase/downloader/d/g;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 813
    :goto_6
    return-object v0

    .line 810
    :catch_7
    move-exception v0

    .line 811
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 813
    const/4 v0, 0x0

    goto :goto_6
.end method
