.class final Lcom/anythink/basead/g/e$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/g/e$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/g/e$1;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/e$1;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/anythink/basead/g/e$1$1;->a:Lcom/anythink/basead/g/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 60
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/anythink/basead/g/e$1$1;->a:Lcom/anythink/basead/g/e$1;

    iget-object v0, v0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v0, v0, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/anythink/basead/g/e$1$1;->a:Lcom/anythink/basead/g/e$1;

    iget-object v0, v0, Lcom/anythink/basead/g/e$1;->a:Lcom/anythink/basead/g/e;

    iget-object v0, v0, Lcom/anythink/basead/g/e;->a:Lcom/anythink/basead/f/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/f/a;->onDeeplinkCallback(Z)V

    .line 71
    :cond_11
    return-void
.end method

.method public final b()V
    .registers 1

    .line 64
    return-void
.end method
