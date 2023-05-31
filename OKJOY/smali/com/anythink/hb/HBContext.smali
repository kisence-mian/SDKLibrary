.class public Lcom/anythink/hb/HBContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/hb/HBContext$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/hb/HBContext;->a:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/anythink/hb/HBContext;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anythink/hb/HBContext;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/anythink/hb/HBContext$a;->a:Lcom/anythink/hb/HBContext;

    return-object v0
.end method


# virtual methods
.method public removeMainThreadCackbacksAndMessages()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/hb/HBContext;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public removeMainThreadRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/hb/HBContext;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/hb/HBContext;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
.end method

.method public runOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/hb/HBContext;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
.end method
