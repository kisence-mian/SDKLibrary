.class public Lcom/ss/android/socialbase/downloader/downloader/b;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"


# static fields
.field private static volatile A:Lcom/ss/android/socialbase/downloader/depend/ac;

.field private static volatile B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/al;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile C:Z

.field private static volatile D:Lokhttp3/OkHttpClient;

.field private static volatile E:Lcom/ss/android/socialbase/downloader/network/f;

.field private static volatile F:Lcom/ss/android/socialbase/downloader/network/f;

.field private static final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation
.end field

.field private static H:Z

.field private static I:I

.field private static final J:I

.field private static final K:I

.field private static final L:I

.field private static final M:I

.field private static N:I

.field private static O:Z

.field private static final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static R:I

.field private static S:Z

.field private static T:Z

.field private static U:Lcom/ss/android/socialbase/downloader/downloader/p;

.field private static V:Lcom/ss/android/socialbase/downloader/d/c;

.field private static volatile W:Z

.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private static volatile c:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private static volatile d:Lcom/ss/android/socialbase/downloader/downloader/g;

.field private static volatile e:Lcom/ss/android/socialbase/downloader/depend/ah;

.field private static volatile f:Lcom/ss/android/socialbase/downloader/impls/a;

.field private static volatile g:Lcom/ss/android/socialbase/downloader/downloader/n;

.field private static volatile h:Lcom/ss/android/socialbase/downloader/downloader/n;

.field private static volatile i:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

.field private static volatile j:Lcom/ss/android/socialbase/downloader/network/h;

.field private static volatile k:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

.field private static volatile l:Lcom/ss/android/socialbase/downloader/network/h;

.field private static volatile m:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private static volatile n:Ljava/util/concurrent/ExecutorService;

.field private static volatile o:Ljava/util/concurrent/ExecutorService;

.field private static volatile p:Ljava/util/concurrent/ExecutorService;

.field private static volatile q:Ljava/util/concurrent/ExecutorService;

.field private static volatile r:Ljava/util/concurrent/ExecutorService;

.field private static volatile s:Ljava/util/concurrent/ExecutorService;

.field private static volatile t:Ljava/util/concurrent/ExecutorService;

.field private static volatile u:Ljava/util/concurrent/ExecutorService;

.field private static volatile v:Lcom/ss/android/socialbase/downloader/downloader/f;

.field private static volatile w:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

.field private static volatile x:Lcom/ss/android/socialbase/downloader/downloader/q;

.field private static volatile y:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private static volatile z:Lcom/ss/android/socialbase/downloader/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->B:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z

    .line 108
    const/4 v1, 0x0

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Lokhttp3/OkHttpClient;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    .line 115
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->H:Z

    .line 117
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->J:I

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    sput v3, Lcom/ss/android/socialbase/downloader/downloader/b;->K:I

    .line 119
    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->L:I

    .line 120
    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->M:I

    .line 121
    const/16 v1, 0x2000

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->N:I

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->P:Ljava/util/List;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->Q:Ljava/util/List;

    .line 127
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->S:Z

    .line 128
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->T:Z

    .line 143
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->W:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static A()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation

    .line 950
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    return-object v0
.end method

.method public static B()Lcom/ss/android/socialbase/downloader/downloader/j;
    .registers 2

    .line 954
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_17

    .line 955
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 956
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_12

    .line 957
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 958
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 960
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    return-object v0
.end method

.method public static C()Lcom/ss/android/socialbase/downloader/impls/a;
    .registers 2

    .line 964
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v0, :cond_17

    .line 965
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 966
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v1, :cond_12

    .line 967
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 968
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 970
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    return-object v0
.end method

.method public static D()I
    .registers 1

    .line 996
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->R:I

    return v0
.end method

.method public static E()Lorg/json/JSONObject;
    .registers 1

    .line 1001
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:Lcom/ss/android/socialbase/downloader/depend/ac;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:Lcom/ss/android/socialbase/downloader/depend/ac;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/ac;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_17

    .line 1004
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:Lcom/ss/android/socialbase/downloader/depend/ac;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/ac;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 1005
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lorg/json/JSONObject;)V

    .line 1006
    return-object v0

    .line 1002
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static F()Z
    .registers 1

    .line 1041
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->S:Z

    return v0
