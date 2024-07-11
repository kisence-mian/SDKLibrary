.class final Lcom/anythink/core/common/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/n;

.field final synthetic b:Lcom/anythink/core/common/n;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/d/n;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/anythink/core/common/n$1;->b:Lcom/anythink/core/common/n;

    iput-object p2, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/anythink/core/common/n$1;->b:Lcom/anythink/core/common/n;

    iget v1, v0, Lcom/anythink/core/common/n;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/anythink/core/common/n;->a:I

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 87
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/n$1;->a:Lcom/anythink/core/common/d/n;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/c/e;->b(Lcom/anythink/core/common/d/n;)I

    .line 88
    iget-object p1, p0, Lcom/anythink/core/common/n$1;->b:Lcom/anythink/core/common/n;

    iget v0, p1, Lcom/anythink/core/common/n;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/anythink/core/common/n;->a:I

    .line 89
    return-void
.end method
