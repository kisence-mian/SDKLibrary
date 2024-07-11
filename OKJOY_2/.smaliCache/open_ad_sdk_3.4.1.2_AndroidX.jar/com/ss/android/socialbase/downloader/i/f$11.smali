.class final Lcom/ss/android/socialbase/downloader/i/f$11;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/e;)Lcom/ss/android/socialbase/downloader/downloader/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/e;)V
    .registers 2

    .line 714
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$11;->a:Lcom/ss/android/socialbase/downloader/depend/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 4

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$11;->a:Lcom/ss/android/socialbase/downloader/depend/e;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/e;->a(J)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 719
    :catch_7
    move-exception p1

    .line 720
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 722
    const/4 p1, 0x0

    return p1
.end method
