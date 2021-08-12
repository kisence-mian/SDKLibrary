.class public Lcom/ss/android/socialbase/downloader/notification/b;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"


# static fields
.field private static volatile c:Lcom/ss/android/socialbase/downloader/notification/b;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/notification/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->a:J

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Ljava/util/Set;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    .line 42
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/notification/b;
    .registers 2

    .line 45
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    if-nez v0, :cond_17

    .line 46
    const-class v0, Lcom/ss/android/socialbase/downloader/notification/b;

    monitor-enter v0

    .line 47
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Lcom/ss/android/socialbase/downloader/notification/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/notification/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    .line 49
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 51
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    return-object v0
.end method

.method static b(I)Z
    .registers 3

    .line 92
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    goto :goto_9

    .line 96
    :cond_7
    const/4 p0, 0x0

    return p0

    .line 94
    :cond_9
    :goto_9
    return v0
.end method

.method static c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getNotificationVisibility()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/notification/b;->b(I)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 86
    const/4 p0, 0x1

    return p0

    .line 88
    :cond_12
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 55
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 56
    if-nez p1, :cond_f

    .line 57
    return-void

    .line 58
    :cond_f
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 60
    return-void
.end method

.method public a(IILandroid/app/Notification;)V
    .registers 13

    .line 100
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_6b

    if-eqz p1, :cond_6b

    if-nez p3, :cond_b

    goto :goto_6b

    .line 104
    :cond_b
    const/4 v1, 0x4

    if-ne p2, v1, :cond_47

    .line 105
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_11
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 108
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-gez v2, :cond_35

    .line 109
    monitor-exit v1

    return-void

    .line 111
    :cond_35
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v1

    goto :goto_47

    :catchall_44
    move-exception p1

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_11 .. :try_end_46} :catchall_44

    throw p1

    .line 116
    :cond_47
    :goto_47
    :try_start_47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "DOWNLOAD_NOTIFICATION_EXTRA_STATUS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string p2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string p1, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_66

    .line 124
    goto :goto_6a

    .line 122
    :catchall_66
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    :goto_6a
    return-void

    .line 102
    :cond_6b
    :goto_6b
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 64
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    .line 65
    if-nez v0, :cond_7

    .line 66
    return-void

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 68
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setNotificationVisibility(I)V

    .line 70
    :try_start_11
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 73
    goto :goto_19

    .line 71
    :catch_15
    move-exception p1

    .line 72
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 75
    :cond_19
    :goto_19
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/notification/a;)V
    .registers 5

    .line 142
    if-nez p1, :cond_3

    .line 143
    return-void

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 145
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p1
.end method

.method b()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/notification/a;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-exit v0

    return-object v1

    .line 175
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 79
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/notification/b;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 82
    :cond_d
    return-void
.end method

.method public c(I)V
    .registers 5

    .line 128
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_23

    if-nez p1, :cond_9

    goto :goto_23

    .line 132
    :cond_9
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1e

    .line 138
    goto :goto_22

    .line 136
    :catchall_1e
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    :goto_22
    return-void

    .line 130
    :cond_23
    :goto_23
    return-void
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 6

    .line 150
    if-nez p1, :cond_4

    .line 151
    const/4 p1, 0x0

    return-object p1

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 154
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/notification/a;

    .line 155
    if-eqz v1, :cond_2c

    .line 156
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotificationId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;)V

    .line 159
    :cond_2c
    monitor-exit v0

    .line 161
    return-object v1

    .line 159
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public e(I)Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 4

    .line 165
    if-nez p1, :cond_4

    .line 166
    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 168
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/notification/a;

    monitor-exit v0

    return-object p1

    .line 169
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public f(I)V
    .registers 3

    .line 179
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    .line 180
    if-eqz p1, :cond_c

    .line 181
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->c(I)V

    .line 183
    :cond_c
    return-void
.end method
