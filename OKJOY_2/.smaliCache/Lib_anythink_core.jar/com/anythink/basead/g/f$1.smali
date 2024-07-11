.class final Lcom/anythink/basead/g/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/g/f;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/g/f;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/f;Ljava/lang/String;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    iput-object p2, p0, Lcom/anythink/basead/g/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 59
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    const-string v1, "onShow......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 61
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdShow()V

    .line 63
    :cond_18
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 5

    .line 67
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

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

    .line 68
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 69
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 71
    :cond_29
    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 116
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDeeplinkCallback.......:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 118
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onDeeplinkCallback(Z)V

    .line 120
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 3

    .line 75
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayStart......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 77
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayStart()V

    .line 79
    :cond_18
    return-void
.end method

.method public final c()V
    .registers 3

    .line 83
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 85
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayEnd()V

    .line 87
    :cond_18
    return-void
.end method

.method public final d()V
    .registers 3

    .line 91
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    const-string v1, "onRewarded......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 93
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onRewarded()V

    .line 95
    :cond_18
    return-void
.end method

.method public final e()V
    .registers 3

    .line 99
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    const-string v1, "onClose......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 101
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClosed()V

    .line 103
    :cond_18
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/b;->b(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final f()V
    .registers 3

    .line 108
    sget-object v0, Lcom/anythink/basead/g/f;->a:Ljava/lang/String;

    const-string v1, "onClick......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 110
    iget-object v0, p0, Lcom/anythink/basead/g/f$1;->b:Lcom/anythink/basead/g/f;

    invoke-static {v0}, Lcom/anythink/basead/g/f;->a(Lcom/anythink/basead/g/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClick()V

    .line 112
    :cond_18
    return-void
.end method
