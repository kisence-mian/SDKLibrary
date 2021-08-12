.class public abstract Lcom/bytedance/sdk/a/a/g;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# instance fields
.field private final a:Lcom/bytedance/sdk/a/a/r;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/a/r;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_8

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/g;->a:Lcom/bytedance/sdk/a/a/r;

    .line 29
    return-void

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/g;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/g;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/r;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 41
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/g;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->close()V

    .line 56
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/g;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->flush()V

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/g;->a:Lcom/bytedance/sdk/a/a/r;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
