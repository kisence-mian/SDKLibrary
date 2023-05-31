.class public Lcom/ss/android/socialbase/downloader/notification/b;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/notification/b;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/notification/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->a:Lcom/ss/android/socialbase/downloader/notification/b;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Set;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    .line 37
    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/notification/b;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->a:Lcom/ss/android/socialbase/downloader/notification/b;

    if-nez v0, :cond_13

    .line 41
    const-class v1, Lcom/ss/android/socialbase/downloader/notification/b;

    monitor-enter v1

    .line 42
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->a:Lcom/ss/android/socialbase/downloader/notification/b;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/ss/android/socialbase/downloader/notification/b;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/notification/b;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->a:Lcom/ss/android/socialbase/downloader/notification/b;

    .line 44
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 46
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->a:Lcom/ss/android/socialbase/downloader/notification/b;

    return-object v0

    .line 44
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static b(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 88
    if-eq p0, v0, :cond_6

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    .line 92
    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static c(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->aB()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->ae()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/notification/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 51
    if-nez v0, :cond_f

    .line 55
    :goto_e
    return-void

    .line 53
    :cond_f
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_e
.end method

.method public a(IILandroid/app/Notification;)V
    .registers 7

    .prologue
    .line 96
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    if-nez p3, :cond_b

    .line 109
    :cond_a
    :goto_a
    return-void

    .line 100
    :cond_b
    :try_start_b
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string v2, "DOWNLOAD_NOTIFICATION_EXTRA_STATUS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_a

    .line 106
    :catch_2a
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 59
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    .line 60
    if-nez v0, :cond_7

    .line 70
    :cond_6
    :goto_6
    return-void

    .line 62
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aB()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/g/c;->d(I)V

    .line 65
    :try_start_11
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_6

    .line 66
    :catch_15
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_6
.end method

.method public a(Lcom/ss/android/socialbase/downloader/notification/a;)V
    .registers 5

    .prologue
    .line 126
    if-nez p1, :cond_3

    .line 131
    :goto_2
    return-void

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 129
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    monitor-exit v1

    goto :goto_2

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method b()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/notification/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 158
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 75
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/notification/b;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 78
    :cond_d
    return-void
.end method

.method public c(I)V
    .registers 5

    .prologue
    .line 112
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_8

    if-nez p1, :cond_9

    .line 123
    :cond_8
    :goto_8
    return-void

    .line 116
    :cond_9
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_8

    .line 120
    :catch_1e
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 6

    .prologue
    .line 134
    if-nez p1, :cond_4

    .line 135
    const/4 v0, 0x0

    .line 145
    :goto_3
    return-object v0

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 138
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/notification/a;

    .line 139
    if-eqz v0, :cond_2c

    .line 140
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotificationId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/f/a;->a(Ljava/lang/String;)V

    .line 143
    :cond_2c
    monitor-exit v1

    goto :goto_3

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public e(I)Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 4

    .prologue
    .line 149
    if-nez p1, :cond_4

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_3
    return-object v0

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 152
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/notification/a;

    monitor-exit v1

    goto :goto_3

    .line 153
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    .line 164
    if-eqz p1, :cond_c

    .line 165
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->c(I)V

    .line 167
    :cond_c
    return-void
.end method
