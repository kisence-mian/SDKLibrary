.class public abstract Lcom/bytedance/sdk/openadsdk/j/g;
.super Ljava/lang/Object;
.source "TTRunnable.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/openadsdk/j/g;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:I

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:I

    .line 14
    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x5

    :goto_a
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:I

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/g;->b:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/j/g;)I
    .registers 4

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/g;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/g;->c()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 42
    const/4 p1, 0x1

    return p1

    .line 44
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/g;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/j/g;->c()I

    move-result p1

    if-le v0, p1, :cond_18

    .line 45
    const/4 p1, -0x1

    return p1

    .line 47
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/g;->a:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 8
    check-cast p1, Lcom/bytedance/sdk/openadsdk/j/g;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/j/g;->a(Lcom/bytedance/sdk/openadsdk/j/g;)I

    move-result p1

    return p1
.end method
