.class public Lcom/tramini/plugin/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tramini/plugin/a/a/b;


# instance fields
.field a:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tramini/plugin/a/a/b;->a:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tramini/plugin/a/a/b;->d:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b;->e:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/tramini/plugin/a/a/b;
    .registers 2

    .line 56
    sget-object v0, Lcom/tramini/plugin/a/a/b;->b:Lcom/tramini/plugin/a/a/b;

    if-nez v0, :cond_13

    .line 57
    const-class v0, Lcom/tramini/plugin/a/a/b;

    monitor-enter v0

    .line 58
    :try_start_7
    new-instance v1, Lcom/tramini/plugin/a/a/b;

    invoke-direct {v1}, Lcom/tramini/plugin/a/a/b;-><init>()V

    sput-object v1, Lcom/tramini/plugin/a/a/b;->b:Lcom/tramini/plugin/a/a/b;

    .line 59
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 61
    :cond_13
    :goto_13
    sget-object v0, Lcom/tramini/plugin/a/a/b;->b:Lcom/tramini/plugin/a/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V
    .registers 9

    .line 43
    nop

    .line 2135
    nop

    .line 2145
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    const-string v1, "tramini"

    const-string v2, "P_IL_O"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2146
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 2147
    nop

    .line 2149
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2150
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 2151
    const/4 v5, 0x1

    if-eqz v0, :cond_4e

    .line 2152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2154
    move v0, v5

    goto :goto_4f

    .line 2156
    :cond_2d
    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2159
    aget-object v6, v0, v3

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 2160
    iput-boolean v5, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 2161
    move v0, v5

    goto :goto_4f

    .line 2164
    :cond_3f
    :try_start_3f
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tramini/plugin/a/a/b;->g:I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_47} :catch_48

    .line 2168
    goto :goto_4e

    .line 2166
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2167
    iput v5, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 2173
    :cond_4e
    :goto_4e
    move v0, v3

    :goto_4f
    if-eqz v0, :cond_6b

    .line 2175
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iput v5, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 2137
    :cond_6b
    invoke-static {p1}, Lcom/tramini/plugin/a/c;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/c;->a(Z)V

    .line 2138
    iput-boolean v3, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 2140
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->e(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/b/a;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .line 329
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method static synthetic b(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/tramini/plugin/a/a/b;->e:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic b(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method private b(Lcom/tramini/plugin/b/a;)V
    .registers 3

    .line 240
    new-instance v0, Lcom/tramini/plugin/a/a/b$4;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/a/a/b$4;-><init>(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V

    invoke-direct {p0, v0}, Lcom/tramini/plugin/a/a/b;->b(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 4

    .line 321
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 322
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 324
    :cond_e
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method private static b(Ljava/lang/Runnable;J)V
    .registers 4

    .line 341
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;J)V

    .line 342
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method private d()V
    .registers 8

    .line 145
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    const-string v1, "tramini"

    const-string v2, "P_IL_O"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 147
    nop

    .line 149
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 151
    const/4 v5, 0x1

    if-eqz v0, :cond_4c

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 154
    move v3, v5

    goto :goto_4c

    .line 156
    :cond_2b
    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    aget-object v6, v0, v3

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 160
    iput-boolean v5, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 161
    move v3, v5

    goto :goto_4c

    .line 164
    :cond_3d
    :try_start_3d
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tramini/plugin/a/a/b;->g:I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_45} :catch_46

    .line 168
    goto :goto_4c

    .line 166
    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 167
    iput v5, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 173
    :cond_4c
    :goto_4c
    if-eqz v3, :cond_68

    .line 175
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput v5, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 178
    :cond_68
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 9

    .line 135
    nop

    .line 1145
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    const-string v1, "tramini"

    const-string v2, "P_IL_O"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 1147
    nop

    .line 1149
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1150
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    const/4 v5, 0x1

    if-eqz v0, :cond_4d

    .line 1152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1154
    move v0, v5

    goto :goto_4e

    .line 1156
    :cond_2c
    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1159
    aget-object v6, v0, v3

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 1160
    iput-boolean v5, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 1161
    move v0, v5

    goto :goto_4e

    .line 1164
    :cond_3e
    :try_start_3e
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tramini/plugin/a/a/b;->g:I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_46} :catch_47

    .line 1168
    goto :goto_4d

    .line 1166
    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1167
    iput v5, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 1173
    :cond_4d
    :goto_4d
    move v0, v3

    :goto_4e
    if-eqz v0, :cond_6a

    .line 1175
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iput v5, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 137
    :cond_6a
    invoke-static {p1}, Lcom/tramini/plugin/a/c;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/c;->a(Z)V

    .line 138
    iput-boolean v3, p0, Lcom/tramini/plugin/a/a/b;->h:Z

    .line 140
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->e(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method private static e()V
    .registers 0

    .line 379
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 3

    .line 182
    invoke-static {p1}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/b/a;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V

    .line 187
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .line 317
    iput p1, p0, Lcom/tramini/plugin/a/a/b;->g:I

    .line 318
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 5

    .line 83
    if-nez p1, :cond_3

    .line 84
    return-void

    .line 88
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1069
    iput-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Lcom/tramini/plugin/a/g/h;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_64

    if-eqz v0, :cond_10

    .line 93
    return-void

    .line 98
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_22

    .line 99
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    .line 1073
    iget-object v0, v0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    .line 99
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tramini/plugin/a/a/b;->f:Landroid/content/BroadcastReceiver;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_23

    .line 104
    :cond_22
    goto :goto_24

    .line 102
    :catchall_23
    move-exception v0

    .line 105
    :goto_24
    :try_start_24
    new-instance v0, Lcom/tramini/plugin/a/b;

    invoke-direct {v0}, Lcom/tramini/plugin/a/b;-><init>()V

    iput-object v0, p0, Lcom/tramini/plugin/a/a/b;->f:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tramini/plugin/a/a/b;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_56

    .line 113
    goto :goto_57

    .line 111
    :catchall_56
    move-exception v0

    .line 116
    :goto_57
    :try_start_57
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$1;-><init>(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_64

    .line 126
    return-void

    .line 124
    :catchall_64
    move-exception p1

    .line 127
    return-void
.end method

.method public final declared-synchronized a(Lcom/tramini/plugin/b/a;)V
    .registers 6

    monitor-enter p0

    .line 192
    :try_start_1
    iget-boolean v0, p0, Lcom/tramini/plugin/a/a/b;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz v0, :cond_7

    .line 193
    monitor-exit p0

    return-void

    .line 196
    :cond_7
    if-eqz p1, :cond_22

    .line 197
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/tramini/plugin/a/a/b;->a:Z

    .line 198
    invoke-static {}, Lcom/tramini/plugin/a/g/b;->a()Lcom/tramini/plugin/a/g/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tramini/plugin/a/g/b;->a(Lcom/tramini/plugin/b/a;)V

    .line 200
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$2;-><init>(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/Runnable;J)V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_24

    .line 207
    :cond_22
    monitor-exit p0

    return-void

    .line 191
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 290
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$5;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$5;-><init>(Lcom/tramini/plugin/a/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4

    .line 216
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$3;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$3;-><init>(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 304
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$6;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$6;-><init>(Lcom/tramini/plugin/a/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public final c()I
    .registers 2

    .line 313
    iget v0, p0, Lcom/tramini/plugin/a/a/b;->g:I

    return v0
.end method
