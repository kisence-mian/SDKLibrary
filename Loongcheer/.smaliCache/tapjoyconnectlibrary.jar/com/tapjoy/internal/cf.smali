.class public final Lcom/tapjoy/internal/cf;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tapjoy/internal/db;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/db;

    invoke-direct {v0}, Lcom/tapjoy/internal/db;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/cf;->a:Lcom/tapjoy/internal/db;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 10000
    const-string v0, "1.3.16-tapjoy"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/tapjoy/internal/cf;->a:Lcom/tapjoy/internal/db;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1000
    nop

    .line 2000
    const-string v1, "Application Context cannot be null"

    invoke-static {p0, v1}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    nop

    .line 3000
    iget-boolean v1, v0, Lcom/tapjoy/internal/db;->a:Z

    .line 1000
    if-nez v1, :cond_48

    .line 4000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/db;->a:Z

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 6000
    new-instance v1, Lcom/tapjoy/internal/ch;

    invoke-direct {v1}, Lcom/tapjoy/internal/ch;-><init>()V

    .line 5000
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 7000
    new-instance v3, Lcom/tapjoy/internal/ck;

    invoke-direct {v3, v2, p0, v1, v0}, Lcom/tapjoy/internal/ck;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/tapjoy/internal/ch;Lcom/tapjoy/internal/cj;)V

    .line 5000
    iput-object v3, v0, Lcom/tapjoy/internal/dh;->b:Lcom/tapjoy/internal/ck;

    .line 1000
    invoke-static {}, Lcom/tapjoy/internal/dd;->a()Lcom/tapjoy/internal/dd;

    move-result-object v0

    .line 8000
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_37

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1000
    :cond_37
    invoke-static {p0}, Lcom/tapjoy/internal/dn;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tapjoy/internal/df;->a()Lcom/tapjoy/internal/df;

    move-result-object v0

    .line 9000
    if-eqz p0, :cond_45

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_46

    :cond_45
    const/4 p0, 0x0

    :goto_46
    iput-object p0, v0, Lcom/tapjoy/internal/df;->a:Landroid/content/Context;

    :cond_48
    return-void
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/cf;->a:Lcom/tapjoy/internal/db;

    .line 11000
    iget-boolean v0, v0, Lcom/tapjoy/internal/db;->a:Z

    return v0
.end method
