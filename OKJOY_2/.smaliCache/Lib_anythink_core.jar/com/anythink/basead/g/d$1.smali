.class final Lcom/anythink/basead/g/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/g/d;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/g/d;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/d;Ljava/lang/String;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    iput-object p2, p0, Lcom/anythink/basead/g/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 57
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    const-string v1, "onShow......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdShow()V

    .line 61
    :cond_18
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 5

    .line 65
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoShowFailed......."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 69
    :cond_29
    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 110
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDeeplinkCallback.......:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onDeeplinkCallback(Z)V

    .line 114
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 3

    .line 73
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayStart......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 75
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayStart()V

    .line 77
    :cond_18
    return-void
.end method

.method public final c()V
    .registers 3

    .line 81
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayEnd()V

    .line 85
    :cond_18
    return-void
.end method

.method public final d()V
    .registers 1

    .line 89
    return-void
.end method

.method public final e()V
    .registers 3

    .line 93
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    const-string v1, "onClose......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 95
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClosed()V

    .line 97
    :cond_18
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/b;->b(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final f()V
    .registers 3

    .line 102
    sget-object v0, Lcom/anythink/basead/g/d;->a:Ljava/lang/String;

    const-string v1, "onClick......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 104
    iget-object v0, p0, Lcom/anythink/basead/g/d$1;->b:Lcom/anythink/basead/g/d;

    invoke-static {v0}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/g/d;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClick()V

    .line 106
    :cond_18
    return-void
.end method
