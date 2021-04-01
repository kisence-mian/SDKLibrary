.class Lcom/tencent/smtt/sdk/bd;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/tencent/smtt/sdk/bd;


# instance fields
.field a:Lcom/tencent/smtt/sdk/bg;

.field b:Landroid/content/Context;

.field c:Lcom/tencent/tbs/video/interfaces/a;

.field d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/sdk/bd;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->b:Landroid/content/Context;

    new-instance v0, Lcom/tencent/smtt/sdk/bg;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/bg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/bd;
    .registers 3

    const-class v1, Lcom/tencent/smtt/sdk/bd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/sdk/bd;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/sdk/bd;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/bd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/sdk/bd;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/sdk/bd;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->c:Lcom/tencent/tbs/video/interfaces/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->c:Lcom/tencent/tbs/video/interfaces/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tbs/video/interfaces/a;->a(IILandroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method a(Landroid/app/Activity;I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/bg;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bg;->a()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tbs/video/interfaces/a;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p2, :cond_8

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "videoUrl"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz p3, :cond_43

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bg;->a()V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bg;->b()Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    iput-object p3, p0, Lcom/tencent/smtt/sdk/bd;->c:Lcom/tencent/tbs/video/interfaces/a;

    new-instance v1, Lcom/tencent/smtt/sdk/be;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/be;-><init>(Lcom/tencent/smtt/sdk/bd;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bd;->d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bd;->c:Lcom/tencent/tbs/video/interfaces/a;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/bd;->d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;

    invoke-interface {v1, v2}, Lcom/tencent/tbs/video/interfaces/a;->a(Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;)V

    const-string v1, "callMode"

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3a
    iget-object v1, p0, Lcom/tencent/smtt/sdk/bd;->a:Lcom/tencent/smtt/sdk/bg;

    if-nez p3, :cond_3f

    const/4 p0, 0x0

    :cond_3f
    invoke-virtual {v1, p2, p0}, Lcom/tencent/smtt/sdk/bg;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_23

    :cond_43
    const-string v1, "callMode"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3a
.end method
