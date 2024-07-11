.class final Lcom/anythink/core/common/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/e/i;

.field final synthetic b:Lcom/anythink/core/common/n;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/e/i;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/n;

    iput-object p2, p0, Lcom/anythink/core/common/n$2;->a:Lcom/anythink/core/common/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 103
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 107
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/n$2;->a:Lcom/anythink/core/common/e/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/e/i;->o()Lcom/anythink/core/common/d/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/c/e;->b(Lcom/anythink/core/common/d/n;)I

    .line 108
    iget-object p1, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/n;

    iget v0, p1, Lcom/anythink/core/common/n;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/anythink/core/common/n;->a:I

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 113
    iget-object p1, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/n;

    iget p2, p1, Lcom/anythink/core/common/n;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/anythink/core/common/n;->a:I

    .line 114
    return-void
.end method

.method public final b()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/n;

    iget v1, v0, Lcom/anythink/core/common/n;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/anythink/core/common/n;->a:I

    .line 119
    return-void
.end method
