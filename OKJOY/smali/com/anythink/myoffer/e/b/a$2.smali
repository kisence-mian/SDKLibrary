.class final Lcom/anythink/myoffer/e/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/e/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/e/b/a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/e/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/e/b/a;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 105
    sget-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v1, "onShow......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/b/b;->onAdShow()V

    .line 109
    :cond_18
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->c(Lcom/anythink/myoffer/e/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v1}, Lcom/anythink/myoffer/e/b/a;->b(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/b;->a(Lcom/anythink/myoffer/c/a;)V

    .line 110
    return-void
.end method

.method public final a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 5

    .prologue
    .line 114
    sget-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

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

    .line 115
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 116
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/myoffer/e/b/b;->onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 118
    :cond_29
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 122
    sget-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v1, "onVideoPlayStart......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 124
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/b/b;->onVideoAdPlayStart()V

    .line 126
    :cond_18
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 130
    sget-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 132
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/b/b;->onVideoAdPlayEnd()V

    .line 134
    :cond_18
    return-void
.end method

.method public final d()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 142
    sget-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v1, "onClose......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 144
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/b/b;->onAdClosed()V

    .line 146
    :cond_18
    invoke-static {}, Lcom/anythink/myoffer/e/a/c;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v2}, Lcom/anythink/myoffer/e/b/a;->d(Lcom/anythink/myoffer/e/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v2}, Lcom/anythink/myoffer/e/b/a;->e(Lcom/anythink/myoffer/e/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/a/c;->b(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 151
    sget-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v1, "onClick......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 153
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$2;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/b/b;->onAdClick()V

    .line 155
    :cond_18
    return-void
.end method
