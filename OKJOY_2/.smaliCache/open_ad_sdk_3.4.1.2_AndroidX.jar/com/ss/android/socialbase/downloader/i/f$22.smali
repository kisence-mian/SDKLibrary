.class final Lcom/ss/android/socialbase/downloader/i/f$22;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/h;)Lcom/ss/android/socialbase/downloader/depend/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/h;)V
    .registers 2

    .line 890
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$22;->a:Lcom/ss/android/socialbase/downloader/depend/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$22;->a:Lcom/ss/android/socialbase/downloader/depend/h;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/h;->a()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 895
    :catch_7
    move-exception v0

    .line 896
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 898
    const/4 v0, 0x0

    return v0
.end method
