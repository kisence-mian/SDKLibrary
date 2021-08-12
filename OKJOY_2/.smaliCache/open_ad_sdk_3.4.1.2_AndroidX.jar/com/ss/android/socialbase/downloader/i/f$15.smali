.class final Lcom/ss/android/socialbase/downloader/i/f$15;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/v;)Lcom/ss/android/socialbase/downloader/depend/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/v;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/v;)V
    .registers 2

    .line 784
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$15;->a:Lcom/ss/android/socialbase/downloader/depend/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/depend/w;)Z
    .registers 3

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$15;->a:Lcom/ss/android/socialbase/downloader/depend/v;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/w;)Lcom/ss/android/socialbase/downloader/depend/u;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/v;->a(Lcom/ss/android/socialbase/downloader/depend/u;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 789
    :catch_b
    move-exception p1

    .line 790
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 792
    const/4 p1, 0x0

    return p1
.end method
