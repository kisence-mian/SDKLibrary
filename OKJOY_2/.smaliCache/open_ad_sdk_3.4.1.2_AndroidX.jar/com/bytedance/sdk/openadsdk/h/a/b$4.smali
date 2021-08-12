.class Lcom/bytedance/sdk/openadsdk/h/a/b$4;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/h/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/h/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/h/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Lcom/bytedance/sdk/openadsdk/h/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;

    .line 148
    if-eqz v0, :cond_21

    .line 149
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 150
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->e:[B

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/h/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$d;)V

    .line 153
    :cond_21
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/h/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Lcom/bytedance/sdk/openadsdk/h/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;

    .line 135
    if-eqz v0, :cond_2b

    .line 136
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/h/a/b$b;

    .line 137
    if-eqz v1, :cond_2a

    .line 138
    const/4 v2, 0x2

    sput v2, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    .line 139
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$b;->a(Ljava/lang/String;[B)V

    .line 141
    :cond_2a
    goto :goto_16

    .line 143
    :cond_2b
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/h/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Lcom/bytedance/sdk/openadsdk/h/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;

    .line 158
    if-eqz v0, :cond_1f

    .line 159
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 160
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 161
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/h/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$4;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$d;)V

    .line 163
    :cond_1f
    return-void
.end method
