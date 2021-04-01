.class final Lcom/ss/android/socialbase/downloader/m/g$10;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/f;)Lcom/ss/android/socialbase/downloader/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/f;)V
    .registers 2

    .prologue
    .line 629
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$10;->a:Lcom/ss/android/socialbase/downloader/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    .registers 5

    .prologue
    .line 632
    if-nez p1, :cond_3

    .line 639
    :goto_2
    return-void

    .line 635
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$10;->a:Lcom/ss/android/socialbase/downloader/d/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/d/f;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_2

    .line 636
    :catch_9
    move-exception v0

    .line 637
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
