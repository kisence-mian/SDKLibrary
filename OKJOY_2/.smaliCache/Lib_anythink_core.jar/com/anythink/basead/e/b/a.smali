.class public final Lcom/anythink/basead/e/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/basead/e/b/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/basead/e/b/a;
    .registers 2

    const-class v0, Lcom/anythink/basead/e/b/a;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-object v1, Lcom/anythink/basead/e/b/a;->a:Lcom/anythink/basead/e/b/a;

    if-nez v1, :cond_e

    .line 25
    new-instance v1, Lcom/anythink/basead/e/b/a;

    invoke-direct {v1}, Lcom/anythink/basead/e/b/a;-><init>()V

    sput-object v1, Lcom/anythink/basead/e/b/a;->a:Lcom/anythink/basead/e/b/a;

    .line 27
    :cond_e
    sget-object v1, Lcom/anythink/basead/e/b/a;->a:Lcom/anythink/basead/e/b/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/anythink/core/common/d/i;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 39
    sget-object v0, Lcom/anythink/core/common/b/e;->u:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 31
    sget-object v0, Lcom/anythink/core/common/b/e;->u:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 35
    sget-object v0, Lcom/anythink/core/common/b/e;->u:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
