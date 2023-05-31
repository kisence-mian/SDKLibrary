.class public Lmobi/oneway/export/Ad/OnewaySdk;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmobi/oneway/export/Ad/OnewaySdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lmobi/oneway/export/Ad/OnewaySdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "config method has been called"

    invoke-static {v0}, Lmobi/oneway/export/h/l;->d(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    if-nez p0, :cond_18

    const-string v0, "Context must not be null"

    invoke-static {v0}, Lmobi/oneway/export/h/l;->d(Ljava/lang/String;)V

    goto :goto_f

    :cond_18
    invoke-static {p1}, Lmobi/oneway/export/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/d/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->b()V

    new-instance v0, Lmobi/oneway/export/e/a;

    invoke-direct {v0, p1}, Lmobi/oneway/export/e/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmobi/oneway/export/e/a;->start()V

    goto :goto_f
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.4.2"

    return-object v0
.end method

.method public static isConfigured()Z
    .registers 1

    sget-object v0, Lmobi/oneway/export/Ad/OnewaySdk;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setDebugMode(Z)V
    .registers 3
    .param p0, "debugMode"    # Z

    .prologue
    invoke-static {p0}, Lmobi/oneway/export/h/l;->a(Z)V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/Ad/OnewaySdk$1;

    invoke-direct {v1, p0}, Lmobi/oneway/export/Ad/OnewaySdk$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
