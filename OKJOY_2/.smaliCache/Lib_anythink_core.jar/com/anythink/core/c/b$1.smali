.class final Lcom/anythink/core/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/c/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/b;Ljava/lang/String;)V
    .registers 3

    .line 197
    iput-object p1, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    iput-object p2, p0, Lcom/anythink/core/c/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 200
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;)Z

    .line 205
    if-eqz p1, :cond_62

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {v0}, Lcom/anythink/core/c/b;->b(Lcom/anythink/core/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/a;)Lcom/anythink/core/c/a;

    .line 208
    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 209
    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/c/a;->b()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 211
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/g;->g(Ljava/lang/String;)V

    .line 213
    :cond_43
    iget-object p1, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {p1}, Lcom/anythink/core/c/b;->b(Lcom/anythink/core/c/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/l;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/l;->a(Lcom/anythink/core/c/a;)V

    .line 214
    iget-object p1, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {p1}, Lcom/anythink/core/c/b;->b(Lcom/anythink/core/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;Lcom/anythink/core/c/a;)V

    .line 216
    :cond_61
    return-void

    .line 217
    :cond_62
    sget-object p1, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    const-string v0, "app strg f!"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 223
    iget-object p2, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {p2}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;)Z

    .line 224
    sget-object p2, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "app strg f!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public final b()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;)Z

    .line 230
    return-void
.end method
