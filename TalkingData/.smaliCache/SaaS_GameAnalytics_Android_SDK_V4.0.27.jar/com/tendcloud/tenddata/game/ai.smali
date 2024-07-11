.class final Lcom/tendcloud/tenddata/game/ai;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 24
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/tendcloud/tenddata/game/ab;->n:I

    .line 25
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result p0

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1e

    .line 27
    const-string p0, "Ignore page changing during screen switch"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 29
    const/4 p0, 0x1

    sput-boolean p0, Lcom/tendcloud/tenddata/game/zz;->c:Z

    .line 30
    return-void

    .line 33
    :cond_1e
    new-instance p0, Lcom/tendcloud/tenddata/game/aj;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/aj;-><init>(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    .line 51
    goto :goto_2b

    .line 48
    :catchall_27
    move-exception p0

    .line 50
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 52
    :goto_2b
    return-void
.end method

.method static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .registers 6

    .line 58
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lcom/tendcloud/tenddata/game/ab;->n:I

    .line 59
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 61
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 65
    new-instance v0, Lcom/tendcloud/tenddata/game/ak;

    invoke-direct {v0, p1, p0}, Lcom/tendcloud/tenddata/game/ak;-><init>(Lcom/tendcloud/tenddata/game/a;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    .line 83
    goto :goto_29

    .line 80
    :catchall_25
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 85
    :goto_29
    return-void
.end method
