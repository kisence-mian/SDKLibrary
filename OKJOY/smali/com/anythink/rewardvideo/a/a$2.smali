.class final Lcom/anythink/rewardvideo/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;ZLcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field final synthetic c:Z

.field final synthetic d:Lcom/anythink/rewardvideo/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/a;Landroid/app/Activity;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;Z)V
    .registers 5

    .prologue
    .line 133
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/a$2;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    iput-boolean p4, p0, Lcom/anythink/rewardvideo/a/a$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdLoaded()V

    .line 156
    :cond_9
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    .line 163
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Lcom/anythink/rewardvideo/a/c;

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/anythink/rewardvideo/a/c;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    iget-object v2, v2, Lcom/anythink/rewardvideo/a/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/anythink/rewardvideo/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 1075
    iput-object v0, v1, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 139
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->e(Lcom/anythink/rewardvideo/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/rewardvideo/a/c;->a(Ljava/util/Map;)V

    .line 140
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/a$2;->c:Z

    invoke-virtual {v1, v0}, Lcom/anythink/rewardvideo/a/c;->a(Z)V

    .line 141
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->f(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/anythink/rewardvideo/a/c;->b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->g(Lcom/anythink/rewardvideo/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->h(Lcom/anythink/rewardvideo/a/a;)Lcom/anythink/core/b/f;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 145
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->i(Lcom/anythink/rewardvideo/a/a;)Lcom/anythink/core/b/f;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/a/c;

    .line 2075
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 147
    :cond_49
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$2;->d:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0, v1}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;

    .line 149
    return-void
.end method
