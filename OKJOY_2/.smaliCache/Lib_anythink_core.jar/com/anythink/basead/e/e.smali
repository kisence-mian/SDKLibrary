.class public final Lcom/anythink/basead/e/e;
.super Lcom/anythink/basead/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/e/b;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/f/d;)V
    .registers 3

    .line 25
    new-instance v0, Lcom/anythink/basead/e/e$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/e/e$1;-><init>(Lcom/anythink/basead/e/e;Lcom/anythink/basead/f/d;)V

    .line 45
    invoke-super {p0, v0}, Lcom/anythink/basead/e/b;->a(Lcom/anythink/basead/f/c;)V

    .line 46
    return-void
.end method
