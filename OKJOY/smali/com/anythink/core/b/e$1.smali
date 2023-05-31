.class final Lcom/anythink/core/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/e;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/b/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/e;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/anythink/core/b/e$1;->b:Lcom/anythink/core/b/e;

    iput-object p2, p0, Lcom/anythink/core/b/e$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 66
    iget-object v1, p0, Lcom/anythink/core/b/e$1;->b:Lcom/anythink/core/b/e;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    iput-object v0, v1, Lcom/anythink/core/b/e;->a:Lcom/anythink/core/c/c$b;

    .line 67
    iget-object v0, p0, Lcom/anythink/core/b/e$1;->b:Lcom/anythink/core/b/e;

    iget-object v1, p0, Lcom/anythink/core/b/e$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Landroid/content/Context;)V

    .line 69
    :cond_1a
    return-void
.end method
