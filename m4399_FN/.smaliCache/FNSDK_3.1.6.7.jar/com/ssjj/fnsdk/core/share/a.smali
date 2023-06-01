.class Lcom/ssjj/fnsdk/core/share/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/FNShare;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/a;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "com.ssjj.fnsdk.share."

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/a;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/FNShare;->a()V

    sget-object v1, Lcom/ssjj/fnsdk/core/share/g;->a:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-lt v4, v2, :cond_1c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/a;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/share/FNShare;->a(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V

    return-void

    :cond_1c
    aget-object v5, v1, v4

    :try_start_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".FNShareImpl"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".FNShareConfig"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "fn_pluginId"

    invoke-static {v5, v7}, Lcom/ssjj/fnsdk/core/RefUtil;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->add(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/a;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    invoke-virtual {v5, v6}, Lcom/ssjj/fnsdk/core/share/FNShare;->a(Lcom/ssjj/fnsdk/core/share/FNShareApi;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-exception v5

    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method
