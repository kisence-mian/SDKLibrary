.class public abstract Lcom/bytedance/sdk/a/a/h;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# instance fields
.field private final a:Lcom/bytedance/sdk/a/a/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/a/s;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_d
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/bytedance/sdk/a/a/s;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->close()V

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
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

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

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
