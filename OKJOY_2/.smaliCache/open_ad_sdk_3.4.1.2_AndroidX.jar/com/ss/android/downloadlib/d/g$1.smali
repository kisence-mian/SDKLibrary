.class Lcom/ss/android/downloadlib/d/g$1;
.super Ljava/lang/Object;
.source "NotificationPusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/g;->b(Lcom/ss/android/downloadad/a/b/b;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic c:Lcom/ss/android/downloadlib/d/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/d/g;ILcom/ss/android/downloadad/a/b/b;)V
    .registers 4

    .line 79
    iput-object p1, p0, Lcom/ss/android/downloadlib/d/g$1;->c:Lcom/ss/android/downloadlib/d/g;

    iput p2, p0, Lcom/ss/android/downloadlib/d/g$1;->a:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/d/g$1;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 82
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/d/g$1;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ttdownloader_type"

    invoke-static {v1, v3, v2}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 86
    if-eqz v0, :cond_3a

    const/4 v2, -0x2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v3

    if-ne v2, v3, :cond_3a

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_3a

    .line 90
    :cond_30
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/g$1;->c:Lcom/ss/android/downloadlib/d/g;

    iget v2, p0, Lcom/ss/android/downloadlib/d/g$1;->a:I

    iget-object v3, p0, Lcom/ss/android/downloadlib/d/g$1;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0, v2, v3, v1}, Lcom/ss/android/downloadlib/d/g;->a(Lcom/ss/android/downloadlib/d/g;ILcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V

    goto :goto_45

    .line 88
    :cond_3a
    :goto_3a
    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "error_code"

    invoke-static {v1, v2, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :goto_45
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/d/g$1;->b:Lcom/ss/android/downloadad/a/b/b;

    const-string v3, "download_notification_try_show"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 93
    return-void
.end method
