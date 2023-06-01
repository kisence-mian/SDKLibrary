.class Lcom/ssjj/fnsdk/core/cz/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/j;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/j;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput p3, p0, Lcom/ssjj/fnsdk/core/cz/j;->c:I

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/cz/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/cz/j;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/j;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget v1, p0, Lcom/ssjj/fnsdk/core/cz/j;->c:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/j;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method
