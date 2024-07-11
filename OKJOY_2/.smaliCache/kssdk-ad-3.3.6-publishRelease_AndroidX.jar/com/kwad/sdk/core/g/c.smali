.class public Lcom/kwad/sdk/core/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/g/c$a;,
        Lcom/kwad/sdk/core/g/c$b;
    }
.end annotation


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static c:Landroid/content/Context;

.field private static d:Lcom/kwad/sdk/core/g/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/core/g/c;->a:Z

    sput-boolean v0, Lcom/kwad/sdk/core/g/c;->b:Z

    return-void
.end method

.method public static a()V
    .registers 2

    const-string v0, "ConfigRequestManager"

    const-string v1, "load()"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/g/c$1;

    invoke-direct {v0}, Lcom/kwad/sdk/core/g/c$1;-><init>()V

    new-instance v1, Lcom/kwad/sdk/core/g/c$2;

    invoke-direct {v1}, Lcom/kwad/sdk/core/g/c$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/h;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/kwad/sdk/core/g/c$a;)V
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/g/c;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/kwad/sdk/core/g/c;->b:Z

    if-nez v1, :cond_c

    sput-object p0, Lcom/kwad/sdk/core/g/c;->c:Landroid/content/Context;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/kwad/sdk/core/g/c;->b:Z

    :cond_c
    sput-object p1, Lcom/kwad/sdk/core/g/c;->d:Lcom/kwad/sdk/core/g/c$a;

    new-instance p0, Lcom/kwad/sdk/core/g/c$b;

    invoke-direct {p0}, Lcom/kwad/sdk/core/g/c$b;-><init>()V

    invoke-static {p0}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/core/g/c;->a:Z

    return p0
.end method

.method static synthetic b()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/g/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Lcom/kwad/sdk/core/g/c$a;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/g/c;->d:Lcom/kwad/sdk/core/g/c$a;

    return-object v0
.end method

.method static synthetic d()Z
    .registers 1

    sget-boolean v0, Lcom/kwad/sdk/core/g/c;->a:Z

    return v0
.end method
