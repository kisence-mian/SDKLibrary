.class Lcom/bytedance/sdk/openadsdk/k/e;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/e;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/e;->b:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    .line 19
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/k/e;->d:I

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/k/e;->d:I

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/k/e;->d:I

    return v0
.end method
