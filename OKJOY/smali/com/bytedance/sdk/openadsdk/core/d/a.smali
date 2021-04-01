.class public Lcom/bytedance/sdk/openadsdk/core/d/a;
.super Ljava/lang/Object;
.source "AdInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 33
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:I

    .line 34
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->f:J

    .line 70
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a;->e:Ljava/lang/String;

    return-object v0
.end method
