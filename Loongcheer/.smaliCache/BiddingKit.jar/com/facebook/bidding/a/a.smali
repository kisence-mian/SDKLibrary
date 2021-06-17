.class public Lcom/facebook/bidding/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/facebook/bidding/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    sget-object v0, Lcom/facebook/bidding/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
