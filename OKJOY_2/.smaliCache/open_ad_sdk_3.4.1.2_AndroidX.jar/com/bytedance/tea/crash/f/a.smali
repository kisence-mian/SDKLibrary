.class public abstract Lcom/bytedance/tea/crash/f/a;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:J

.field private final c:J


# direct methods
.method constructor <init>(Landroid/os/Handler;JJ)V
    .registers 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/tea/crash/f/a;->a:Landroid/os/Handler;

    .line 18
    iput-wide p2, p0, Lcom/bytedance/tea/crash/f/a;->b:J

    .line 19
    iput-wide p4, p0, Lcom/bytedance/tea/crash/f/a;->c:J

    .line 20
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/f/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 27
    iget-object v0, p0, Lcom/bytedance/tea/crash/f/a;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/f/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 29
    :cond_14
    iget-object v0, p0, Lcom/bytedance/tea/crash/f/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    :goto_19
    return-void
.end method

.method a(J)V
    .registers 5

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_c

    .line 40
    iget-object v0, p0, Lcom/bytedance/tea/crash/f/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 42
    :cond_c
    iget-object p1, p0, Lcom/bytedance/tea/crash/f/a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :goto_11
    return-void
.end method

.method b()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/bytedance/tea/crash/f/a;->b:J

    return-wide v0
.end method

.method c()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/bytedance/tea/crash/f/a;->c:J

    return-wide v0
.end method
