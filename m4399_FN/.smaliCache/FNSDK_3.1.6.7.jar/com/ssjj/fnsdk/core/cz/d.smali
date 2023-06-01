.class Lcom/ssjj/fnsdk/core/cz/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/c;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/d;->a:Lcom/ssjj/fnsdk/core/cz/c;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz/d;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/cz/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    if-nez p1, :cond_30

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/d;->a:Lcom/ssjj/fnsdk/core/cz/c;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/c;->a(Lcom/ssjj/fnsdk/core/cz/c;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/d;->b:Ljava/lang/String;

    const v2, 0x50011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/d;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_26

    :goto_1a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/d;->a:Lcom/ssjj/fnsdk/core/cz/c;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/c;->a(Lcom/ssjj/fnsdk/core/cz/c;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/d;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_6c

    :cond_26
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/d;->a:Lcom/ssjj/fnsdk/core/cz/c;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/c;->a(Lcom/ssjj/fnsdk/core/cz/c;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_6c

    :cond_30
    const-string v0, "loop"

    invoke-virtual {p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/d;->a:Lcom/ssjj/fnsdk/core/cz/c;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/cz/c;->a(Lcom/ssjj/fnsdk/core/cz/c;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object p1

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/cz/d;->b:Ljava/lang/String;

    const p3, 0x50010

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_53
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/d;->a:Lcom/ssjj/fnsdk/core/cz/c;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/c;->a(Lcom/ssjj/fnsdk/core/cz/c;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/d;->b:Ljava/lang/String;

    const v2, 0x50012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/d;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_26

    goto :goto_1a

    :goto_6c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
