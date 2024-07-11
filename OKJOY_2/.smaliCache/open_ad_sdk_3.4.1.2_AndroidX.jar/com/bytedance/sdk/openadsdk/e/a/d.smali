.class public abstract Lcom/bytedance/sdk/openadsdk/e/a/d;
.super Lcom/bytedance/sdk/openadsdk/e/a/b;
.source "BaseStatefulMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/e/a/d$a;,
        Lcom/bytedance/sdk/openadsdk/e/a/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/e/a/b<",
        "TP;TR;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/bytedance/sdk/openadsdk/e/a/d$a;

.field private c:Lcom/bytedance/sdk/openadsdk/e/a/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/b;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->a:Z

    return-void
.end method

.method private e()Z
    .registers 4

    .line 97
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->a:Z

    if-nez v0, :cond_33

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Jsb async call already finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hashcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/RuntimeException;)V

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_33
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .registers 2

    .line 10
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->b:Lcom/bytedance/sdk/openadsdk/e/a/d$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/d$a;->a(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;->d()V

    .line 42
    :cond_e
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/openadsdk/e/a/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;Lcom/bytedance/sdk/openadsdk/e/a/d$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/openadsdk/e/a/f;",
            "Lcom/bytedance/sdk/openadsdk/e/a/d$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->c:Lcom/bytedance/sdk/openadsdk/e/a/f;

    .line 87
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->b:Lcom/bytedance/sdk/openadsdk/e/a/d$a;

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/a/d;->a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)V

    .line 89
    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->b:Lcom/bytedance/sdk/openadsdk/e/a/d$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/d$a;->a(Ljava/lang/Throwable;)V

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;->d()V

    .line 59
    :cond_e
    return-void
.end method

.method protected final c()V
    .registers 2

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/e/a/d;->a(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method protected d()V
    .registers 2

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->a:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/d;->c:Lcom/bytedance/sdk/openadsdk/e/a/f;

    .line 83
    return-void
.end method
