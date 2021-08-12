.class final Lcom/ss/android/socialbase/downloader/i/f$18;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)Lcom/ss/android/socialbase/downloader/depend/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/ak;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    .registers 2

    .line 830
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$18;->a:Lcom/ss/android/socialbase/downloader/depend/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$18;->a:Lcom/ss/android/socialbase/downloader/depend/ak;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/ak;->a(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 837
    goto :goto_a

    .line 835
    :catch_6
    move-exception p1

    .line 836
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 838
    :goto_a
    return-void
.end method
