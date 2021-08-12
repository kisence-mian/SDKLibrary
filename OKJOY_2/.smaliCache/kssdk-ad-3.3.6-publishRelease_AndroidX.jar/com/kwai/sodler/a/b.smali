.class public Lcom/kwai/sodler/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwai/sodler/a/b;->a:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/kwai/sodler/a/b;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/kwai/sodler/a/b;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3e

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Lcom/kwai/sodler/lib/ext/c$a;

    invoke-direct {v1}, Lcom/kwai/sodler/lib/ext/c$a;-><init>()V

    const-string v2, "sodler"

    invoke-virtual {v1, v2}, Lcom/kwai/sodler/lib/ext/c$a;->a(Ljava/lang/String;)Lcom/kwai/sodler/lib/ext/c$a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/kwai/sodler/lib/ext/c$a;->a(I)Lcom/kwai/sodler/lib/ext/c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kwai/sodler/lib/ext/c$a;->a(Z)Lcom/kwai/sodler/lib/ext/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwai/sodler/lib/ext/c$a;->a()Lcom/kwai/sodler/lib/ext/c;

    move-result-object v1

    invoke-static {}, Lcom/kwai/sodler/lib/j;->a()Lcom/kwai/sodler/lib/j;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/kwai/sodler/lib/j;->a(Landroid/content/Context;Lcom/kwai/sodler/lib/ext/c;)V

    invoke-static {}, Lcom/kwai/sodler/lib/j;->a()Lcom/kwai/sodler/lib/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwai/sodler/lib/j;->d()Lcom/kwai/sodler/lib/a/g;

    move-result-object p0

    new-instance v1, Lcom/kwai/sodler/a/b$1;

    invoke-direct {v1}, Lcom/kwai/sodler/a/b$1;-><init>()V

    invoke-interface {p0, v1}, Lcom/kwai/sodler/lib/a/g;->a(Lcom/kwai/sodler/lib/a/g$a;)Lcom/kwai/sodler/lib/a/g;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/kwai/sodler/a/b;->a:Z
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3e

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/kwai/sodler/lib/a/b$a;)V
    .registers 2

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/kwai/sodler/lib/j;->a()Lcom/kwai/sodler/lib/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/j;->f()Lcom/kwai/sodler/lib/a/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kwai/sodler/lib/a/b;->a(Lcom/kwai/sodler/lib/a/b$a;)Lcom/kwai/sodler/lib/a/b;

    :cond_d
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/kwai/sodler/lib/ext/b;)V
    .registers 4

    new-instance v0, Lcom/kwai/sodler/lib/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/kwai/sodler/lib/h;-><init>(Lcom/kwai/sodler/lib/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/kwai/sodler/lib/h;->a(Lcom/kwai/sodler/lib/ext/b;)V

    invoke-static {}, Lcom/kwai/sodler/lib/j;->a()Lcom/kwai/sodler/lib/j;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/kwai/sodler/lib/j;->a(Lcom/kwai/sodler/lib/a/f;I)Lcom/kwai/sodler/lib/j$b;

    return-void
.end method
