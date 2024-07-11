.class final Lcom/ss/android/socialbase/downloader/i/f$24;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/g;)Lcom/ss/android/socialbase/downloader/depend/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/g;)V
    .registers 2

    .line 906
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$24;->a:Lcom/ss/android/socialbase/downloader/depend/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$24;->a:Lcom/ss/android/socialbase/downloader/depend/g;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/g;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 911
    :catch_7
    move-exception p1

    .line 912
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 914
    const/4 p1, 0x0

    return-object p1
.end method
