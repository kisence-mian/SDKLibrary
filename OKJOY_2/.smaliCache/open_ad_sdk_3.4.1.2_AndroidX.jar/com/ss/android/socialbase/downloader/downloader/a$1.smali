.class Lcom/ss/android/socialbase/downloader/downloader/a$1;
.super Ljava/lang/Object;
.source "AbsDownloadServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/a;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a$1;->a:Lcom/ss/android/socialbase/downloader/downloader/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 170
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tryDownload: 2 try"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a$1;->a:Lcom/ss/android/socialbase/downloader/downloader/a;

    iget-boolean v0, v0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    if-nez v0, :cond_2e

    .line 173
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 174
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tryDownload: 2 error"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a$1;->a:Lcom/ss/android/socialbase/downloader/downloader/a;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 177
    :cond_2e
    return-void
.end method
