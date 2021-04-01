.class Lcom/bytedance/sdk/a/b/a/a/a$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/a/a;->a(Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/bytedance/sdk/a/a/e;

.field final synthetic c:Lcom/bytedance/sdk/a/b/a/a/b;

.field final synthetic d:Lcom/bytedance/sdk/a/a/d;

.field final synthetic e:Lcom/bytedance/sdk/a/b/a/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/a/a;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/b/a/a/b;Lcom/bytedance/sdk/a/a/d;)V
    .registers 5

    .prologue
    .line 172
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->e:Lcom/bytedance/sdk/a/b/a/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/e;

    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->c:Lcom/bytedance/sdk/a/b/a/a/b;

    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 179
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2, p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a

    move-result-wide v4

    .line 188
    cmp-long v2, v4, v0

    if-nez v2, :cond_27

    .line 189
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->a:Z

    if-nez v2, :cond_18

    .line 190
    iput-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->a:Z

    .line 191
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/d;->close()V

    :cond_18
    move-wide v4, v0

    .line 198
    :goto_19
    return-wide v4

    .line 180
    :catch_1a
    move-exception v0

    .line 181
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->a:Z

    if-nez v1, :cond_26

    .line 182
    iput-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->a:Z

    .line 183
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->c:Lcom/bytedance/sdk/a/b/a/a/b;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/b/a/a/b;->b()V

    .line 185
    :cond_26
    throw v0

    .line 196
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;JJ)Lcom/bytedance/sdk/a/a/c;

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->u()Lcom/bytedance/sdk/a/a/d;

    goto :goto_19
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->a:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->a:Z

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->c:Lcom/bytedance/sdk/a/b/a/a/b;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/a/a/b;->b()V

    .line 213
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/a$1;->b:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->close()V

    .line 214
    return-void
.end method
