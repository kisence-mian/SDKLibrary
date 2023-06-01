.class Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field e:Ljava/util/Timer;

.field f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;

.field g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/util/Timer;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->g:I

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->e:Ljava/util/Timer;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ret"

    const-string v1, "fnsdk"

    iget v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->g:I

    :try_start_a
    const-string v2, "fnsdk: checkOrderSpecial start..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v2, v3, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_a .. :try_end_1b} :catch_6a

    :try_start_1b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    const-string v4, "0"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "fnsdk: checkOrderSpecial ok..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/bs;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/bs;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;)V

    :goto_43
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6e

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "fnsdk: checkOrderSpecial ret: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->g:I

    if-gtz v0, :cond_6e

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/bt;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/bt;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_64} :catch_65
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_1b .. :try_end_64} :catch_6a

    goto :goto_43

    :catch_65
    move-exception v0

    :try_start_66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_69
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :cond_6e
    :goto_6e
    iget v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->g:I

    if-lez v0, :cond_73

    return-void

    :cond_73
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_6e
.end method
