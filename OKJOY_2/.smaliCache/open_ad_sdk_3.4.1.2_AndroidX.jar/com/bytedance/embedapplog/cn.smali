.class final Lcom/bytedance/embedapplog/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/cn$b;,
        Lcom/bytedance/embedapplog/cn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private final b:Landroid/content/Intent;

.field private final c:Lcom/bytedance/embedapplog/cn$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/cn$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/embedapplog/cn$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/bytedance/embedapplog/cn$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bytedance/embedapplog/cn;->d:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/bytedance/embedapplog/cn;->b:Landroid/content/Intent;

    .line 27
    iput-object p3, p0, Lcom/bytedance/embedapplog/cn;->c:Lcom/bytedance/embedapplog/cn$b;

    .line 28
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/cn;->a:Ljava/util/concurrent/CountDownLatch;

    .line 29
    return-void
.end method

.method private a(Lcom/bytedance/embedapplog/cn$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/cn<",
            "TSERVICE;TRESU",
            "LT;",
            ">.a;)V"
        }
    .end annotation

    .line 56
    if-eqz p1, :cond_d

    .line 57
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/embedapplog/cn;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_8

    goto :goto_d

    .line 59
    :catchall_8
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 61
    :cond_d
    :goto_d
    nop

    .line 62
    :goto_e
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 37
    return-object v2

    .line 39
    :cond_c
    nop

    .line 41
    :try_start_d
    new-instance v0, Lcom/bytedance/embedapplog/cn$a;

    iget-object v1, p0, Lcom/bytedance/embedapplog/cn;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/bytedance/embedapplog/cn;->c:Lcom/bytedance/embedapplog/cn$b;

    invoke-direct {v0, p0, v1, v3}, Lcom/bytedance/embedapplog/cn$a;-><init>(Lcom/bytedance/embedapplog/cn;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embedapplog/cn$b;)V

    .line 42
    iget-object v1, p0, Lcom/bytedance/embedapplog/cn;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/embedapplog/cn;->b:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 43
    iget-object v1, p0, Lcom/bytedance/embedapplog/cn;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_32

    .line 44
    nop

    .line 45
    :try_start_24
    iget-object v1, p0, Lcom/bytedance/embedapplog/cn;->c:Lcom/bytedance/embedapplog/cn$b;

    iget-object v3, v0, Lcom/bytedance/embedapplog/cn$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/bytedance/embedapplog/cn$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_30

    .line 49
    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/cn;->a(Lcom/bytedance/embedapplog/cn$a;)V

    .line 45
    return-object v1

    .line 46
    :catchall_30
    move-exception v1

    goto :goto_34

    :catchall_32
    move-exception v1

    move-object v0, v2

    .line 47
    :goto_34
    :try_start_34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3c

    .line 49
    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/cn;->a(Lcom/bytedance/embedapplog/cn$a;)V

    .line 50
    nop

    .line 51
    return-object v2

    .line 49
    :catchall_3c
    move-exception v1

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/cn;->a(Lcom/bytedance/embedapplog/cn$a;)V

    throw v1
.end method