.end method

.method public static declared-synchronized G()I
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1046
    :try_start_3
    sget v1, Lcom/ss/android/socialbase/downloader/downloader/b;->N:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1046
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static H()Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .line 1050
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-nez v0, :cond_17

    .line 1051
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1052
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-nez v1, :cond_12

    .line 1053
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 1054
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 1056
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    return-object v0
.end method

.method public static I()Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 1

    .line 1071
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/depend/ah;

    return-object v0
.end method

.method public static J()Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 2

    .line 1075
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-nez v0, :cond_17

    .line 1076
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1077
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-nez v1, :cond_12

    .line 1078
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 1079
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 1081
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    return-object v0
.end method

.method public static K()Lcom/ss/android/socialbase/downloader/downloader/q;
    .registers 2

    .line 1090
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lcom/ss/android/socialbase/downloader/downloader/q;

    if-nez v0, :cond_17

    .line 1091
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1092
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lcom/ss/android/socialbase/downloader/downloader/q;

    if-nez v1, :cond_12

    .line 1093
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lcom/ss/android/socialbase/downloader/downloader/q;

    .line 1094
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 1096
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lcom/ss/android/socialbase/downloader/downloader/q;

    return-object v0
.end method

.method public static declared-synchronized L()Landroid/content/Context;
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1100
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 1100
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized M()Z
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1125
    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->O:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1125
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static N()Lcom/ss/android/socialbase/downloader/d/c;
    .registers 1

    .line 1130
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->V:Lcom/ss/android/socialbase/downloader/d/c;

    if-nez v0, :cond_b

    .line 1131
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/b$3;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/b$3;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->V:Lcom/ss/android/socialbase/downloader/d/c;

    .line 1143
    :cond_b
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->V:Lcom/ss/android/socialbase/downloader/d/c;

    return-object v0
.end method

.method public static O()Lcom/ss/android/socialbase/downloader/downloader/p;
    .registers 1

    .line 1146
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->U:Lcom/ss/android/socialbase/downloader/downloader/p;

    return-object v0
.end method

.method public static P()Z
    .registers 1

    .line 1159
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->W:Z

    return v0
.end method

