.class final Lcom/mintegral/msdk/reward/b/a$c;
.super Ljava/lang/Object;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    .line 546
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 547
    iput-object p2, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    .line 548
    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;B)V
    .registers 4

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/reward/b/a$c;-><init>(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/b/a$c;)I
    .registers 2

    .prologue
    .line 536
    .line 2552
    iget v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    .line 536
    return v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 536
    .line 1577
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 1578
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    .line 1579
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_27

    .line 1580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1581
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1582
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1583
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    :cond_27
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/reward/b/a$c;)V
    .registers 2

    .prologue
    .line 536
    .line 2556
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    .line 536
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 536
    .line 1592
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 1593
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    .line 1594
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_27

    .line 1595
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1596
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1597
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1598
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    :cond_27
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/reward/b/a$c;)I
    .registers 2

    .prologue
    .line 536
    iget v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 536
    .line 2563
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 2564
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_24

    .line 2565
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2566
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2567
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2568
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    :cond_24
    return-void
.end method
