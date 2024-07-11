.class final Lcom/anythink/basead/e/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/d;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/e/d;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/d;Ljava/lang/String;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    iput-object p2, p0, Lcom/anythink/basead/e/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdShow()V

    .line 62
    :cond_11
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/basead/e/d;->e:Lcom/anythink/core/common/d/u;

    .line 63
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 68
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 70
    :cond_11
    iget-object p1, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/e/d;->e:Lcom/anythink/core/common/d/u;

    .line 71
    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 111
    sget-object v0, Lcom/anythink/basead/e/d;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDeeplinkCallback.......:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 113
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onDeeplinkCallback(Z)V

    .line 115
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayStart()V

    .line 78
    :cond_11
    return-void
.end method

.method public final c()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayEnd()V

    .line 85
    :cond_11
    return-void
.end method

.method public final d()V
    .registers 1

    .line 90
    return-void
.end method

.method public final e()V
    .registers 3

    .line 94
    sget-object v0, Lcom/anythink/basead/e/d;->a:Ljava/lang/String;

    const-string v1, "onClose......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 96
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClosed()V

    .line 98
    :cond_18
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/b;->b(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public final f()V
    .registers 3

    .line 103
    sget-object v0, Lcom/anythink/basead/e/d;->a:Ljava/lang/String;

    const-string v1, "onClick......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 105
    iget-object v0, p0, Lcom/anythink/basead/e/d$1;->b:Lcom/anythink/basead/e/d;

    invoke-static {v0}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClick()V

    .line 107
    :cond_18
    return-void
.end method
