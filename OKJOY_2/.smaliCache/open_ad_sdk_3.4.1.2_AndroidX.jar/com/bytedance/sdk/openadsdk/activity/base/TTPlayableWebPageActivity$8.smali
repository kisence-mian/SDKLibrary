.class Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$8;
.super Ljava/lang/Object;
.source "TTPlayableWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/playable/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/playable/b;
    .registers 3

    .line 333
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    :cond_b
    goto :goto_3e

    :sswitch_c
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_3f

    :sswitch_16
    const-string v1, "5g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_3f

    :sswitch_20
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_3f

    :sswitch_34
    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_3f

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    packed-switch v0, :pswitch_data_6a

    .line 346
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/b;->f:Lcom/bytedance/sdk/openadsdk/playable/b;

    return-object v0

    .line 344
    :pswitch_45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/b;->e:Lcom/bytedance/sdk/openadsdk/playable/b;

    return-object v0

    .line 342
    :pswitch_48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/b;->d:Lcom/bytedance/sdk/openadsdk/playable/b;

    return-object v0

    .line 340
    :pswitch_4b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/b;->c:Lcom/bytedance/sdk/openadsdk/playable/b;

    return-object v0

    .line 338
    :pswitch_4e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/b;->b:Lcom/bytedance/sdk/openadsdk/playable/b;

    return-object v0

    .line 336
    :pswitch_51
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/b;->a:Lcom/bytedance/sdk/openadsdk/playable/b;

    return-object v0

    :sswitch_data_54
    .sparse-switch
        0x675 -> :sswitch_34
        0x694 -> :sswitch_2a
        0x6b3 -> :sswitch_20
        0x6d2 -> :sswitch_16
        0x37af15 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$8;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 353
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .line 358
    return-void
.end method

.method public b()V
    .registers 1

    .line 368
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    .line 363
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 2

    .line 373
    return-void
.end method
