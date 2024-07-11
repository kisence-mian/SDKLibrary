.class final Lcom/ss/android/socialbase/downloader/i/f$19;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/p;)Lcom/ss/android/socialbase/downloader/depend/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/p;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/p;)V
    .registers 2

    .line 845
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$19;->a:Lcom/ss/android/socialbase/downloader/depend/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLcom/ss/android/socialbase/downloader/depend/q;)Z
    .registers 12

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$19;->a:Lcom/ss/android/socialbase/downloader/depend/p;

    invoke-static {p5}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/o;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/depend/p;->a(JJLcom/ss/android/socialbase/downloader/depend/o;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 851
    :catch_d
    move-exception p1

    .line 852
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 854
    const/4 p1, 0x0

    return p1
.end method
