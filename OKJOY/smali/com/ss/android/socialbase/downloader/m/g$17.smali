.class final Lcom/ss/android/socialbase/downloader/m/g$17;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/n;)Lcom/ss/android/socialbase/downloader/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/n;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/n;)V
    .registers 2

    .prologue
    .line 744
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$17;->a:Lcom/ss/android/socialbase/downloader/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLcom/ss/android/socialbase/downloader/d/o;)Z
    .registers 13

    .prologue
    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/m/g$17;->a:Lcom/ss/android/socialbase/downloader/d/n;

    invoke-static {p5}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/o;)Lcom/ss/android/socialbase/downloader/d/m;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/d/n;->a(JJLcom/ss/android/socialbase/downloader/d/m;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 753
    :goto_c
    return v0

    .line 750
    :catch_d
    move-exception v0

    .line 751
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 753
    const/4 v0, 0x0

    goto :goto_c
.end method
