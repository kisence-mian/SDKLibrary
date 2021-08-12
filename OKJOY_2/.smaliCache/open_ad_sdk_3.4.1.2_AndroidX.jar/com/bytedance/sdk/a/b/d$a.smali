.class public final Lcom/bytedance/sdk/a/b/d$a;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/d$a;->c:I

    .line 287
    iput v0, p0, Lcom/bytedance/sdk/a/b/d$a;->d:I

    .line 288
    iput v0, p0, Lcom/bytedance/sdk/a/b/d$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/d$a;
    .registers 2

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d$a;->a:Z

    .line 298
    return-object p0
.end method

.method public a(ILjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/d$a;
    .registers 5

    .line 333
    if-ltz p1, :cond_16

    .line 334
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 335
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    :goto_13
    iput p1, p0, Lcom/bytedance/sdk/a/b/d$a;->d:I

    .line 338
    return-object p0

    .line 333
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b()Lcom/bytedance/sdk/a/b/d$a;
    .registers 2

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d$a;->f:Z

    .line 364
    return-object p0
.end method

.method public c()Lcom/bytedance/sdk/a/b/d;
    .registers 2

    .line 381
    new-instance v0, Lcom/bytedance/sdk/a/b/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/d;-><init>(Lcom/bytedance/sdk/a/b/d$a;)V

    return-object v0
.end method
