.class final Lcom/ss/android/socialbase/downloader/i/f$21;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ai;)Lcom/ss/android/socialbase/downloader/downloader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/ai;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/ai;)V
    .registers 2

    .line 873
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$21;->a:Lcom/ss/android/socialbase/downloader/depend/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 4

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$21;->a:Lcom/ss/android/socialbase/downloader/depend/ai;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/ai;->a(II)J

    move-result-wide p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p1

    .line 879
    :catch_7
    move-exception p1

    .line 880
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 882
    const-wide/16 p1, 0x0

    return-wide p1
.end method
