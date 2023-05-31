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

    .prologue
    const/4 v0, -0x1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
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

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d$a;->a:Z

    .line 298
    return-object p0
.end method

.method public a(ILjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/d$a;
    .registers 7

    .prologue
    .line 333
    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1b
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 335
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const v0, 0x7fffffff

    :goto_2a
    iput v0, p0, Lcom/bytedance/sdk/a/b/d$a;->d:I

    .line 338
    return-object p0

    .line 335
    :cond_2d
    long-to-int v0, v0

    goto :goto_2a
.end method

.method public b()Lcom/bytedance/sdk/a/b/d$a;
    .registers 2

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/d$a;->f:Z

    .line 364
    return-object p0
.end method

.method public c()Lcom/bytedance/sdk/a/b/d;
    .registers 2

    .prologue
    .line 381
    new-instance v0, Lcom/bytedance/sdk/a/b/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/d;-><init>(Lcom/bytedance/sdk/a/b/d$a;)V

    return-object v0
.end method
