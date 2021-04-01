.class Lcom/bytedance/a/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private final b:Lcom/bytedance/applog/IOaidObserver;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/applog/IOaidObserver;)V
    .registers 3

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/bytedance/a/g$c;->a:Ljava/util/concurrent/CountDownLatch;

    .line 90
    iput-object p2, p0, Lcom/bytedance/a/g$c;->b:Lcom/bytedance/applog/IOaidObserver;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/bytedance/a/g$c;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bytedance/a/g$c;->a:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/a/g$a;)V
    .registers 6

    .prologue
    .line 95
    if-eqz p1, :cond_1a

    .line 96
    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/a/g$a;->a()Ljava/util/Map;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1a

    .line 98
    iget-object v1, p0, Lcom/bytedance/a/g$c;->b:Lcom/bytedance/applog/IOaidObserver;

    new-instance v2, Lcom/bytedance/applog/IOaidObserver$Oaid;

    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/applog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_20
    .catchall {:try_start_2 .. :try_end_1a} :catchall_2a

    .line 104
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/a/g$c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 106
    :goto_1f
    return-void

    .line 101
    :catch_20
    move-exception v0

    .line 102
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    .line 104
    iget-object v0, p0, Lcom/bytedance/a/g$c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1f

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/a/g$c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
