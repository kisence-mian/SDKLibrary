.class final Lcom/anythink/basead/e/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/f;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/e/f;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/f;Ljava/lang/String;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    iput-object p2, p0, Lcom/anythink/basead/e/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdShow()V

    .line 63
    :cond_11
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/basead/e/f;->e:Lcom/anythink/core/common/d/u;

    .line 64
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onVideoShowFailed(Lcom/anythink/basead/c/f;)V

    .line 71
    :cond_11
    iget-object p1, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/e/f;->e:Lcom/anythink/core/common/d/u;

    .line 72
    return-void
.end method

.method public final a(Z)V
    .registers 5

    .line 114
    sget-object v0, Lcom/anythink/basead/e/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDeeplinkCallback.......:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 116
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/e;->onDeeplinkCallback(Z)V

    .line 118
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayStart()V

    .line 79
    :cond_11
    return-void
.end method

.method public final c()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 84
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onVideoAdPlayEnd()V

    .line 86
    :cond_11
    return-void
.end method

.method public final d()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onRewarded()V

    .line 93
    :cond_11
    return-void
.end method

.method public final e()V
    .registers 3

    .line 97
    sget-object v0, Lcom/anythink/basead/e/f;->a:Ljava/lang/String;

    const-string v1, "onClose......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 99
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClosed()V

    .line 101
    :cond_18
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/e/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/b;->b(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final f()V
    .registers 3

    .line 106
    sget-object v0, Lcom/anythink/basead/e/f;->a:Ljava/lang/String;

    const-string v1, "onClick......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 108
    iget-object v0, p0, Lcom/anythink/basead/e/f$1;->b:Lcom/anythink/basead/e/f;

    invoke-static {v0}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/f;)Lcom/anythink/basead/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/e;->onAdClick()V

    .line 110
    :cond_18
    return-void
.end method
