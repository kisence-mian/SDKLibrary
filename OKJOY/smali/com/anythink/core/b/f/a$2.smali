.class final Lcom/anythink/core/b/f/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f/a;->a(Lcom/anythink/core/b/c/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/c/c;

.field final synthetic b:Lcom/anythink/core/b/f/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f/a;Lcom/anythink/core/b/c/c;)V
    .registers 3

    .prologue
    .line 87
    iput-object p1, p0, Lcom/anythink/core/b/f/a$2;->b:Lcom/anythink/core/b/f/a;

    iput-object p2, p0, Lcom/anythink/core/b/f/a$2;->a:Lcom/anythink/core/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 90
    new-instance v0, Lcom/anythink/core/b/e/h;

    iget-object v1, p0, Lcom/anythink/core/b/f/a$2;->b:Lcom/anythink/core/b/f/a;

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Lcom/anythink/core/b/f/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/f/a$2;->a:Lcom/anythink/core/b/c/c;

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/b/e/h;-><init>(Landroid/content/Context;Lcom/anythink/core/b/c/c;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/e/h;->a(ILcom/anythink/core/b/e/e;)V

    .line 91
    return-void
.end method
