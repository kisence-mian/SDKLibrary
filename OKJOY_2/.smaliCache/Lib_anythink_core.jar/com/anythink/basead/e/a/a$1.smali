.class final Lcom/anythink/basead/e/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/a/a;->b(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/i;

.field final synthetic b:Lcom/anythink/basead/e/a/a$a;

.field final synthetic c:Lcom/anythink/basead/e/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/a/a;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/a/a$a;)V
    .registers 4

    .line 82
    iput-object p1, p0, Lcom/anythink/basead/e/a/a$1;->c:Lcom/anythink/basead/e/a/a;

    iput-object p2, p0, Lcom/anythink/basead/e/a/a$1;->a:Lcom/anythink/core/common/d/i;

    iput-object p3, p0, Lcom/anythink/basead/e/a/a$1;->b:Lcom/anythink/basead/e/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 7

    .line 90
    nop

    .line 92
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/anythink/basead/e/a/a$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/anythink/basead/e/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/anythink/core/common/d/f;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    .line 96
    goto :goto_15

    .line 94
    :catch_13
    move-exception v0

    const/4 v0, 0x0

    .line 98
    :goto_15
    if-eqz v0, :cond_51

    .line 100
    iget-object v1, p0, Lcom/anythink/basead/e/a/a$1;->a:Lcom/anythink/core/common/d/i;

    invoke-static {v1, v0}, Lcom/anythink/basead/e/c/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/u;)V

    .line 101
    const/16 v1, 0xa

    new-instance v2, Lcom/anythink/basead/c/h;

    iget-object v3, p0, Lcom/anythink/basead/e/a/a$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 103
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    iget-object v1, p0, Lcom/anythink/basead/e/a/a$1;->c:Lcom/anythink/basead/e/a/a;

    invoke-static {v1}, Lcom/anythink/basead/e/a/a;->a(Lcom/anythink/basead/e/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/e/a/a$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/anythink/basead/e/a/a$1;->b:Lcom/anythink/basead/e/a/a$a;

    if-eqz p1, :cond_47

    .line 105
    invoke-interface {p1}, Lcom/anythink/basead/e/a/a$a;->a()V

    .line 107
    :cond_47
    iget-object p1, p0, Lcom/anythink/basead/e/a/a$1;->c:Lcom/anythink/basead/e/a/a;

    iget-object v1, p0, Lcom/anythink/basead/e/a/a$1;->a:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/basead/e/a/a$1;->b:Lcom/anythink/basead/e/a/a$a;

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/basead/e/a/a;->a(Lcom/anythink/basead/e/a/a;Lcom/anythink/core/common/d/f;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/a/a$a;)V

    return-void

    .line 109
    :cond_51
    iget-object v0, p0, Lcom/anythink/basead/e/a/a$1;->b:Lcom/anythink/basead/e/a/a$a;

    if-eqz v0, :cond_67

    .line 110
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5e

    :cond_5c
    const-string p1, "No Ad Return."

    :goto_5e
    const-string v1, "30001"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 114
    :cond_67
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 118
    iget-object p2, p0, Lcom/anythink/basead/e/a/a$1;->b:Lcom/anythink/basead/e/a/a$a;

    if-eqz p2, :cond_d

    .line 119
    const-string v0, "30001"

    invoke-static {v0, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/basead/e/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 121
    :cond_d
    return-void
.end method

.method public final b()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/e/a/a$1;->b:Lcom/anythink/basead/e/a/a$a;

    if-eqz v0, :cond_f

    .line 126
    const-string v1, "30001"

    const-string v2, "Cancel Request."

    invoke-static {v1, v2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 128
    :cond_f
    return-void
.end method
