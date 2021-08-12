.class final Lcom/anythink/basead/e/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/b;->b(Lcom/anythink/basead/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/f/c;

.field final synthetic b:Lcom/anythink/basead/e/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/b;Lcom/anythink/basead/f/c;)V
    .registers 3

    .line 118
    iput-object p1, p0, Lcom/anythink/basead/e/b$1;->b:Lcom/anythink/basead/e/b;

    iput-object p2, p0, Lcom/anythink/basead/e/b$1;->a:Lcom/anythink/basead/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/anythink/basead/e/b$1;->a:Lcom/anythink/basead/f/c;

    if-eqz v0, :cond_7

    .line 122
    invoke-interface {v0}, Lcom/anythink/basead/f/c;->onAdDataLoaded()V

    .line 124
    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/anythink/basead/e/b$1;->a:Lcom/anythink/basead/f/c;

    if-eqz v0, :cond_7

    .line 137
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 139
    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/core/common/d/f;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/anythink/basead/e/b$1;->b:Lcom/anythink/basead/e/b;

    iput-object p1, v0, Lcom/anythink/basead/e/b;->e:Lcom/anythink/core/common/d/u;

    .line 129
    iget-object p1, p0, Lcom/anythink/basead/e/b$1;->a:Lcom/anythink/basead/f/c;

    if-eqz p1, :cond_b

    .line 130
    invoke-interface {p1}, Lcom/anythink/basead/f/c;->onAdCacheLoaded()V

    .line 132
    :cond_b
    return-void
.end method
