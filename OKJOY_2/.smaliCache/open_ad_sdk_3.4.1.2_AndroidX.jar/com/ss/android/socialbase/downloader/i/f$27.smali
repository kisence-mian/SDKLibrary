.class final Lcom/ss/android/socialbase/downloader/i/f$27;
.super Lcom/ss/android/socialbase/downloader/depend/ai$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/downloader/q;)Lcom/ss/android/socialbase/downloader/depend/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/q;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/q;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$27;->a:Lcom/ss/android/socialbase/downloader/downloader/q;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/ai$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$27;->a:Lcom/ss/android/socialbase/downloader/downloader/q;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/q;->a(II)J

    move-result-wide p1

    return-wide p1
.end method
