.class final Lcom/ss/android/socialbase/downloader/i/f$6;
.super Lcom/ss/android/socialbase/downloader/depend/h$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/y;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/y;)V
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$6;->a:Lcom/ss/android/socialbase/downloader/depend/y;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$6;->a:Lcom/ss/android/socialbase/downloader/depend/y;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/y;->a()Z

    move-result v0

    return v0
.end method
