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
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/tramini/plugin/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/b/b;->a:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    .line 20
    sput-object v1, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tramini/plugin/b/b;->e:Z

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/b/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    if-nez v0, :cond_13

    .line 31
    const-class v1, Lcom/tramini/plugin/b/b;

    monitor-enter v1

    .line 32
    :try_start_7
    sget-object v0, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    if-nez v0, :cond_12

    .line 33
    new-instance v0, Lcom/tramini/plugin/b/b;

    invoke-direct {v0, p0}, Lcom/tramini/plugin/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    .line 35
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 37
    :cond_13
    sget-object v0, Lcom/tramini/plugin/b/b;->b:Lcom/tramini/plugin/b/b;

    return-object v0

    .line 35
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lcom/tramini/plugin/a/c/b;)V
    .registers 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/tramini/plugin/b/b;->e:Z

    if-eqz v0, :cond_5

    .line 109
    :cond_4
    :goto_4
    return-void

    .line 103
    :cond_5
    sget-object v0, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 107
    new-instance v0, Lcom/tramini/plugin/a/c/d;

    invoke-direct {v0}, Lcom/tramini/plugin/a/c/d;-><init>()V

    .line 108
    invoke-virtual {v0, p1}, Lcom/tramini/plugin/a/c/d;->a(Lcom/tramini/plugin/a/c/b;)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/tramini/plugin/b/b;Z)Z
    .registers 2

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/tramini/plugin/b/b;->e:Z

    return p1
.end method

.method private static b(Landroid/content/Context;)Lcom/tramini/plugin/b/a;
    .registers 4

    .prologue
    .line 88
    const-string v0, "tramini"

    const-string v1, "P_SY"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/tramini/plugin/a/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 90
    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/tramini/plugin/b/a;->a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 94
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/a/c/c;)V
    .registers 4

    .prologue
    .line 115
    new-instance v0, Lcom/tramini/plugin/b/b$1;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/b/b$1;-><init>(Lcom/tramini/plugin/b/b;Lcom/tramini/plugin/a/c/c;)V

    .line 1099
    iget-boolean v1, p0, Lcom/tramini/plugin/b/b;->e:Z

    if-nez v1, :cond_19

    .line 1103
    sget-object v1, Lcom/tramini/plugin/a/f/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1107
    new-instance v1, Lcom/tramini/plugin/a/c/d;

    invoke-direct {v1}, Lcom/tramini/plugin/a/c/d;-><init>()V

    .line 1108
    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/c/d;->a(Lcom/tramini/plugin/a/c/b;)V

    .line 146
    :cond_19
    return-void
.end method

.method public final a()Z
    .registers 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    const-string v1, "tramini"

    const-string v2, "P_UD_TE"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 47
    invoke-virtual {p0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_29

    .line 49
    invoke-virtual {v2}, Lcom/tramini/plugin/b/a;->b()J

    move-result-wide v2

    .line 51
    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public final declared-synchronized b()Lcom/tramini/plugin/b/a;
    .registers 5

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-nez v0, :cond_2f

    .line 66
    :try_start_5
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 67
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/tramini/plugin/b/b;->d:Landroid/content/Context;

    .line 1088
    const-string v1, "tramini"

    const-string v2, "P_SY"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1090
    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {v0}, Lcom/tramini/plugin/b/a;->a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 69
    :goto_2d
    sput-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_38
    .catchall {:try_start_5 .. :try_end_2f} :catchall_35

    .line 78
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-object v0, Lcom/tramini/plugin/b/b;->c:Lcom/tramini/plugin/b/a;
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_35

    monitor-exit p0

    return-object v0

    .line 1094
    :cond_33
    const/4 v0, 0x0

    goto :goto_2d

    .line 64
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_38
    move-exception v0

    goto :goto_2f
.end method
