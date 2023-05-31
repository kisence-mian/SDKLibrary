.class public Lcom/bytedance/sdk/openadsdk/i/b;
.super Ljava/util/concurrent/FutureTask;
.source "TTFutureTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bytedance/sdk/openadsdk/i/b",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;II)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 22
    const/4 v0, -0x1

    if-eq p3, v0, :cond_b

    :goto_6
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->a:I

    .line 23
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/i/b;->b:I

    .line 24
    return-void

    .line 22
    :cond_b
    const/4 p3, 0x5

    goto :goto_6
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 16
    const/4 v0, -0x1

    if-eq p2, v0, :cond_b

    :goto_6
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/i/b;->a:I

    .line 17
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/i/b;->b:I

    .line 18
    return-void

    .line 16
    :cond_b
    const/4 p2, 0x5

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/b;->a:I

    return v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/b;)I
    .registers 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/b;->a()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 42
    const/4 v0, 0x1

    .line 47
    :goto_b
    return v0

    .line 44
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/b;->a()I

    move-result v1

    if-le v0, v1, :cond_18

    .line 45
    const/4 v0, -0x1

    goto :goto_b

    .line 47
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 9
    check-cast p1, Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/b;->a(Lcom/bytedance/sdk/openadsdk/i/b;)I

    move-result v0

    return v0
.end method
