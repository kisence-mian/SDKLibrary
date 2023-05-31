.class Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;
.super Ljava/lang/Object;
.source "DownloadNotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 159
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 161
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v3, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 162
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    const-string v3, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 163
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    const-string v4, "DOWNLOAD_NOTIFICATION_EXTRA_STATUS"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 165
    if-eqz v2, :cond_47

    if-eqz v1, :cond_47

    if-eqz v0, :cond_47

    .line 167
    const/4 v4, 0x4

    if-ne v3, v4, :cond_8d

    .line 168
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Z

    move-result v3

    if-nez v3, :cond_48

    .line 237
    :cond_47
    :goto_47
    return-void

    .line 170
    :cond_48
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v3

    .line 171
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 172
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->a()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_47

    .line 173
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v4, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 174
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->b()V

    goto :goto_47

    .line 177
    :cond_7c
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->a()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 178
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v4, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 179
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->b()V

    goto :goto_47

    .line 182
    :cond_8d
    if-eq v3, v6, :cond_92

    const/4 v4, -0x3

    if-ne v3, v4, :cond_bc

    .line 183
    :cond_92
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 184
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v3, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto :goto_47

    .line 185
    :cond_9e
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 186
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1$1;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1$1;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    if-ne v3, v6, :cond_b9

    const-wide/16 v0, 0x32

    :goto_b5
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_47

    :cond_b9
    const-wide/16 v0, 0xc8

    goto :goto_b5

    .line 194
    :cond_bc
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 195
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v3, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto :goto_47

    .line 197
    :cond_c8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v3, v0, v2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_47

    .line 201
    :cond_cf
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v3, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 202
    if-eqz v2, :cond_47

    .line 203
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V

    goto/16 :goto_47

    .line 204
    :cond_e2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 206
    :try_start_ec
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 207
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 208
    if-eqz v0, :cond_47

    .line 210
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    const-string v1, "application/vnd.android.package-archive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v1, "mime_type_plugin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_47

    .line 222
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/util/List;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_12c} :catch_12e

    goto/16 :goto_47

    .line 224
    :catch_12e
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_47

    .line 227
    :cond_134
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 232
    :cond_15c
    :try_start_15c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a()V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_165} :catch_167

    goto/16 :goto_47

    .line 233
    :catch_167
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_47
.end method
