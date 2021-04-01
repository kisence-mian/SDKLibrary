.class final Lcom/anythink/core/b/c/o$2;
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
.field final synthetic a:Lcom/anythink/core/b/a/b;

.field final synthetic b:Lcom/anythink/core/b/c/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/c/o;Lcom/anythink/core/b/a/b;)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lcom/anythink/core/b/c/o$2;->b:Lcom/anythink/core/b/c/o;

    iput-object p2, p0, Lcom/anythink/core/b/c/o$2;->a:Lcom/anythink/core/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/anythink/core/b/c/o$2;->a:Lcom/anythink/core/b/a/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/a/b;->clean()V

    .line 119
    return-void
.end method
