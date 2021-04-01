.class Lcom/bytedance/sdk/openadsdk/core/q$4;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/p$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/n$a",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/p$c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$c;)V
    .registers 3

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Lcom/bytedance/sdk/openadsdk/core/p$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1042
    if-eqz p1, :cond_69

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_69

    .line 1043
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "cypher"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1044
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1046
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 1047
    const/4 v1, 0x0

    .line 1048
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4f

    .line 1049
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    :cond_2b
    :goto_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1056
    :try_start_31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_36} :catch_71

    move-object v0, v2

    .line 1061
    :cond_37
    :goto_37
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/q$c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/q$c;

    move-result-object v0

    .line 1062
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$c;->a:I

    const/16 v2, 0x4e20

    if-eq v1, v2, :cond_57

    .line 1063
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Lcom/bytedance/sdk/openadsdk/core/p$c;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/q$c;->a:I

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/q$c;->a:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(ILjava/lang/String;)V

    .line 1074
    :goto_4e
    return-void

    .line 1050
    :cond_4f
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2b

    .line 1051
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 1066
    :cond_57
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/q;

    if-nez v1, :cond_63

    .line 1067
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Lcom/bytedance/sdk/openadsdk/core/p$c;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$c;)V

    goto :goto_4e

    .line 1070
    :cond_63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Lcom/bytedance/sdk/openadsdk/core/p$c;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(Lcom/bytedance/sdk/openadsdk/core/q$c;)V

    goto :goto_4e

    .line 1072
    :cond_69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Lcom/bytedance/sdk/openadsdk/core/p$c;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$c;)V

    goto :goto_4e

    .line 1057
    :catch_71
    move-exception v1

    goto :goto_37
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x2

    .line 1078
    .line 1079
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    if-eqz p1, :cond_a

    .line 1081
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    long-to-int v1, v2

    .line 1083
    :cond_a
    if-eqz p1, :cond_16

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_16

    .line 1084
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Lcom/bytedance/sdk/openadsdk/core/p$c;

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(ILjava/lang/String;)V

    .line 1087
    return-void
.end method
