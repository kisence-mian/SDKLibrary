.class public Lcom/ss/android/downloadlib/addownload/c/d;
.super Ljava/lang/Object;
.source "DownloadOptimizationManager.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/addownload/c/d;


# instance fields
.field private b:J

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/addownload/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->b:J

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->d:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->e:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/c/d;
    .registers 2

    .line 40
    sget-object v0, Lcom/ss/android/downloadlib/addownload/c/d;->a:Lcom/ss/android/downloadlib/addownload/c/d;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/ss/android/downloadlib/addownload/c/d;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/c/d;->a:Lcom/ss/android/downloadlib/addownload/c/d;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/ss/android/downloadlib/addownload/c/d;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/c/d;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/c/d;->a:Lcom/ss/android/downloadlib/addownload/c/d;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 48
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/c/d;->a:Lcom/ss/android/downloadlib/addownload/c/d;

    return-object v0
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 130
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    goto :goto_24

    .line 134
    :cond_d
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p0

    .line 135
    if-nez p0, :cond_20

    .line 136
    return-void

    .line 139
    :cond_20
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 140
    return-void

    .line 131
    :cond_24
    :goto_24
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 147
    if-nez p0, :cond_3

    .line 148
    return-void

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    const-string v2, "delete_file_after_install"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    .line 153
    return-void

    .line 157
    :cond_15
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 159
    return-void

    .line 162
    :cond_3b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_4f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4f} :catch_50

    .line 169
    :cond_4f
    goto :goto_54

    .line 167
    :catch_50
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :goto_54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 66
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/c/e;)V
    .registers 4

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 60
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .registers 4

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 93
    return v1

    .line 95
    :cond_8
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->d:Ljava/util/HashMap;

    if-nez v0, :cond_13

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->d:Ljava/util/HashMap;

    .line 99
    :cond_13
    nop

    .line 100
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 101
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    :cond_28
    return v1
.end method

.method b()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->b:J

    return-wide v0
.end method

.method c()V
    .registers 3

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/c/d;->b:J

    .line 76
    return-void
.end method
