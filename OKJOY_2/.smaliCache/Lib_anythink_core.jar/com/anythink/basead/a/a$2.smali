.class final Lcom/anythink/basead/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/h;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/basead/c/h;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d/h;ILcom/anythink/basead/c/h;)V
    .registers 4

    .line 107
    iput-object p1, p0, Lcom/anythink/basead/a/a$2;->a:Lcom/anythink/core/common/d/h;

    iput p2, p0, Lcom/anythink/basead/a/a$2;->b:I

    iput-object p3, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/anythink/basead/a/a$2;->a:Lcom/anythink/core/common/d/h;

    instance-of v1, v0, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_36

    .line 111
    check-cast v0, Lcom/anythink/core/common/d/p;

    .line 112
    iget v1, p0, Lcom/anythink/basead/a/a$2;->b:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_20

    .line 113
    new-instance v1, Lcom/anythink/basead/h/c;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/p;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/h;

    iget-object v5, v5, Lcom/anythink/basead/c/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Lcom/anythink/basead/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/anythink/basead/h/c;->a(ILcom/anythink/core/common/e/g;)V

    .line 116
    :cond_20
    new-instance v1, Lcom/anythink/basead/h/b;

    iget v2, p0, Lcom/anythink/basead/a/a$2;->b:I

    iget-object v5, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/h;

    iget-object v5, v5, Lcom/anythink/basead/c/h;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v5}, Lcom/anythink/basead/h/b;-><init>(ILcom/anythink/core/common/d/p;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/h;

    iget-object v0, v0, Lcom/anythink/basead/c/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/h/b;->b(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v4, v3}, Lcom/anythink/basead/h/b;->a(ILcom/anythink/core/common/e/g;)V

    .line 119
    return-void

    .line 120
    :cond_36
    iget v1, p0, Lcom/anythink/basead/a/a$2;->b:I

    check-cast v0, Lcom/anythink/core/common/d/u;

    iget-object v2, p0, Lcom/anythink/basead/a/a$2;->c:Lcom/anythink/basead/c/h;

    invoke-static {v1, v0, v2}, Lcom/anythink/basead/a/h;->a(ILcom/anythink/core/common/d/u;Lcom/anythink/basead/c/h;)V

    .line 122
    return-void
.end method
