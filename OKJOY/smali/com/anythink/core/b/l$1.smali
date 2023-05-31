.class final Lcom/anythink/core/b/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/e/g;

.field final synthetic b:Lcom/anythink/core/b/l;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/l;Lcom/anythink/core/b/e/g;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lcom/anythink/core/b/l$1;->b:Lcom/anythink/core/b/l;

    iput-object p2, p0, Lcom/anythink/core/b/l$1;->a:Lcom/anythink/core/b/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/e;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/l$1;->a:Lcom/anythink/core/b/e/g;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/g;->o()Lcom/anythink/core/b/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/b/e;->b(Lcom/anythink/core/b/c/f;)I

    .line 82
    iget-object v0, p0, Lcom/anythink/core/b/l$1;->b:Lcom/anythink/core/b/l;

    iget v1, v0, Lcom/anythink/core/b/l;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/anythink/core/b/l;->a:I

    .line 83
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/anythink/core/b/l$1;->b:Lcom/anythink/core/b/l;

    iget v1, v0, Lcom/anythink/core/b/l;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/anythink/core/b/l;->a:I

    .line 88
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/l$1;->b:Lcom/anythink/core/b/l;

    iget v1, v0, Lcom/anythink/core/b/l;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/anythink/core/b/l;->a:I

    .line 93
    return-void
.end method
