.class Lcom/ssjj/fnsdk/core/ar;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "roleLevel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    rem-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "onlineData"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tempOnlineData:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  sb\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " sb:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " date:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    rem-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_a9

    const-string v1, "*"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ar;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
