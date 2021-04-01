.class final Lcom/ss/android/socialbase/downloader/m/g$20;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/h;)Lcom/ss/android/socialbase/downloader/d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/h;)V
    .registers 2

    .prologue
    .line 789
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$20;->a:Lcom/ss/android/socialbase/downloader/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$20;->a:Lcom/ss/android/socialbase/downloader/d/h;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/h;->a()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 797
    :goto_6
    return v0

    .line 794
    :catch_7
    move-exception v0

    .line 795
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 797
    const/4 v0, 0x0

    goto :goto_6
.end method
