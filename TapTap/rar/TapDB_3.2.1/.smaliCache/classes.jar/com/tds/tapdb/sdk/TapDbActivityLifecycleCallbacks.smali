.class public Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;
.super Lcom/tds/tapdb/b/m;
.source ""


# static fields
.field private static final f:I = 0x64

.field private static final g:I = 0x96

.field private static final h:I = 0xc8

.field private static final i:I = 0x12c

.field private static final j:I = 0xbb8


# instance fields
.field private final a:Lcom/tds/tapdb/sdk/a;

.field private b:I

.field private c:Landroid/os/Handler;

.field private final d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/tds/tapdb/b/m;-><init>()V

    const-string v0, "time"

    iput-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/tds/tapdb/sdk/a;->a(Landroid/content/Context;)Lcom/tds/tapdb/sdk/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-direct {p0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->e:J

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c:Landroid/os/Handler;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .registers 6

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "time"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 11

    iget v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b:I

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {v0}, Lcom/tds/tapdb/sdk/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {v2}, Lcom/tds/tapdb/sdk/a;->a()J

    move-result-wide v2

    sub-long v4, v2, v0

    iget-object v6, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {v6}, Lcom/tds/tapdb/sdk/a;->c()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_45

    cmp-long v0, v2, v7

    if-lez v0, :cond_45

    cmp-long v0, v4, v7

    if-lez v0, :cond_45

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    invoke-static {v4, v5, v6}, Lcom/tds/tapdb/sdk/TapDB;->a(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {v0}, Lcom/tds/tapdb/sdk/a;->e()V

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {v0}, Lcom/tds/tapdb/sdk/a;->f()V

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {v0}, Lcom/tds/tapdb/sdk/a;->g()V

    :cond_45
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_58

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->e:J

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {p1, v0, v1}, Lcom/tds/tapdb/sdk/a;->b(J)Z

    :cond_58
    return-void
.end method

.method static synthetic a(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Lcom/tds/tapdb/sdk/a;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    return-object p0
.end method

.method private b()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TAP_DB_DATA_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;-><init>(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c:Landroid/os/Handler;

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->e:J

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a:Lcom/tds/tapdb/sdk/a;

    invoke-virtual {p1, v0, v1}, Lcom/tds/tapdb/sdk/a;->b(J)Z

    return-void
.end method

.method static synthetic b(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/os/Message;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_30

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->e:J

    sub-long v2, v0, v2

    invoke-direct {p0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a()Ljava/lang/String;

    move-result-object p1

    iget-wide v4, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_30

    cmp-long v0, v0, v6

    if-lez v0, :cond_30

    cmp-long v0, v2, v6

    if-lez v0, :cond_30

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Lcom/tds/tapdb/sdk/TapDB;->a(JLjava/lang/String;)V

    :cond_30
    return-void
.end method

.method static synthetic c(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a(I)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b:I

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c:Landroid/os/Handler;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    const/16 p1, 0x96

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a(I)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    const/16 p1, 0xc8

    invoke-direct {p0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a(I)V

    return-void
.end method
