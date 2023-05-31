.class public Lcom/bytedance/sdk/openadsdk/core/d/o$a;
.super Ljava/lang/Object;
.source "TempPkgModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 144
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->c:I

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 117
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    if-eqz v0, :cond_1a

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a:Ljava/lang/String;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 120
    :goto_17
    return v0

    .line 118
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 120
    :cond_1a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_17
.end method
