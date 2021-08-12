.class final Lcom/ss/android/socialbase/downloader/i/f$20;
.super Lcom/ss/android/socialbase/downloader/depend/o$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/q;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/q;)V
    .registers 2

    .line 862
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$20;->a:Lcom/ss/android/socialbase/downloader/depend/q;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$20;->a:Lcom/ss/android/socialbase/downloader/depend/q;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/q;->a()V

    .line 866
    return-void
.end method
