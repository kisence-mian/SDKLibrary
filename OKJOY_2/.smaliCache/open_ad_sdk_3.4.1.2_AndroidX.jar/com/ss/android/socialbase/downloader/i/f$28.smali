.class final Lcom/ss/android/socialbase/downloader/i/f$28;
.super Lcom/ss/android/socialbase/downloader/depend/v$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/depend/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/x;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/x;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$28;->a:Lcom/ss/android/socialbase/downloader/depend/x;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/depend/u;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$28;->a:Lcom/ss/android/socialbase/downloader/depend/x;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/u;)Lcom/ss/android/socialbase/downloader/depend/w;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/x;->a(Lcom/ss/android/socialbase/downloader/depend/w;)Z

    move-result p1

    return p1
.end method
