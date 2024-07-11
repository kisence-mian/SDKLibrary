.class public Lcom/tramini/plugin/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/tramini/plugin/b/b;

.field private static c:Lcom/tramini/plugin/b/a;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/tramini/plugin/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/b/b;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    .line 28
    sput-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    .line 34
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tramini/plugin/b/b;->e:Z

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/b/b;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;
    .registers 3

    const-class v0, Lcom/tramini/plugin/b/b;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    if-nez v1, :cond_e

    .line 39
    new-instance v1, Lcom/tramini/plugin/b/b;

    invoke-direct {v1, p0}, Lcom/tramini/plugin/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    .line 41
    :cond_e
    sget-object p0, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 37
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/tramini/plugin/a/d/b;)V
    .registers 4

    .line 104
    iget-boolean v0, p0, Lcom/tramini/plugin/b/b;->e:Z

    if-eqz v0, :cond_5

    .line 105
    return-void

    .line 108
    :cond_5
    sget-object v0, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 109
    return-void

    .line 112
    :cond_e
    new-instance v0, Lcom/tramini/plugin/a/d/d;

    invoke-direct {v0}, Lcom/tramini/plugin/a/d/d;-><init>()V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/tramini/plugin/a/d/d;->a(ILcom/tramini/plugin/a/d/b;)V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/b/b;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/tramini/plugin/b/b;->e:Z

    return p1
.end method

.method private static b(Landroid/content/Context;)Lcom/tramini/plugin/b/a;
    .registers 4

    .line 93
    const-string v0, "tramini"

    const-string v1, "P_SY"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 95
    invoke-static {p0}, Lcom/tramini/plugin/a/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/tramini/plugin/b/a;->a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;

    move-result-object p0

    .line 97
    return-object p0

    .line 99
    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/a/d/c;)V
    .registers 4

    .line 120
    new-instance v0, Lcom/tramini/plugin/b/b$1;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/b/b$1;-><init>(Lcom/tramini/plugin/b/b;Lcom/tramini/plugin/a/d/c;)V

    .line 1104
    iget-boolean p1, p0, Lcom/tramini/plugin/b/b;->e:Z

    if-nez p1, :cond_1a

    .line 1108
    sget-object p1, Lcom/tramini/plugin/a/g/c;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1112
    new-instance p1, Lcom/tramini/plugin/a/d/d;

    invoke-direct {p1}, Lcom/tramini/plugin/a/d/d;-><init>()V

    .line 1113
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tramini/plugin/a/d/d;->a(ILcom/tramini/plugin/a/d/b;)V

    .line 158
    :cond_1a
    return-void
.end method

.method public final a()Z
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tramini"

    const-string v3, "P_UD_TE"

    invoke-static {v0, v2, v3, v1}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 51
    invoke-virtual {p0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_29

    .line 53
    invoke-virtual {v2}, Lcom/tramini/plugin/b/a;->c()J

    move-result-wide v2

    .line 55
    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 56
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b()Lcom/tramini/plugin/b/a;
    .registers 5

    monitor-enter p0

    .line 68
    :try_start_1
    sget-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_40

    if-nez v0, :cond_3c

    .line 70
    :try_start_5
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 71
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    .line 73
    :cond_13
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    .line 1093
    const-string v1, "tramini"

    const-string v2, "P_SY"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1095
    invoke-static {v0}, Lcom/tramini/plugin/a/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    invoke-static {v0}, Lcom/tramini/plugin/b/a;->a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 1097
    goto :goto_2f

    .line 1099
    :cond_2e
    const/4 v0, 0x0

    .line 73
    :goto_2f
    sput-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_32
    .catchall {:try_start_5 .. :try_end_31} :catchall_40

    .line 80
    goto :goto_33

    .line 75
    :catch_32
    move-exception v0

    .line 81
    :goto_33
    :try_start_33
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/b/a;)V

    .line 83
    :cond_3c
    sget-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-object v0

    .line 67
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method
