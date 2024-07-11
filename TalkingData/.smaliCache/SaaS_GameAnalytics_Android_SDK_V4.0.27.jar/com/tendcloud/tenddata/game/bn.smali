.class public final Lcom/tendcloud/tenddata/game/bn;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I = 0x1e

.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tendcloud/tenddata/game/bn;->b:I

    .line 17
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/tendcloud/tenddata/game/bn;->c:I

    .line 18
    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    sput v5, Lcom/tendcloud/tenddata/game/bn;->d:I

    .line 21
    new-instance v10, Lcom/tendcloud/tenddata/game/bo;

    invoke-direct {v10}, Lcom/tendcloud/tenddata/game/bo;-><init>()V

    sput-object v10, Lcom/tendcloud/tenddata/game/bn;->f:Ljava/util/concurrent/ThreadFactory;

    .line 30
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v9, Lcom/tendcloud/tenddata/game/bn;->g:Ljava/util/concurrent/BlockingQueue;

    .line 39
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 43
    sput-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
