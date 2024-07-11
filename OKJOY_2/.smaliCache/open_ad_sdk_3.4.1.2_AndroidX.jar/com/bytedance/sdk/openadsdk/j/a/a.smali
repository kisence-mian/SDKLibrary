.class public Lcom/bytedance/sdk/openadsdk/j/a/a;
.super Ljava/lang/Object;
.source "OriginLogModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ)V
    .registers 10

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:J

    .line 39
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:J

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->a:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->b:I

    .line 44
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->c:I

    .line 45
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:J

    .line 46
    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:J

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->c:I

    return v0
.end method

.method public d()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->d:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/a;->e:J

    return-wide v0
.end method