.method private static Q()V
    .registers 3

    .line 269
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    if-nez v0, :cond_b

    .line 270
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    .line 273
    :cond_b
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->H:Z

    if-eqz v0, :cond_10

    .line 274
    return-void

    .line 277
    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->H:Z
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_25

    .line 283
    goto :goto_29

    .line 281
    :catchall_25
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    :goto_29
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I
    .registers 2

    .line 1112
    if-nez p0, :cond_4

    .line 1113
    const/4 p0, 0x0

    return p0

    .line 1114
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 1118
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    .line 1119
    if-nez v0, :cond_8

    .line 1120
    const/4 p0, 0x0

    return p0

    .line 1121
    :cond_8
    invoke-interface {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 523
    nop

    .line 525
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(I)[I

    move-result-object p2

    .line 526
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_9
    if-ge v2, v0, :cond_1a

    aget v4, p2, v2

    .line 528
    :try_start_d
    invoke-static {p0, p1, v4, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_15

    .line 529
    if-eqz v4, :cond_14

    .line 530
    return-object v4

    .line 534
    :cond_14
    goto :goto_17

    .line 532
    :catch_15
    move-exception v3

    .line 533
    nop

    .line 526
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 536
    :cond_1a
    if-nez v3, :cond_1d

    .line 539
    return-object v1

    .line 537
    :cond_1d
    throw v3
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    move v7, p4

    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->d()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->h()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    .line 491
    :goto_d
    if-eqz v0, :cond_57

    .line 495
    const/4 v1, 0x0

    .line 496
    const/4 v8, 0x0

    .line 497
    const-wide/16 v2, 0x0

    .line 499
    if-eqz p5, :cond_20

    .line 500
    :try_start_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1d
    .catchall {:try_start_15 .. :try_end_19} :catchall_1a

    goto :goto_20

    .line 508
    :catchall_1a
    move-exception v0

    move-object v5, p1

    goto :goto_44

    .line 504
    :catch_1d
    move-exception v0

    move-object v5, p1

    goto :goto_3f

    .line 502
    :cond_20
    :goto_20
    move v4, p0

    move-object v5, p1

    move-object v6, p3

    :try_start_23
    invoke-interface {v0, p0, p1, p3}, Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_3e
    .catchall {:try_start_23 .. :try_end_27} :catchall_3c

    .line 503
    nop

    .line 508
    if-eqz p5, :cond_3b

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    const-string v6, "get"

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v9

    move v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 503
    :cond_3b
    return-object v0

    .line 508
    :catchall_3c
    move-exception v0

    goto :goto_44

    .line 504
    :catch_3e
    move-exception v0

    :goto_3f
    move-object v4, v0

    .line 505
    nop

    .line 506
    :try_start_41
    throw v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 508
    :catchall_42
    move-exception v0

    move-object v8, v4

    :goto_44
    if-eqz p5, :cond_56

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    const-string v6, "get"

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v9

    move v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_56
    throw v0

    .line 492
    :cond_57
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3fe

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpService not exist, netLib = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static a(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 450
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 451
    if-nez p4, :cond_e

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    .line 451
    :cond_e
    move-object/from16 v0, p4

    .line 454
    :goto_10
    new-instance v1, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v2, "ss_d_request_host_ip_114"

    move-object/from16 v10, p3

    invoke-direct {v1, v2, v10}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    const/4 v1, 0x1

    move v14, v1

    move-object v1, v0

    move v0, v14

    goto :goto_2d

    .line 460
    :cond_21
    move-object/from16 v10, p3

    if-nez p0, :cond_29

    .line 463
    const/4 v0, 0x2

    move-object/from16 v1, p4

    goto :goto_2d

    .line 460
    :cond_29
    move-object/from16 v1, p4

    move/from16 v0, p5

    .line 468
    :goto_2d
    nop

    .line 470
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(I)[I

    move-result-object v2

    .line 471
    array-length v11, v2

    const/4 v0, 0x0

    const/4 v12, 0x0

    move v13, v0

    move-object v0, v12

    :goto_37
    if-ge v13, v11, :cond_53

    aget v7, v2, v13

    .line 473
    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v1

    move/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_46
    invoke-static/range {v3 .. v9}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_4e

    .line 474
    if-eqz v3, :cond_4d

    .line 475
    return-object v3

    .line 479
    :cond_4d
    goto :goto_50

    .line 477
    :catch_4e
    move-exception v0

    .line 478
    nop

    .line 471
    :goto_50
    add-int/lit8 v13, v13, 0x1

    goto :goto_37

    .line 481
    :cond_53
    if-nez v0, :cond_56

    .line 484
    return-object v12

    .line 482
    :cond_56
    throw v0
.end method

.method public static a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 442
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized a()V
    .registers 3

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 289
    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->H:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_19

    .line 290
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->H:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1c
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    .line 295
    :cond_19
    goto :goto_20

    .line 288
    :catchall_1a
    move-exception v1

    goto :goto_22

    .line 293
    :catch_1c
    move-exception v1

    .line 294
    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1a

    .line 296
    :goto_20
    monitor-exit v0

    return-void

    .line 288
    :goto_22
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1104
    if-eqz p0, :cond_1c

    :try_start_5
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    .line 1107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    goto :goto_1c

    .line 1103
    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0

    .line 1109
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/constants/d;)V
    .registers 5

    .line 391
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->P:Ljava/util/List;

    monitor-enter v0

    .line 392
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 393
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/k;

    .line 395
    if-eqz v2, :cond_24

    .line 396
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/d;->b:Lcom/ss/android/socialbase/downloader/constants/d;

    if-ne p0, v3, :cond_1d

    .line 397
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/k;->a()V

    goto :goto_24

    .line 398
    :cond_1d
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/d;->c:Lcom/ss/android/socialbase/downloader/constants/d;

    if-ne p0, v3, :cond_24

    .line 399
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/k;->b()V

    .line 401
    :cond_24
    :goto_24
    goto :goto_7

    .line 402
    :cond_25
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/d;->c:Lcom/ss/android/socialbase/downloader/constants/d;

    if-ne p0, v1, :cond_2e

    .line 403
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 405
    :cond_2e
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/d/b;)V
    .registers 1

    .line 990
    if-eqz p0, :cond_4

    .line 991
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->z:Lcom/ss/android/socialbase/downloader/d/b;

    .line 993
    :cond_4
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/c;)V
    .registers 1

    .line 1150
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->V:Lcom/ss/android/socialbase/downloader/d/c;

    .line 1151
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ac;)V
    .registers 1

    .line 1023
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:Lcom/ss/android/socialbase/downloader/depend/ac;

    .line 1025
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->a()V

    .line 1026
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/depend/ac;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lorg/json/JSONObject;)V

    .line 1027
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ah;)V
    .registers 1

    .line 1065
    if-eqz p0, :cond_4

    .line 1066
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/depend/ah;

    .line 1068
    :cond_4
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/al;)V
    .registers 3

    .line 329
    if-nez p0, :cond_3

    .line 330
    return-void

    .line 331
    :cond_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->B:Ljava/util/List;

    monitor-enter v0

    .line 332
    :try_start_6
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->B:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .registers 3

    .line 359
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->P:Ljava/util/List;

    monitor-enter v0

    .line 360
    if-eqz p0, :cond_11

    :try_start_5
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_11

    .line 362
    :cond_c
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 361
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    .line 363
    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p0
