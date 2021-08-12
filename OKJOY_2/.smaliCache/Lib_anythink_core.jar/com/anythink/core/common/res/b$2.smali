.class final Lcom/anythink/core/common/res/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/res/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 68
    iput-object p1, p0, Lcom/anythink/core/common/res/b$2;->c:Lcom/anythink/core/common/res/b;

    iput-object p2, p0, Lcom/anythink/core/common/res/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/res/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/anythink/core/common/res/b$2;->c:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/res/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 72
    if-eqz v0, :cond_2a

    .line 73
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/res/b$a;

    .line 74
    if-eqz v1, :cond_29

    .line 75
    iget-object v2, p0, Lcom/anythink/core/common/res/b$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/res/b$2;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/anythink/core/common/res/b$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_29
    goto :goto_14

    .line 79
    :cond_2a
    iget-object v0, p0, Lcom/anythink/core/common/res/b$2;->c:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/res/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
