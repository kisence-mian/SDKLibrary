.class final Lcom/anythink/basead/g/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/g/c;->a(Lcom/anythink/basead/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/f/c;

.field final synthetic b:Lcom/anythink/basead/g/c;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/c;Lcom/anythink/basead/f/c;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/anythink/basead/g/c$1;->b:Lcom/anythink/basead/g/c;

    iput-object p2, p0, Lcom/anythink/basead/g/c$1;->a:Lcom/anythink/basead/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/g/c$1;->a:Lcom/anythink/basead/f/c;

    if-eqz v0, :cond_7

    .line 60
    invoke-interface {v0}, Lcom/anythink/basead/f/c;->onAdCacheLoaded()V

    .line 62
    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/g/c$1;->a:Lcom/anythink/basead/f/c;

    if-eqz v0, :cond_7

    .line 67
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/c;->onAdLoadFailed(Lcom/anythink/basead/c/f;)V

    .line 69
    :cond_7
    return-void
.end method
