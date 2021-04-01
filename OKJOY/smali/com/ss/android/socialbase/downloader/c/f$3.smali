.class Lcom/ss/android/socialbase/downloader/c/f$3;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/f;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/c/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/f;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f$3;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 134
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/f$3;->a:Lcom/ss/android/socialbase/downloader/c/f;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 135
    return-void
.end method
