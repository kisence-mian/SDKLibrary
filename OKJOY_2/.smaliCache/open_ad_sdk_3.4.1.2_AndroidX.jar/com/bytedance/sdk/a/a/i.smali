.class public Lcom/bytedance/sdk/a/a/i;
.super Lcom/bytedance/sdk/a/a/t;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Lcom/bytedance/sdk/a/a/t;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/a/t;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/t;-><init>()V

    .line 28
    if-eqz p1, :cond_8

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    .line 30
    return-void

    .line 28
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/i;
    .registers 3

    .line 40
    if-eqz p1, :cond_5

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    .line 42
    return-object p0

    .line 40
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    return-object v0
.end method

.method public a(J)Lcom/bytedance/sdk/a/a/t;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/a/t;->a(J)Lcom/bytedance/sdk/a/a/t;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    move-result-object p1

    return-object p1
.end method

.method public b_()J
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->c()Z

    move-result v0

    return v0
.end method

.method public c_()J
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->c_()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->e()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->f()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/i;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->g()V

    .line 83
    return-void
.end method
