.class final Lcom/anythink/myoffer/e/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/e/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/e/c/a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/e/c/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/e/c/a;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v1, "onShow......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 110
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onAdShow()V

    .line 112
    :cond_18
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->c(Lcom/anythink/myoffer/e/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v1}, Lcom/anythink/myoffer/e/c/a;->b(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/b;->a(Lcom/anythink/myoffer/c/a;)V

    .line 113
    return-void
.end method

.method public final a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 5

    .prologue
    .line 117
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoShowFailed......."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 119
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/myoffer/e/c/b;->onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 121
    :cond_29
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 125
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v1, "onVideoPlayStart......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 127
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onVideoAdPlayStart()V

    .line 129
    :cond_18
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 133
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 135
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onVideoAdPlayEnd()V

    .line 137
    :cond_18
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 141
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v1, "onRewarded......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onRewarded()V

    .line 145
    :cond_18
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 149
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v1, "onClose......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 151
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onAdClosed()V

    .line 153
    :cond_18
    invoke-static {}, Lcom/anythink/myoffer/e/a/c;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v2}, Lcom/anythink/myoffer/e/c/a;->d(Lcom/anythink/myoffer/e/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v2}, Lcom/anythink/myoffer/e/c/a;->e(Lcom/anythink/myoffer/e/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/a/c;->b(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 158
    sget-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v1, "onClick......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 160
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$2;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onAdClick()V

    .line 162
    :cond_18
    return-void
.end method
