.class final Lcom/anythink/core/b/c/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/c/o;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/c/e;

.field final synthetic b:Lcom/anythink/core/b/c/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/c/o;Lcom/anythink/core/b/c/e;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/anythink/core/b/c/o$1;->b:Lcom/anythink/core/b/c/o;

    iput-object p2, p0, Lcom/anythink/core/b/c/o$1;->a:Lcom/anythink/core/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/core/b/c/o$1;->a:Lcom/anythink/core/b/c/e;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/e;->destroy()V

    .line 109
    return-void
.end method
