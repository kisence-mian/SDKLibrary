.class final Lcom/anythink/core/common/b/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/h;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/common/b/h;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/h;I)V
    .registers 3

    .line 252
    iput-object p1, p0, Lcom/anythink/core/common/b/h$3;->b:Lcom/anythink/core/common/b/h;

    iput p2, p0, Lcom/anythink/core/common/b/h$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 255
    iget-object v0, p0, Lcom/anythink/core/common/b/h$3;->b:Lcom/anythink/core/common/b/h;

    iget v1, p0, Lcom/anythink/core/common/b/h$3;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/h;->c(I)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 256
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v0

    .line 258
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 261
    nop

    .line 1065
    iget v2, v0, Lcom/anythink/core/common/b/h;->c:I

    .line 261
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4d

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->E()I

    move-result v2

    if-ne v2, v4, :cond_4d

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->r()I

    move-result v2

    if-nez v2, :cond_4d

    .line 262
    nop

    .line 2065
    iget v2, v0, Lcom/anythink/core/common/b/h;->c:I

    .line 262
    invoke-virtual {v1}, Lcom/anythink/core/c/a;->E()I

    move-result v5

    iget v6, p0, Lcom/anythink/core/common/b/h$3;->a:I

    invoke-static {v4, v2, v5, v6}, Lcom/anythink/core/common/f/c;->a(IIII)V

    .line 266
    :cond_4d
    nop

    .line 3065
    iget v2, v0, Lcom/anythink/core/common/b/h;->c:I

    .line 266
    if-ne v2, v4, :cond_6a

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->C()I

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->E()I

    move-result v2

    if-nez v2, :cond_6a

    .line 267
    nop

    .line 4065
    iget v0, v0, Lcom/anythink/core/common/b/h;->c:I

    .line 267
    invoke-virtual {v1}, Lcom/anythink/core/c/a;->E()I

    move-result v1

    iget v2, p0, Lcom/anythink/core/common/b/h$3;->a:I

    invoke-static {v3, v0, v1, v2}, Lcom/anythink/core/common/f/c;->a(IIII)V

    .line 269
    :cond_6a
    iget-object v0, p0, Lcom/anythink/core/common/b/h$3;->b:Lcom/anythink/core/common/b/h;

    invoke-static {v0}, Lcom/anythink/core/common/b/h;->a(Lcom/anythink/core/common/b/h;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/common/b/h$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_7b
    return-void
.end method
