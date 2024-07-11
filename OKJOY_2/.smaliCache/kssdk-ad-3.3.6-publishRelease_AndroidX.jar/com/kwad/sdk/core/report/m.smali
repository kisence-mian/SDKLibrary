.class public Lcom/kwad/sdk/core/report/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/report/m;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kwad/sdk/core/report/m;->b:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    const-string v0, "ReportIdManager"

    const-string v1, ">> updateSessionId"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/report/m;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/report/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/kwad/sdk/core/report/m;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;J)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    const-string v1, "ksadsdk_seq"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "seq"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0

    :cond_17
    return v0
.end method

.method private static b(Landroid/content/Context;)J
    .registers 4

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    const-string v1, "ksadsdk_seq"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_14

    const-wide/16 v0, 0x1

    const-string v2, "seq"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/report/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;J)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    const-string v1, "ksadsdk_mplogseq"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "seq"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0

    :cond_17
    return v0
.end method

.method public static c()J
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/report/m;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/m;->b(Landroid/content/Context;)J

    move-result-wide v0

    sget-object v2, Lcom/kwad/sdk/core/report/m;->c:Landroid/content/Context;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/kwad/sdk/core/report/m;->a(Landroid/content/Context;J)Z

    return-wide v0
.end method

.method private static c(Landroid/content/Context;)J
    .registers 4

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    const-string v1, "ksadsdk_mplogseq"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_14

    const-wide/16 v0, 0x1

    const-string v2, "seq"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    return-wide v0
.end method

.method public static declared-synchronized d()J
    .registers 6

    const-class v0, Lcom/kwad/sdk/core/report/m;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/kwad/sdk/core/report/m;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/kwad/sdk/core/report/m;->c(Landroid/content/Context;)J

    move-result-wide v1

    sget-object v3, Lcom/kwad/sdk/core/report/m;->c:Landroid/content/Context;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-static {v3, v4, v5}, Lcom/kwad/sdk/core/report/m;->b(Landroid/content/Context;J)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-wide v1

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e()J
    .registers 2

    sget-wide v0, Lcom/kwad/sdk/core/report/m;->b:J

    return-wide v0
.end method

.method private static f()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
