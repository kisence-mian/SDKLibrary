.class Lcom/ss/android/socialbase/appdownloader/d/b$2$1;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d/b$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/d/b$2;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d/b$2;Landroid/content/Context;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_76

    .line 117
    :cond_19
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 118
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v2, v2, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v2, v2, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 120
    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v0, :cond_75

    aget-object v3, v1, v2

    .line 121
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_72

    .line 123
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_67

    .line 124
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_72

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v4

    if-nez v4, :cond_67

    .line 125
    goto :goto_72

    .line 127
    :cond_67
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->b:Lcom/ss/android/socialbase/appdownloader/d/b$2;

    iget-object v4, v4, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;->a:Landroid/content/Context;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v4, v5, v3, v7, v6}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_77

    .line 120
    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 131
    :cond_75
    goto :goto_7b

    .line 115
    :cond_76
    :goto_76
    return-void

    .line 129
    :catch_77
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    :goto_7b
    return-void
.end method
