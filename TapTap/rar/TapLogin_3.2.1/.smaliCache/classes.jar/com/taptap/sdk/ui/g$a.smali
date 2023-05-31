.class Lcom/taptap/sdk/ui/g$a;
.super Landroid/os/Handler;
.source "CloudGameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/g;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/g;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Gson parse JsonSyntaxException"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 7
    new-instance p1, Lcom/taptap/sdk/LoginResponse;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {v0}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/ui/g;)Lcom/taptap/sdk/LoginRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Gson parse JsonSyntaxException"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/LoginResponse;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {v0}, Lcom/taptap/sdk/ui/g;->c(Lcom/taptap/sdk/ui/g;)Lcom/taptap/sdk/ui/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/taptap/sdk/LoginResponse;->toIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/ui/a;->a(ILandroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1}, Lcom/taptap/sdk/ui/g;->c(Lcom/taptap/sdk/ui/g;)Lcom/taptap/sdk/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/ui/a;->a()V

    goto :goto_aa

    .line 11
    :cond_42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e2d\u95f4\u4ef6\u8fd4\u56de\u7684\u6d88\u606f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/ui/g;Ljava/lang/String;)V

    const-string v1, "login_taptap_finish"

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 15
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1, v0}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/ui/g;Lorg/json/JSONObject;)V

    goto :goto_aa

    :cond_77
    const-string v1, "message_result"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 17
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1, v0}, Lcom/taptap/sdk/ui/g;->b(Lcom/taptap/sdk/ui/g;Lorg/json/JSONObject;)V

    goto :goto_aa

    :cond_85
    const-string v1, "initialize_finish"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 19
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1, v0}, Lcom/taptap/sdk/ui/g;->c(Lcom/taptap/sdk/ui/g;Lorg/json/JSONObject;)V

    goto :goto_aa

    :cond_93
    const-string v0, "middle_layer_init_finish"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 21
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1}, Lcom/taptap/sdk/ui/g;->d(Lcom/taptap/sdk/ui/g;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a0} :catch_a1

    goto :goto_aa

    .line 25
    :catch_a1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$a;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1}, Lcom/taptap/sdk/ui/g;->e(Lcom/taptap/sdk/ui/g;)V

    :cond_aa
    :goto_aa
    return-void
.end method
