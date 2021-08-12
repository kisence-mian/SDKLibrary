.class final Lcom/ss/android/socialbase/downloader/i/f$5;
.super Lcom/ss/android/socialbase/downloader/depend/e$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/depend/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$5;->a:Lcom/ss/android/socialbase/downloader/downloader/g;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$5;->a:Lcom/ss/android/socialbase/downloader/downloader/g;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(J)I

    move-result p1

    return p1
.end method
