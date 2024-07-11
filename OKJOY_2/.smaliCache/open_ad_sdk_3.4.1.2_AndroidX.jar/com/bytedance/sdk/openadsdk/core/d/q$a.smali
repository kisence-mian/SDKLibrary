.class public Lcom/bytedance/sdk/openadsdk/core/d/q$a;
.super Ljava/lang/Object;
.source "TempPkgModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/d/q;
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->c:I

    .line 161
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public c()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 133
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    if-eqz v0, :cond_18

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    .line 136
    :cond_18
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
