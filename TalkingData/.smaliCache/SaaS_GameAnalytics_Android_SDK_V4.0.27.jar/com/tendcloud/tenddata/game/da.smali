.class public Lcom/tendcloud/tenddata/game/da;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/da;->a:Ljava/util/List;

    .line 29
    :try_start_7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "excHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/da;->c:Landroid/os/HandlerThread;

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tendcloud/tenddata/game/da;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/da;->b:Landroid/os/Handler;
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    .line 34
    goto :goto_22

    .line 32
    :catchall_21
    move-exception v0

    .line 35
    :goto_22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 105
    array-length v3, v2

    const/16 v4, 0x32

    if-le v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    array-length v4, v2

    .line 106
    :goto_1c
    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v4, :cond_2f

    .line 107
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 111
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 112
    if-eqz p0, :cond_39

    .line 113
    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/tendcloud/tenddata/game/da;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_3a

    .line 116
    :cond_39
    goto :goto_3b

    .line 114
    :catchall_3a
    move-exception p0

    .line 117
    :goto_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/List;
    .registers 1

    .line 22
    sget-object v0, Lcom/tendcloud/tenddata/game/da;->a:Ljava/util/List;

    return-object v0
.end method

.method private static final a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    .registers 10

    .line 124
    const-string v0, "\r\n"

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 125
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 126
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 127
    :goto_c
    if-ltz v2, :cond_1f

    if-ltz v3, :cond_1f

    aget-object v4, v1, v2

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 128
    add-int/lit8 v2, v2, -0x1

    .line 129
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 131
    :cond_1f
    const/16 p1, 0x32

    if-le v2, p1, :cond_25

    const/16 v2, 0x32

    .line 132
    :cond_25
    const-string p1, "Caused by : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 p1, 0x0

    :goto_31
    if-gt p1, v2, :cond_43

    .line 136
    const-string v3, "\t"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    aget-object v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 140
    :cond_43
    const/4 p1, 0x5

    if-lt p3, p1, :cond_47

    .line 141
    return-void

    .line 143
    :cond_47
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 144
    if-eqz p1, :cond_52

    .line 145
    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, v1, p2, p3}, Lcom/tendcloud/tenddata/game/da;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_53

    .line 148
    :cond_52
    goto :goto_54

    .line 146
    :catchall_53
    move-exception p0

    .line 149
    :goto_54
    return-void
.end method

.method public static a(ZLjava/util/Map;)V
    .registers 4

    .line 72
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/da;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tendcloud/tenddata/game/dc;

    invoke-direct {v1, p1, p0}, Lcom/tendcloud/tenddata/game/dc;-><init>(Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 95
    goto :goto_c

    .line 93
    :catchall_b
    move-exception p0

    .line 96
    :goto_c
    return-void
.end method

.method public static postSDKError(Ljava/lang/Throwable;)V
    .registers 3

    .line 39
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/da;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/db;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 67
    goto :goto_c

    .line 65
    :catchall_b
    move-exception p0

    .line 68
    :goto_c
    return-void
.end method
