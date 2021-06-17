.class public Lcom/umeng/commonsdk/internal/utils/b;
.super Ljava/lang/Object;
.source "BaseStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "BaseStationUtils"

.field private static c:Z

.field private static d:Landroid/content/Context;


# instance fields
.field a:Landroid/telephony/PhoneStateListener;

.field private e:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/b;->c:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/b$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/utils/b$1;-><init>(Lcom/umeng/commonsdk/internal/utils/b;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b;->a:Landroid/telephony/PhoneStateListener;

    .line 34
    if-eqz p1, :cond_19

    .line 35
    :try_start_c
    const-string v0, "phone"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b;->e:Landroid/telephony/TelephonyManager;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_19

    .line 38
    :catchall_17
    move-exception p1

    goto :goto_1a

    .line 40
    :cond_19
    :goto_19
    nop

    .line 41
    :goto_1a
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/umeng/commonsdk/internal/utils/b$1;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/internal/utils/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/umeng/commonsdk/internal/utils/b;->e:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/commonsdk/internal/utils/b;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b;->e:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;
    .registers 2

    .line 48
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 49
    if-eqz p0, :cond_c

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/Context;

    .line 53
    :cond_c
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b$a;->a()Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/umeng/commonsdk/internal/utils/b;)Ljava/lang/String;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/utils/b;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    .line 21
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 4

    .line 132
    nop

    .line 134
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/Context;

    const-string v2, "phone"

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 136
    if-nez v1, :cond_f

    .line 137
    return-object v0

    .line 139
    :cond_f
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 142
    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_40

    .line 144
    :cond_2a
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 145
    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_42

    .line 146
    :cond_35
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 147
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_42

    .line 143
    :cond_40
    :goto_40
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_43

    .line 152
    :cond_42
    :goto_42
    goto :goto_44

    .line 150
    :catchall_43
    move-exception v1

    .line 153
    :goto_44
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    sget-boolean v0, Lcom/umeng/commonsdk/internal/utils/b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 57
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 6

    monitor-enter p0

    .line 157
    :try_start_1
    const-string v0, "BaseStationUtils"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "base station registerListener"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    .line 160
    :try_start_e
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_19

    .line 161
    iget-object v2, p0, Lcom/umeng/commonsdk/internal/utils/b;->a:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 163
    :cond_19
    sput-boolean v1, Lcom/umeng/commonsdk/internal/utils/b;->c:Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    .line 166
    goto :goto_1d

    .line 164
    :catchall_1c
    move-exception v0

    .line 167
    :goto_1d
    monitor-exit p0

    return-void

    .line 156
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    .line 170
    :try_start_1
    const-string v0, "BaseStationUtils"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "base station unRegisterListener"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1d

    .line 172
    :try_start_e
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    .line 173
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b;->a:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 175
    :cond_17
    sput-boolean v3, Lcom/umeng/commonsdk/internal/utils/b;->c:Z
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    .line 178
    goto :goto_1b

    .line 176
    :catchall_1a
    move-exception v0

    .line 179
    :goto_1b
    monitor-exit p0

    return-void

    .line 169
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