.end method

.method static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    .registers 4

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 149
    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->W:Z

    if-eqz v1, :cond_10

    .line 150
    const-string p0, "DownloadComponentManager"

    const-string v1, "component has init"

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b3

    .line 151
    monitor-exit v0

    return-void

    .line 154
    :cond_10
    :try_start_10
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z

    .line 155
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->c(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V

    .line 157
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez p0, :cond_20

    .line 158
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 159
    :cond_20
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez p0, :cond_2b

    .line 160
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 161
    :cond_2b
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez p0, :cond_36

    .line 162
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 163
    :cond_36
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez p0, :cond_41

    .line 164
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 165
    :cond_41
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez p0, :cond_4c

    .line 166
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 167
    :cond_4c
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-nez p0, :cond_57

    .line 168
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 169
    :cond_57
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    if-nez p0, :cond_62

    .line 170
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 171
    :cond_62
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lcom/ss/android/socialbase/downloader/downloader/q;

    if-nez p0, :cond_6d

    .line 172
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lcom/ss/android/socialbase/downloader/downloader/q;

    .line 173
    :cond_6d
    sget p0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:I

    if-lez p0, :cond_75

    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->J:I

    if-le p0, v2, :cond_79

    .line 174
    :cond_75
    sget p0, Lcom/ss/android/socialbase/downloader/downloader/b;->J:I

    sput p0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:I

    .line 176
    :cond_79
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->Q()V

    .line 177
    sget-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z

    const/4 v2, 0x1

    if-eqz p0, :cond_91

    if-nez v1, :cond_91

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result p0

    if-nez p0, :cond_91

    .line 178
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/l;->d()V

    goto :goto_af

    .line 181
    :cond_91
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->d()Z

    move-result p0

    if-eqz p0, :cond_a6

    .line 182
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 183
    if-eqz p0, :cond_a5

    .line 184
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/b$1;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/b$1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 194
    :cond_a5
    goto :goto_af

    .line 195
    :cond_a6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p0

    .line 196
    if-eqz p0, :cond_af

    .line 197
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 201
    :cond_af
    :goto_af
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->W:Z
    :try_end_b1
    .catchall {:try_start_10 .. :try_end_b1} :catchall_b3

    .line 202
    monitor-exit v0

    return-void

    .line 148
    :catchall_b3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/f;)V
    .registers 1

    .line 1085
    if-eqz p0, :cond_4

    .line 1086
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 1087
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .registers 1

    .line 1060
    if-eqz p0, :cond_4

    .line 1061
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 1062
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/i;)V
    .registers 1

    .line 923
    if-eqz p0, :cond_4

    .line 924
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 925
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/j;)V
    .registers 1

    .line 974
    if-eqz p0, :cond_4

    .line 975
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 976
    :cond_4
    return-void
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/k;)V
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 623
    if-eqz p0, :cond_18

    .line 624
    :try_start_5
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 625
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    instance-of p0, p0, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz p0, :cond_18

    .line 626
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    check-cast p0, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 627
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->g()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_18

    .line 622
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0

    .line 630
    :cond_18
    :goto_18
    monitor-exit v0

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/p;)V
    .registers 1

    .line 1153
    nop

    .line 1154
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V
    .registers 5

    .line 409
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->Q:Ljava/util/List;

    monitor-enter v0

    .line 410
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/ad;

    .line 413
    if-eqz v2, :cond_18

    .line 414
    invoke-interface {v2, p0, p1}, Lcom/ss/android/socialbase/downloader/depend/ad;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    .line 416
    :cond_18
    goto :goto_7

    .line 417
    :cond_19
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)V
    .registers 1

    .line 901
    if-eqz p0, :cond_4

    .line 902
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    .line 903
    :cond_4
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/b;->O:Z

    .line 904
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/h;)V
    .registers 1

    .line 907
    if-eqz p0, :cond_4

    .line 908
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/network/h;

    .line 909
    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .line 701
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/lang/Runnable;Z)V

    .line 702
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Z)V
    .registers 2

    .line 708
    if-nez p0, :cond_3

    .line 709
    return-void

    .line 711
    :cond_3
    if-eqz p1, :cond_f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->d()Z

    move-result p1

    if-nez p1, :cond_f

    .line 712
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 714
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 716
    :goto_16
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;)V"
        }
    .end annotation

    .line 675
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 676
    monitor-enter v0

    .line 677
    :try_start_9
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 678
    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw p0

    .line 680
    :cond_11
    :goto_11
    return-void
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 663
    if-eqz p0, :cond_4

    .line 664
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/concurrent/ExecutorService;

    .line 666
    :cond_4
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .registers 2

    .line 1010
    if-eqz p0, :cond_22

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1011
    const-string v0, "kllk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    .line 1012
    sget-object p0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 1013
    sget-object p0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/constants/e;->b:Ljava/lang/String;

    .line 1016
    :cond_22
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 683
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/b;->T:Z

    .line 684
    return-void
