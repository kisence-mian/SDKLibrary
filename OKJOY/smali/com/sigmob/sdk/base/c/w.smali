.class Lcom/sigmob/sdk/base/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/net/InetAddress;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/w;->b:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/net/InetAddress;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sigmob/sdk/base/c/w;->b:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/w;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/w;->a(Ljava/net/InetAddress;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method
