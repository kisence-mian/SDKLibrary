.class public Lcom/ss/android/downloadlib/g/c;
.super Ljava/lang/Object;
.source "BeforeAppInstallInterceptorManager.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/g/c;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/appdownloader/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/g/c;->b:Ljava/util/List;

    .line 36
    new-instance v1, Lcom/ss/android/downloadlib/g/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/g/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/c;->b:Ljava/util/List;

    new-instance v1, Lcom/ss/android/downloadlib/g/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/g/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/g/c;
    .registers 2

    .line 24
    sget-object v0, Lcom/ss/android/downloadlib/g/c;->a:Lcom/ss/android/downloadlib/g/c;

    if-nez v0, :cond_17

    .line 25
    const-class v0, Lcom/ss/android/downloadlib/g/c;

    monitor-enter v0

    .line 26
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/g/c;->a:Lcom/ss/android/downloadlib/g/c;

    if-nez v1, :cond_12

    .line 27
    new-instance v1, Lcom/ss/android/downloadlib/g/c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/g/c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/g/c;->a:Lcom/ss/android/downloadlib/g/c;

    .line 29
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 31
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/g/c;->a:Lcom/ss/android/downloadlib/g/c;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/g/c;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/g/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 6

    .line 53
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p2, v0, :cond_1c

    if-gez p2, :cond_b

    goto :goto_1c

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/g/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/c/j;

    .line 59
    new-instance v1, Lcom/ss/android/downloadlib/g/c$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ss/android/downloadlib/g/c$1;-><init>(Lcom/ss/android/downloadlib/g/c;ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    invoke-interface {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/c/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    .line 66
    return-void

    .line 54
    :cond_1c
    :goto_1c
    invoke-interface {p3}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 4

    .line 43
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/ss/android/downloadlib/g/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 49
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/g/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V

    .line 50
    return-void

    .line 44
    :cond_10
    :goto_10
    if-eqz p2, :cond_15

    .line 45
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    .line 47
    :cond_15
    return-void
.end method
