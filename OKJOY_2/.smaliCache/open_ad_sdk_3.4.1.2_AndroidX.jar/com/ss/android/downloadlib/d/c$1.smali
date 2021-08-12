.class Lcom/ss/android/downloadlib/d/c$1;
.super Ljava/lang/Object;
.source "AppDownloadLaunchResumeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/d/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/d/c;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/ss/android/downloadlib/d/c$1;->a:Lcom/ss/android/downloadlib/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 104
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    .line 105
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadad/a/b/b;

    .line 107
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v2

    .line 108
    if-nez v2, :cond_2a

    .line 109
    goto :goto_17

    .line 111
    :cond_2a
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    .line 112
    const-string v4, "notification_opt_2"

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_38

    .line 113
    goto :goto_17

    .line 115
    :cond_38
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 116
    if-nez v2, :cond_47

    .line 117
    goto :goto_17

    .line 119
    :cond_47
    invoke-static {v1}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_77

    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/downloadlib/h/k;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 120
    const-string v4, "restart_notify_open_app_count"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSpIntVal(Ljava/lang/String;)I

    move-result v6

    .line 121
    const-string v7, "noti_open_restart_times"

    invoke-virtual {v3, v7, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v6, v3, :cond_76

    .line 122
    invoke-static {}, Lcom/ss/android/downloadlib/d/g;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/downloadlib/d/g;->e(Lcom/ss/android/downloadad/a/b/b;)V

    .line 123
    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSpValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_76
    goto :goto_d0

    :cond_77
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    const/4 v6, -0x2

    if-ne v4, v6, :cond_9d

    .line 126
    const-string v4, "restart_notify_continue_count"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSpIntVal(Ljava/lang/String;)I

    move-result v6

    .line 127
    const-string v7, "noti_continue_restart_times"

    invoke-virtual {v3, v7, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v6, v3, :cond_cf

    .line 128
    invoke-static {}, Lcom/ss/android/downloadlib/d/g;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/downloadlib/d/g;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 129
    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSpValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cf

    .line 131
    :cond_9d
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    const/4 v6, -0x3

    if-ne v4, v6, :cond_cf

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_cf

    invoke-static {v1}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 132
    const-string v4, "restart_notify_install_count"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSpIntVal(Ljava/lang/String;)I

    move-result v6

    .line 133
    const-string v7, "noti_install_restart_times"

    invoke-virtual {v3, v7, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v6, v3, :cond_d0

    .line 134
    invoke-static {}, Lcom/ss/android/downloadlib/d/g;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/downloadlib/d/g;->c(Lcom/ss/android/downloadad/a/b/b;)V

    .line 135
    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSpValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    .line 131
    :cond_cf
    :goto_cf
    nop

    .line 138
    :cond_d0
    :goto_d0
    goto/16 :goto_17

    .line 139
    :cond_d2
    return-void
.end method
