.class public final Lcom/bytedance/sdk/a/b/a/c/h;
.super Lcom/bytedance/sdk/a/b/ab;
.source "RealResponseBody.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/bytedance/sdk/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/ab;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/h;->a:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/bytedance/sdk/a/b/a/c/h;->b:J

    .line 35
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/c/h;->c:Lcom/bytedance/sdk/a/a/e;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/u;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public b()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/c/h;->b:J

    return-wide v0
.end method

.method public d()Lcom/bytedance/sdk/a/a/e;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/h;->c:Lcom/bytedance/sdk/a/a/e;

    return-object v0
.end method
