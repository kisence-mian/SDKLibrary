.class public Lcom/bytedance/sdk/openadsdk/j/a$a;
.super Ljava/lang/Object;
.source "ADThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/util/concurrent/TimeUnit;

.field private e:I

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ThreadFactory;

.field private h:Ljava/util/concurrent/RejectedExecutionHandler;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string v0, "io"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->a:Ljava/lang/String;

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->b:I

    .line 199
    const-wide/16 v1, 0x1e

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->c:J

    .line 200
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 201
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->e:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    .line 203
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 2

    .line 215
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->b:I

    .line 216
    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 3

    .line 220
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->c:J

    .line 221
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->a:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/j/a$a;"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    .line 236
    return-object p0
.end method

.method public a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 246
    return-object p0
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 226
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/j/a;
    .registers 12

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_f

    .line 257
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/h;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->i:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/j/h;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    .line 259
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_19

    .line 260
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 262
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_24

    .line 263
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    .line 265
    :cond_24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->b:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->e:I

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->c:J

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/j/a;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/j/a$a;
    .registers 2

    .line 230
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$a;->e:I

    .line 231
    return-object p0
.end method
