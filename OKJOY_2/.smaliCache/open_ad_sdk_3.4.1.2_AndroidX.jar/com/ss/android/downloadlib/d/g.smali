.class public Lcom/ss/android/downloadlib/d/g;
.super Ljava/lang/Object;
.source "NotificationPusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/d/g$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/d/g$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/ss/android/downloadlib/d/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/d/g;
    .registers 1

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/d/g$a;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V
    .registers 13

    .line 162
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v0

    const-string v1, "error_code"

    if-nez v0, :cond_12

    .line 163
    const/16 p1, 0x3ec

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void

    .line 166
    :cond_12
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 167
    if-nez v0, :cond_2a

    .line 168
    const/16 p1, 0x3ed

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void

    .line 171
    :cond_2a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_3b

    .line 173
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 175
    :cond_3b
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/a;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/socialbase/appdownloader/e/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 177
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 178
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;ZZ)V

    .line 179
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    .line 180
    invoke-virtual {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    .line 181
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const-string v0, "download_notification_show"

    invoke-virtual {p1, v0, p3, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/d/g;ILcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/d/g;->a(ILcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lcom/ss/android/downloadad/a/b/b;J)V
    .registers 9

    .line 74
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    .line 75
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 76
    return-void

    .line 78
    :cond_12
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d/g;->a(I)V

    .line 79
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/d/g$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/d/g$1;-><init>(Lcom/ss/android/downloadlib/d/g;ILcom/ss/android/downloadad/a/b/b;)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 96
    return-void
.end method

.method private c(Lcom/ss/android/downloadad/a/b/b;J)V
    .registers 9

    .line 107
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    .line 108
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 109
    return-void

    .line 111
    :cond_12
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d/g;->a(I)V

    .line 112
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/d/g$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/d/g$2;-><init>(Lcom/ss/android/downloadlib/d/g;ILcom/ss/android/downloadad/a/b/b;)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 127
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .line 185
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_23

    .line 186
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_23

    .line 188
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(ILjava/lang/String;)V

    .line 191
    :cond_23
    return-void
.end method

.method public a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 4

    .line 63
    const-wide/16 v0, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/g;->b(Lcom/ss/android/downloadad/a/b/b;J)V

    .line 64
    return-void
.end method

.method public a(Lcom/ss/android/downloadad/a/b/b;J)V
    .registers 9

    .line 138
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    .line 139
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 140
    return-void

    .line 142
    :cond_12
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d/g;->a(I)V

    .line 143
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/d/g$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/ss/android/downloadlib/d/g$3;-><init>(Lcom/ss/android/downloadlib/d/g;ILcom/ss/android/downloadad/a/b/b;)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr p2, v3

    invoke-virtual {v1, v2, p2, p3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 158
    return-void
.end method

.method public b(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 67
    if-nez p1, :cond_3

    .line 68
    return-void

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "noti_continue_delay_secs"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/g;->b(Lcom/ss/android/downloadad/a/b/b;J)V

    .line 71
    return-void
.end method

.method public c(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 4

    .line 99
    const-wide/16 v0, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/g;->c(Lcom/ss/android/downloadad/a/b/b;J)V

    .line 100
    return-void
.end method

.method public d(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 103
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "noti_install_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/g;->c(Lcom/ss/android/downloadad/a/b/b;J)V

    .line 104
    return-void
.end method

.method public e(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 4

    .line 130
    const-wide/16 v0, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/g;->a(Lcom/ss/android/downloadad/a/b/b;J)V

    .line 131
    return-void
.end method

.method public f(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 134
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "noti_open_delay_secs"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/d/g;->a(Lcom/ss/android/downloadad/a/b/b;J)V

    .line 135
    return-void
.end method
