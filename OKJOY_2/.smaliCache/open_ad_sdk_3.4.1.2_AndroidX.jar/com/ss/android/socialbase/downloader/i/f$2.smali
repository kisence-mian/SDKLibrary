.class final Lcom/ss/android/socialbase/downloader/i/f$2;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/o;)Lcom/ss/android/socialbase/downloader/depend/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/o;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/o;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$2;->a:Lcom/ss/android/socialbase/downloader/depend/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$2;->a:Lcom/ss/android/socialbase/downloader/depend/o;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/o;->a()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 456
    goto :goto_a

    .line 454
    :catch_6
    move-exception v0

    .line 455
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 457
    :goto_a
    return-void
.end method
