.class final Lcom/anythink/core/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/e/e;


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

    .prologue
    .line 192
    iput-object p1, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    iput-object p2, p0, Lcom/anythink/core/c/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;Z)Z

    .line 196
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;Z)Z

    .line 201
    if-eqz p1, :cond_42

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/b$1;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/a;)Lcom/anythink/core/c/a;

    .line 204
    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 205
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/j;->a(Landroid/content/Context;)Lcom/anythink/core/b/j;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/j;->a(Lcom/anythink/core/c/a;)V

    .line 206
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    iget-object v1, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/c/b;->b()Lcom/anythink/core/c/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;Lcom/anythink/core/c/a;)V

    .line 211
    :cond_41
    :goto_41
    return-void

    .line 209
    :cond_42
    sget-object v0, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    const-string v1, "app strg f!"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 6

    .prologue
    .line 215
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;Z)Z

    .line 216
    sget-object v0, Lcom/anythink/core/c/b;->a:Ljava/lang/String;

    const-string v1, "app strg f!"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/anythink/core/c/b$1;->b:Lcom/anythink/core/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/c/b;->a(Lcom/anythink/core/c/b;Z)Z

    .line 222
    return-void
.end method
