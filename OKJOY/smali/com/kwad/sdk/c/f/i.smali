.class public Lcom/kwad/sdk/c/f/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/c/f/i;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kwad/sdk/c/f/i;->b:J

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/kwad/sdk/c/f/i;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;J)Z
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    const-string v1, "ksadsdk_seq"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "seq"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :cond_16
    return v0
.end method

.method public static b()J
    .registers 2

    sget-wide v0, Lcom/kwad/sdk/c/f/i;->b:J

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)J
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_15

    const-string v2, "ksadsdk_seq"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_15

    const-string v0, "seq"

    const-wide/16 v4, 0x1

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_15
    return-wide v0
.end method

.method public static c()J
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/c/f/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/i;->b(Landroid/content/Context;)J

    move-result-wide v0

    sget-object v2, Lcom/kwad/sdk/c/f/i;->c:Landroid/content/Context;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/kwad/sdk/c/f/i;->a(Landroid/content/Context;J)Z

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/f/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static e()J
    .registers 2

    const-string v0, "ReportIdManager"

    const-string v1, ">> updateListId"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kwad/sdk/c/f/i;->b:J

    sget-wide v0, Lcom/kwad/sdk/c/f/i;->b:J

    return-wide v0
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    const-string v0, "ReportIdManager"

    const-string v1, ">> updateSessionId"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/c/f/i;->a:Ljava/lang/String;

    sget-object v0, Lcom/kwad/sdk/c/f/i;->a:Ljava/lang/String;

    return-object v0
.end method
