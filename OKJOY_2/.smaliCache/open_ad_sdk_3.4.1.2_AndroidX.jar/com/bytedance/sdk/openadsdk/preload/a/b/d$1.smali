.class Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/preload/a/f;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

.field private f:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/d;ZZLcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)V
    .registers 6

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->b:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->c:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method

.method private b()Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->f:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 145
    if-eqz v0, :cond_5

    goto :goto_11

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->c:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/w;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->f:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 145
    :goto_11
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->b:Z

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 138
    return-void

    .line 140
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->b()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->a:Z

    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->n()V

    .line 130
    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d$1;->b()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
