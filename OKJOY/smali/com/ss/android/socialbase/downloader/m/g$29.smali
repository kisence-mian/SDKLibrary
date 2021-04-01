.class final Lcom/ss/android/socialbase/downloader/m/g$29;
.super Lcom/ss/android/socialbase/downloader/d/n$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/downloader/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/p;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/p;)V
    .registers 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$29;->a:Lcom/ss/android/socialbase/downloader/d/p;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLcom/ss/android/socialbase/downloader/d/m;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/m/g$29;->a:Lcom/ss/android/socialbase/downloader/d/p;

    invoke-static {p5}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/m;)Lcom/ss/android/socialbase/downloader/d/o;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/d/p;->a(JJLcom/ss/android/socialbase/downloader/d/o;)Z

    move-result v0

    return v0
.end method
