.class Lcom/bytedance/sdk/openadsdk/g/a/b$4;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/g/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    .line 131
    if-eqz v0, :cond_21

    .line 132
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->b:Lcom/bytedance/sdk/adnet/core/n;

    .line 133
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v1, [B

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->e:[B

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V

    .line 136
    :cond_21
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    .line 119
    if-eqz v0, :cond_28

    .line 120
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    .line 121
    if-eqz v0, :cond_16

    .line 122
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->a(Ljava/lang/String;[B)V

    goto :goto_16

    .line 126
    :cond_28
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/g/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    .line 141
    if-eqz v0, :cond_1f

    .line 142
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->b:Lcom/bytedance/sdk/adnet/core/n;

    .line 143
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 144
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$4;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V

    .line 146
    :cond_1f
    return-void
.end method
