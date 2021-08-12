.class final Lcom/anythink/basead/e/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/i;

.field final synthetic b:Lcom/anythink/basead/e/b/b$a;

.field final synthetic c:Lcom/anythink/core/common/d/t;

.field final synthetic d:Lcom/anythink/basead/e/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;Lcom/anythink/core/common/d/t;)V
    .registers 5

    .line 171
    iput-object p1, p0, Lcom/anythink/basead/e/b/b$2;->d:Lcom/anythink/basead/e/b/b;

    iput-object p2, p0, Lcom/anythink/basead/e/b/b$2;->a:Lcom/anythink/core/common/d/i;

    iput-object p3, p0, Lcom/anythink/basead/e/b/b$2;->b:Lcom/anythink/basead/e/b/b$a;

    iput-object p4, p0, Lcom/anythink/basead/e/b/b$2;->c:Lcom/anythink/core/common/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/anythink/basead/e/b/b$2;->d:Lcom/anythink/basead/e/b/b;

    iget-object v0, v0, Lcom/anythink/basead/e/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v1, p0, Lcom/anythink/basead/e/b/b$2;->a:Lcom/anythink/core/common/d/i;

    invoke-static {v1}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/anythink/basead/e/b/b$2;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz v0, :cond_1b

    .line 177
    iget-object v1, p0, Lcom/anythink/basead/e/b/b$2;->c:Lcom/anythink/core/common/d/t;

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/core/common/d/t;)V

    .line 179
    :cond_1b
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/e/b/b$2;->d:Lcom/anythink/basead/e/b/b;

    iget-object v0, v0, Lcom/anythink/basead/e/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v1, p0, Lcom/anythink/basead/e/b/b$2;->a:Lcom/anythink/core/common/d/i;

    invoke-static {v1}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/e/b/b$2;->b:Lcom/anythink/basead/e/b/b$a;

    if-eqz v0, :cond_19

    .line 185
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 187
    :cond_19
    return-void
.end method
