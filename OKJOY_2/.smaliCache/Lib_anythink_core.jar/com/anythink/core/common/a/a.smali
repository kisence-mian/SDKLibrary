.class public final Lcom/anythink/core/common/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/common/a/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/a/a;
    .registers 2

    const-class v0, Lcom/anythink/core/common/a/a;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/a/a;->a:Lcom/anythink/core/common/a/a;

    if-nez v1, :cond_e

    .line 24
    new-instance v1, Lcom/anythink/core/common/a/a;

    invoke-direct {v1}, Lcom/anythink/core/common/a/a;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a/a;->a:Lcom/anythink/core/common/a/a;

    .line 26
    :cond_e
    sget-object v1, Lcom/anythink/core/common/a/a;->a:Lcom/anythink/core/common/a/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 38
    sget-object v0, Lcom/anythink/core/common/b/e;->w:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/anythink/core/common/b/e;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_win_notice"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 30
    sget-object v0, Lcom/anythink/core/common/b/e;->w:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 34
    sget-object v0, Lcom/anythink/core/common/b/e;->w:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 43
    sget-object v0, Lcom/anythink/core/common/b/e;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_win_notice"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 47
    sget-object v0, Lcom/anythink/core/common/b/e;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_win_notice"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1e

    return p1

    :cond_1e
    return v1
.end method