.end method

.method private static a(I)[I
    .registers 4

    .line 571
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_1c

    .line 584
    new-array p0, v0, [I

    fill-array-data p0, :array_26

    return-object p0

    .line 580
    :pswitch_c
    new-array p0, v0, [I

    fill-array-data p0, :array_2e

    return-object p0

    .line 577
    :pswitch_12
    new-array p0, v2, [I

    aput v2, p0, v1

    return-object p0

    .line 574
    :pswitch_17
    new-array p0, v2, [I

    aput v1, p0, v1

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_12
        :pswitch_c
    .end packed-switch

    :array_26
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->f()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    goto :goto_c

    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->i()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    .line 546
    :goto_c
    if-eqz v0, :cond_4b

    .line 550
    const/4 v1, 0x0

    .line 551
    const/4 v9, 0x0

    .line 552
    const-wide/16 v2, 0x0

    .line 554
    if-eqz p3, :cond_18

    .line 555
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 557
    :cond_18
    invoke-interface {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/network/h;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_33
    .catchall {:try_start_14 .. :try_end_1c} :catchall_30

    .line 558
    nop

    .line 563
    if-eqz p3, :cond_2f

    .line 564
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v2

    const-string v7, "head"

    move-object v2, p1

    move-object v3, p0

    move v8, p2

    move-object v10, p4

    invoke-static/range {v2 .. v10}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 558
    :cond_2f
    return-object p1

    .line 563
    :catchall_30
    move-exception p1

    move-object v8, v9

    goto :goto_39

    .line 559
    :catch_33
    move-exception p1

    .line 560
    nop

    .line 561
    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 563
    :catchall_36
    move-exception v0

    move-object v8, p1

    move-object p1, v0

    :goto_39
    if-eqz p3, :cond_4a

    .line 564
    const/4 p3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v6, "head"

    move-object v2, p0

    move-object v3, p3

    move v7, p2

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_4a
    throw p1

    .line 547
    :cond_4b
    new-instance p0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 p1, 0x3fe

    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "httpService not exist, netLib = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method

.method public static declared-synchronized b()V
    .registers 5

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 299
    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    if-eqz v1, :cond_9

    .line 300
    monitor-exit v0

    return-void

    .line 301
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3a

    .line 304
    :try_start_c
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string v3, "com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 308
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v2

    if-nez v2, :cond_30

    .line 309
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d()V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_31

    .line 315
    :cond_30
    goto :goto_38

    .line 312
    :catchall_31
    move-exception v1

    .line 313
    const/4 v2, 0x0

    :try_start_33
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z

    .line 314
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3a

    .line 318
    :goto_38
    monitor-exit v0

    return-void

    .line 298
    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(I)V
    .registers 1

    .line 985
    if-lez p0, :cond_4

    .line 986
    sput p0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:I

    .line 987
    :cond_4
    return-void
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .registers 3

    .line 367
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->P:Ljava/util/List;

    monitor-enter v0

    .line 368
    if-eqz p0, :cond_11

    :try_start_5
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_11

    .line 370
    :cond_c
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 369
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    .line 371
    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p0
.end method

.method static declared-synchronized b(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->c(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 206
    monitor-exit v0

    return-void

    .line 204
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V
    .registers 5

    .line 421
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->Q:Ljava/util/List;

    monitor-enter v0

    .line 422
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 423
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/ad;

    .line 425
    if-eqz v2, :cond_18

    .line 426
    invoke-interface {v2, p0, p1}, Lcom/ss/android/socialbase/downloader/depend/ad;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    .line 428
    :cond_18
    goto :goto_7

    .line 429
    :cond_19
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 2

    .line 733
    if-nez p0, :cond_3

    .line 734
    return-void

    .line 736
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 737
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    .line 739
    :cond_d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 741
    :goto_14
    return-void
.end method

.method public static b(Ljava/lang/Runnable;Z)V
    .registers 2

    .line 722
    if-nez p0, :cond_3

    .line 723
    return-void

    .line 725
    :cond_3
    if-eqz p1, :cond_f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->d()Z

    move-result p1

    if-nez p1, :cond_f

    .line 726
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 728
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 730
    :goto_16
    return-void
.end method

.method public static b(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 669
    if-eqz p0, :cond_4

    .line 670
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Ljava/util/concurrent/ExecutorService;

    .line 672
    :cond_4
    return-void
.end method

.method private static b(Z)V
    .registers 1

    .line 1033
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/b;->S:Z

    .line 1034
    return-void
.end method

.method private static c(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    .registers 3

    .line 209
    if-eqz p0, :cond_159

    .line 210
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 211
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 212
    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCache()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 213
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCache()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 214
    :cond_1c
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIdGenerator()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 215
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIdGenerator()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 216
    :cond_29
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkCntCalculator()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 217
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkCntCalculator()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    .line 218
    :cond_36
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 219
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/depend/ah;)V

    .line 220
    :cond_43
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMaxDownloadPoolSize()I

    move-result v0

    if-eqz v0, :cond_50

    .line 221
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMaxDownloadPoolSize()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(I)V

    .line 222
    :cond_50
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHttpService()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 223
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHttpService()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)V

    .line 224
    :cond_5d
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHeadHttpService()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 225
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHeadHttpService()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/network/h;)V

    .line 226
    :cond_6a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadLaunchHandler()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 227
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadLaunchHandler()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 228
    :cond_77
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 229
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 230
    :cond_84
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 231
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->d(Ljava/util/concurrent/ExecutorService;)V

    .line 232
    :cond_91
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 233
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->e(Ljava/util/concurrent/ExecutorService;)V

    .line 234
    :cond_9e
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 235
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->f(Ljava/util/concurrent/ExecutorService;)V

    .line 236
    :cond_ab
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 237
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->g(Ljava/util/concurrent/ExecutorService;)V

    .line 238
    :cond_b8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 239
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->h(Ljava/util/concurrent/ExecutorService;)V

    .line 240
    :cond_c5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 241
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 242
    :cond_d2
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 243
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 245
    :cond_df
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 246
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/util/List;)V

    .line 247
    :cond_f0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMonitorConfig()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 248
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMonitorConfig()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:Lcom/ss/android/socialbase/downloader/downloader/o;

    .line 249
    :cond_fc
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getWriteBufferSize()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_10a

    .line 250
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getWriteBufferSize()I

    move-result v0

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->N:I

    .line 251
    :cond_10a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 252
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/f;)V

    .line 253
    :cond_117
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->isDownloadInMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z

    .line 256
    :cond_120
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadExpSwitch()I

    move-result v0

    if-eqz v0, :cond_12c

    .line 257
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadExpSwitch()I

    move-result v0

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->R:I

    .line 258
    :cond_12c
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadSetting()Lcom/ss/android/socialbase/downloader/depend/ac;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 259
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadSetting()Lcom/ss/android/socialbase/downloader/depend/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/depend/ac;)V

    .line 260
    :cond_139
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadDns()Lcom/ss/android/socialbase/downloader/network/f;

    move-result-object v0

    if-eqz v0, :cond_145

    .line 261
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadDns()Lcom/ss/android/socialbase/downloader/network/f;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Lcom/ss/android/socialbase/downloader/network/f;

    .line 262
    :cond_145
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->needAutoRefreshUnSuccessTask()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadMonitorListener()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v0

    if-eqz v0, :cond_159

    .line 264
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadMonitorListener()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/d/b;)V

    .line 266
    :cond_159
    return-void
.end method

.method private static c(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 633
    if-eqz p0, :cond_4

    .line 634
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    .line 635
    :cond_4
    return-void
.end method

.method public static declared-synchronized c()Z
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 321
    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->C:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 321
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;
    .registers 1

    .line 325
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    return-object v0
.end method

.method private static d(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 638
    if-eqz p0, :cond_4

    .line 639
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    .line 640
    :cond_4
    return-void
.end method

.method public static e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/al;",
            ">;"
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->B:Ljava/util/List;

    monitor-enter v0

    .line 338
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->B:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 339
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static e(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 643
    if-eqz p0, :cond_4

    .line 644
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    .line 645
    :cond_4
    return-void
.end method

.method public static f()Lcom/ss/android/socialbase/downloader/network/h;
    .registers 1

    .line 433
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/network/h;

    return-object v0
.end method

.method private static f(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 648
    if-eqz p0, :cond_4

    .line 649
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    .line 650
    :cond_4
    return-void
.end method

.method public static g()Lcom/ss/android/socialbase/downloader/d/b;
    .registers 1

    .line 437
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->z:Lcom/ss/android/socialbase/downloader/d/b;

    return-object v0
.end method

.method private static g(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 653
    if-eqz p0, :cond_4

    .line 654
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Ljava/util/concurrent/ExecutorService;

    .line 655
    :cond_4
    return-void
.end method

.method public static h()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;
    .registers 2

    .line 589
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    if-nez v0, :cond_17

    .line 590
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 591
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    if-nez v1, :cond_12

    .line 592
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/g;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/g;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    .line 594
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 596
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    return-object v0
.end method

.method private static h(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .line 658
    if-eqz p0, :cond_4

    .line 659
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Ljava/util/concurrent/ExecutorService;

    .line 660
    :cond_4
    return-void
.end method

.method public static i()Lcom/ss/android/socialbase/downloader/network/h;
    .registers 2

    .line 600
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/network/h;

    if-nez v0, :cond_17

    .line 601
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 602
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/network/h;

    if-nez v1, :cond_12

    .line 603
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/network/h;

    .line 605
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 607
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/network/h;

    return-object v0
.end method

.method public static j()Z
    .registers 3

    .line 688
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->T:Z

    const-string v2, "switch_not_auto_boot_service"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 689
    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static declared-synchronized k()Lcom/ss/android/socialbase/downloader/downloader/o;
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 693
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->y:Lcom/ss/android/socialbase/downloader/downloader/o;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 693
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .line 747
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_34

    .line 748
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 749
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2f

    .line 750
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/b;->J:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-cpu-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_31

    .line 753
    :try_start_25
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 756
    goto :goto_2d

    .line 754
    :catchall_29
    move-exception v2

    .line 755
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 758
    :goto_2d
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    .line 760
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    .line 762
    :cond_34
    :goto_34
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static m()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 766
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static n()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 774
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static o()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 781
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Ljava/util/concurrent/ExecutorService;

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static p()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .line 788
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_34

    .line 789
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 790
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2f

    .line 791
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/b;->L:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-mix-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_31

    .line 794
    :try_start_25
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 797
    goto :goto_2d

    .line 795
    :catchall_29
    move-exception v2

    .line 796
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 799
    :goto_2d
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    .line 801
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    .line 803
    :cond_34
    :goto_34
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static q()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .line 810
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_34

    .line 811
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 812
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2f

    .line 813
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/b;->K:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-chunk-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_31

    .line 816
    :try_start_25
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 819
    goto :goto_2d

    .line 817
    :catchall_29
    move-exception v2

    .line 818
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 821
    :goto_2d
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/concurrent/ExecutorService;

    .line 823
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    .line 825
    :cond_34
    :goto_34
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static r()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .line 832
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_34

    .line 833
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 834
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2f

    .line 835
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/b;->M:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-db-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_31

    .line 838
    :try_start_25
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 841
    goto :goto_2d

    .line 839
    :catchall_29
    move-exception v2

    .line 840
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 843
    :goto_2d
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Ljava/util/concurrent/ExecutorService;

    .line 845
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v1

    .line 847
    :cond_34
    :goto_34
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static s()Lokhttp3/OkHttpClient;
    .registers 2

    .line 851
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1a

    .line 852
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 853
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_15

    .line 854
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 855
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Lokhttp3/OkHttpClient;

    .line 857
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 859
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static t()Lokhttp3/OkHttpClient$Builder;
    .registers 5

    .line 863
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 864
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 865
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 866
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 867
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 868
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 869
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 870
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_39

    .line 871
    new-instance v1, Lokhttp3/Dispatcher;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 873
    :cond_39
    return-object v0
.end method

.method public static u()Lcom/ss/android/socialbase/downloader/network/f;
    .registers 1

    .line 877
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Lcom/ss/android/socialbase/downloader/network/f;

    return-object v0
.end method

.method public static v()Lcom/ss/android/socialbase/downloader/network/f;
    .registers 2

    .line 881
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Lcom/ss/android/socialbase/downloader/network/f;

    if-nez v0, :cond_17

    .line 882
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 883
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Lcom/ss/android/socialbase/downloader/network/f;

    if-nez v1, :cond_12

    .line 884
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/b$2;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/b$2;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Lcom/ss/android/socialbase/downloader/network/f;

    .line 891
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 893
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Lcom/ss/android/socialbase/downloader/network/f;

    return-object v0
.end method

.method public static declared-synchronized w()Lcom/ss/android/socialbase/downloader/downloader/k;
    .registers 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 897
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Lcom/ss/android/socialbase/downloader/downloader/k;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 897
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static x()Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .line 912
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_17

    .line 913
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 914
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v1, :cond_12

    .line 915
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 917
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 919
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public static y()Lcom/ss/android/socialbase/downloader/downloader/n;
    .registers 2

    .line 928
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_17

    .line 929
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 930
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v1, :cond_12

    .line 931
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 933
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 935
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    return-object v0
.end method

.method public static z()Lcom/ss/android/socialbase/downloader/downloader/n;
    .registers 2

    .line 939
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_17

    .line 940
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 941
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v1, :cond_12

    .line 942
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 944
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 946
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/n;

    return-object v0
.end method
