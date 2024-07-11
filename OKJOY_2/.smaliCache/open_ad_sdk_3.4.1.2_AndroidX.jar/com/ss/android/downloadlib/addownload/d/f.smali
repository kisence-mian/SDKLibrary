.class public Lcom/ss/android/downloadlib/addownload/d/f;
.super Ljava/lang/Object;
.source "PauseInterceptorManager.java"


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/d/f;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/downloadlib/addownload/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    .line 41
    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/e;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/g;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/d/f;
    .registers 2

    .line 27
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    if-nez v0, :cond_17

    .line 28
    const-class v0, Lcom/ss/android/downloadlib/addownload/d/f;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    if-nez v1, :cond_12

    .line 30
    new-instance v1, Lcom/ss/android/downloadlib/addownload/d/f;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/d/f;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    .line 32
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 34
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/d/f;->a:Lcom/ss/android/downloadlib/addownload/d/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)V
    .registers 8

    .line 49
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    if-eqz v0, :cond_65

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_65

    if-nez p1, :cond_d

    goto :goto_65

    .line 56
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_61

    .line 62
    :cond_29
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_optimise_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    move v2, v1

    .line 63
    :cond_3c
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/addownload/d/d;

    .line 66
    if-nez v2, :cond_55

    instance-of v3, v1, Lcom/ss/android/downloadlib/addownload/d/g;

    if-nez v3, :cond_55

    .line 67
    goto :goto_42

    .line 70
    :cond_55
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/d/d;->a(Lcom/ss/android/downloadad/a/b/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z

    move-result v1

    .line 71
    if-eqz v1, :cond_5c

    .line 73
    return-void

    .line 75
    :cond_5c
    goto :goto_42

    .line 77
    :cond_5d
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 78
    return-void

    .line 58
    :cond_61
    :goto_61
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 59
    return-void

    .line 52
    :cond_65
    :goto_65
    invoke-interface {p3, p1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 53
    return-void
.end method
