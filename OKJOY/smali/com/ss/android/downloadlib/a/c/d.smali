.class public Lcom/ss/android/downloadlib/a/c/d;
.super Ljava/lang/Object;
.source "DownloadOptimizationManager.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/a/c/d;


# instance fields
.field private b:J

.field private c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a/c/d;->b:J

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->c:Landroid/util/LongSparseArray;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/c/d;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/ss/android/downloadlib/a/c/d;->a:Lcom/ss/android/downloadlib/a/c/d;

    if-nez v0, :cond_13

    .line 36
    const-class v1, Lcom/ss/android/downloadlib/a/c/d;

    monitor-enter v1

    .line 37
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/a/c/d;->a:Lcom/ss/android/downloadlib/a/c/d;

    if-nez v0, :cond_12

    .line 38
    new-instance v0, Lcom/ss/android/downloadlib/a/c/d;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/c/d;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/c/d;->a:Lcom/ss/android/downloadlib/a/c/d;

    .line 40
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 43
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/a/c/d;->a:Lcom/ss/android/downloadlib/a/c/d;

    return-object v0

    .line 40
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 111
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    .line 121
    :cond_c
    :goto_c
    return-void

    .line 115
    :cond_d
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_c

    .line 120
    invoke-static {v0}, Lcom/ss/android/downloadlib/a/c/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_c
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 128
    if-nez p0, :cond_3

    .line 151
    :cond_2
    :goto_2
    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 133
    const-string v1, "delete_file_after_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4f} :catch_50

    goto :goto_2

    .line 148
    :catch_50
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a/c/d;->b(Ljava/lang/String;)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 84
    :cond_7
    :goto_7
    return v0

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    if-nez v1, :cond_13

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    .line 81
    :cond_13
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7
.end method

.method public b()Landroid/util/LongSparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->c:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method c()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a/c/d;->b:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    move v0, v1

    .line 101
    :goto_c
    return v0

    .line 97
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 98
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    :goto_21
    const/4 v2, 0x2

    if-le v0, v2, :cond_26

    move v0, v1

    goto :goto_c

    :cond_26
    const/4 v0, 0x1

    goto :goto_c

    :cond_28
    move v0, v1

    goto :goto_21
.end method

.method d()V
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a/c/d;->b:J

    .line 57
    return-void
.end method
