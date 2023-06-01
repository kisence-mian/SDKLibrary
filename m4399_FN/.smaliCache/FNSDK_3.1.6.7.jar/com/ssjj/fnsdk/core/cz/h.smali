.class Lcom/ssjj/fnsdk/core/cz/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/g;

.field private final synthetic b:Lorg/json/JSONObject;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/g;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/h;->a:Lcom/ssjj/fnsdk/core/cz/g;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/h;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/cz/h;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/cz/h;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/h;)Lcom/ssjj/fnsdk/core/cz/g;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cz/h;->a:Lcom/ssjj/fnsdk/core/cz/g;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 11

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/h;->a:Lcom/ssjj/fnsdk/core/cz/g;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/g;->a(Lcom/ssjj/fnsdk/core/cz/g;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/h;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/h;->a:Lcom/ssjj/fnsdk/core/cz/g;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/cz/g;->a(Lcom/ssjj/fnsdk/core/cz/g;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/h;->a:Lcom/ssjj/fnsdk/core/cz/g;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/cz/g;->a(Lcom/ssjj/fnsdk/core/cz/g;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/h;->a:Lcom/ssjj/fnsdk/core/cz/g;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/g;->a(Lcom/ssjj/fnsdk/core/cz/g;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/cz/i;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/cz/h;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/cz/h;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/cz/h;->b:Lorg/json/JSONObject;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ssjj/fnsdk/core/cz/i;-><init>(Lcom/ssjj/fnsdk/core/cz/h;Lcom/ssjj/fnsdk/core/SsjjFNListener;ZLcom/ssjj/fnsdk/core/SsjjFNParams;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
