.class Lcom/bytedance/embedapplog/cn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSERVICE;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/bytedance/embedapplog/cn;

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private final d:Lcom/bytedance/embedapplog/cn$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/cn$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/cn;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embedapplog/cn$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/bytedance/embedapplog/cn$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/bytedance/embedapplog/cn$a;->b:Lcom/bytedance/embedapplog/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/bytedance/embedapplog/cn$a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 72
    iput-object p3, p0, Lcom/bytedance/embedapplog/cn$a;->d:Lcom/bytedance/embedapplog/cn$b;

    .line 73
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 77
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceBlockBinder#onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_18
    iget-object p1, p0, Lcom/bytedance/embedapplog/cn$a;->d:Lcom/bytedance/embedapplog/cn$b;

    invoke-interface {p1, p2}, Lcom/bytedance/embedapplog/cn$b;->b(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/cn$a;->a:Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2b

    .line 85
    :try_start_20
    iget-object p1, p0, Lcom/bytedance/embedapplog/cn$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    .line 88
    :goto_25
    goto :goto_3c

    .line 86
    :catch_26
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    goto :goto_3c

    .line 80
    :catchall_2b
    move-exception p1

    .line 81
    :try_start_2c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    sget-object p2, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v0, "ServiceBlockBinder#onServiceConnected"

    invoke-static {p2, v0, p1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3d

    .line 85
    :try_start_36
    iget-object p1, p0, Lcom/bytedance/embedapplog/cn$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_26

    goto :goto_25

    .line 90
    :goto_3c
    return-void

    .line 84
    :catchall_3d
    move-exception p1

    .line 85
    :try_start_3e
    iget-object p2, p0, Lcom/bytedance/embedapplog/cn$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_44

    .line 88
    goto :goto_48

    .line 86
    :catch_44
    move-exception p2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_48
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 94
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceBlockBinder#onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_18
    iget-object p1, p0, Lcom/bytedance/embedapplog/cn$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 99
    goto :goto_22

    .line 97
    :catch_1e
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :goto_22
    return-void
.end method
