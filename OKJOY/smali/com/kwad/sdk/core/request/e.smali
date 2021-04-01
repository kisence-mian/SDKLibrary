.class public Lcom/kwad/sdk/core/request/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/request/e$c;,
        Lcom/kwad/sdk/core/request/e$b;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Landroid/os/HandlerThread; = null

.field private static c:Landroid/os/Handler; = null

.field private static volatile d:Z = false

.field private static volatile e:J = 0xe10L

.field private static f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/kwad/sdk/core/request/e;->e:J

    return-wide p0
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/request/e;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/kwad/sdk/core/request/e;->d:Z

    if-nez v0, :cond_24

    sput-object p0, Lcom/kwad/sdk/core/request/e;->f:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ksadsdk-config-request"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/request/e;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/kwad/sdk/core/request/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/kwad/sdk/core/request/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/core/request/e;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/core/request/e;->d:Z

    :cond_24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/request/e;->c(J)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/core/request/e;->a:Z

    return p0
.end method

.method static synthetic b(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/request/e;->c(J)V

    return-void
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/kwad/sdk/core/request/e;->a:Z

    return v0
.end method

.method static synthetic c()J
    .registers 2

    sget-wide v0, Lcom/kwad/sdk/core/request/e;->e:J

    return-wide v0
.end method

.method private static c(J)V
    .registers 6

    const v2, 0x1010112

    sget-object v0, Lcom/kwad/sdk/core/request/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/kwad/sdk/core/request/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/core/request/e$b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/request/e$b;-><init>()V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/kwad/sdk/core/request/e;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/e$c;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/core/request/e$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/core/request/e$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/kwad/sdk/core/request/e$a;-><init>(Lcom/kwad/sdk/core/request/e;Lcom/kwad/sdk/core/request/e$c;Lcom/kwad/sdk/protocol/model/AdScene;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/d/a/a;->b()V

    return-void
.end method
