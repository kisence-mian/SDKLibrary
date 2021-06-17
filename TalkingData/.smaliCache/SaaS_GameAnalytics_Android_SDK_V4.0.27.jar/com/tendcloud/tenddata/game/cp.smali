.class public final Lcom/tendcloud/tenddata/game/cp;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cp; = null

.field private static b:Ljava/util/Map; = null

.field private static final c:I = 0xa4cb80


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cp;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_3
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cp;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 59
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cp;->b()V

    .line 61
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cp;->d()V

    .line 63
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cp;->e()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 72
    :cond_12
    goto :goto_17

    .line 67
    :catchall_13
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 74
    :goto_17
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cp;
    .registers 2

    .line 46
    sget-object v0, Lcom/tendcloud/tenddata/game/cp;->a:Lcom/tendcloud/tenddata/game/cp;

    if-nez v0, :cond_17

    .line 47
    const-class v0, Lcom/tendcloud/tenddata/game/cp;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/cp;->a:Lcom/tendcloud/tenddata/game/cp;

    if-nez v1, :cond_12

    .line 49
    new-instance v1, Lcom/tendcloud/tenddata/game/cp;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cp;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cp;->a:Lcom/tendcloud/tenddata/game/cp;

    .line 51
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 53
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/cp;->a:Lcom/tendcloud/tenddata/game/cp;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .registers 6

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_55

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 176
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_56

    .line 178
    :try_start_25
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 179
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 180
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 179
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_3b

    .line 183
    goto :goto_41

    .line 181
    :catchall_3b
    move-exception v3

    .line 182
    :try_start_3c
    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_41
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_4f

    .line 185
    const-string v2, "1"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 187
    :cond_4f
    const-string v2, "0"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_56

    .line 189
    :goto_54
    goto :goto_14

    .line 196
    :cond_55
    goto :goto_5a

    .line 191
    :catchall_56
    move-exception p1

    .line 195
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 197
    :goto_5a
    return-object v0
.end method

.method private b()V
    .registers 6

    .line 81
    nop

    .line 82
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 84
    invoke-static {}, Lcom/tendcloud/tenddata/game/bh;->a()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/an;

    .line 86
    iget-object v3, v2, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v2, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 87
    goto :goto_16

    .line 89
    :cond_37
    iget-object v2, v2, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_16

    .line 91
    :cond_3d
    goto :goto_75

    .line 92
    :cond_3e
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "activity"

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 94
    if-eqz v1, :cond_75

    .line 95
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    nop

    .line 97
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_75

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 100
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_88

    .line 102
    :try_start_69
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_72

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    .line 109
    :cond_72
    goto :goto_74

    .line 105
    :catchall_73
    move-exception v3

    .line 110
    :goto_74
    goto :goto_5b

    .line 114
    :cond_75
    :goto_75
    :try_start_75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/tendcloud/tenddata/game/cp;->b:Ljava/util/Map;

    const-string v2, "ras"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/as;->setCollectRunningTime(J)V
    :try_end_87
    .catchall {:try_start_75 .. :try_end_87} :catchall_88

    .line 128
    goto :goto_8c

    .line 123
    :catchall_88
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 129
    :goto_8c
    return-void
.end method

.method private c()Z
    .registers 6

    .line 134
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->g()J

    move-result-wide v0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_13

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xa4cb80

    cmp-long v4, v2, v0

    if-lez v4, :cond_12

    .line 136
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_12
    goto :goto_14

    .line 138
    :catchall_13
    move-exception v0

    .line 144
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .registers 4

    .line 153
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cp;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/tendcloud/tenddata/game/cp;->b:Ljava/util/Map;

    const-string v2, "aas"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 166
    goto :goto_16

    .line 161
    :catchall_12
    move-exception v0

    .line 165
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 167
    :goto_16
    return-void
.end method

.method private e()V
    .registers 5

    .line 202
    const-string v0, "AppList"

    new-instance v1, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 203
    nop

    .line 205
    :try_start_8
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_27

    .line 213
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 214
    goto :goto_37

    .line 207
    :catchall_27
    move-exception v2

    .line 211
    :try_start_28
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5f

    .line 213
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    .line 216
    :goto_37
    if-eqz v2, :cond_5e

    .line 217
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_46

    .line 218
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/tendcloud/tenddata/game/dl;->e:Landroid/util/Pair;

    .line 223
    :cond_46
    const-string v0, "env"

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 224
    const-string v0, "apps"

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 225
    sget-object v0, Lcom/tendcloud/tenddata/game/cp;->b:Ljava/util/Map;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 226
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 227
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 228
    return-void

    .line 221
    :cond_5e
    return-void

    .line 213
    :catchall_5f
    move-exception v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    throw v0
.end method
