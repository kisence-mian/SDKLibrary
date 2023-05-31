.class final Lcom/mintegral/msdk/f/f$c;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/f/f;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/f/f;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mintegral/msdk/f/f$c;->a:Lcom/mintegral/msdk/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/mintegral/msdk/f/f$c;->b:Ljava/util/concurrent/CountDownLatch;

    .line 397
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 402
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$c;->a:Lcom/mintegral/msdk/f/f;

    invoke-static {v0}, Lcom/mintegral/msdk/f/f;->b(Lcom/mintegral/msdk/f/f;)V

    .line 403
    return-void
.end method
