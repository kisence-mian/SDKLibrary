.class public Lcom/ssjj/fnsdk/core/http/FNHttp;
.super Ljava/lang/Object;


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final FAIL:I = -0x1

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final SUCC:I = 0x1

.field private static final a:Landroid/os/Handler;

.field private static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ssjj/fnsdk/core/http/FNHttp;->a:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/http/FNHttp;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ssjj/fnsdk/core/SsjjFNException;
        }
    .end annotation

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->e:Ljava/lang/String;

    iget v6, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->f:I

    iget v7, p1, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->g:I

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/http/FNHttpWrapper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/http/FNHttp;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static b(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/http/FNHttp;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create()Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ssjj/fnsdk/core/http/FNHttpProcessor<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;-><init>()V

    return-object v0
.end method
