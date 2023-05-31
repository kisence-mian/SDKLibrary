.class Lcom/bytedance/sdk/openadsdk/d/a$3;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/a;ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 5

    .prologue
    .line 297
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->d:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 11

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    if-eq p1, v3, :cond_6

    .line 337
    :cond_5
    :goto_5
    return v1

    .line 304
    :cond_6
    if-eqz p2, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 308
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->a:Z

    if-nez v2, :cond_58

    .line 311
    const/4 v2, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_6c

    :cond_20
    :goto_20
    packed-switch v2, :pswitch_data_82

    move v0, v1

    :pswitch_24
    move v1, v0

    .line 328
    goto :goto_5

    .line 311
    :sswitch_26
    const-string v3, "click_start_detail"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, v0

    goto :goto_20

    :sswitch_30
    const-string v3, "click_start"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, v1

    goto :goto_20

    :sswitch_3a
    const-string v3, "click_pause"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x2

    goto :goto_20

    :sswitch_44
    const-string v4, "click_continue"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move v2, v3

    goto :goto_20

    :sswitch_4e
    const-string v3, "click_open"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x4

    goto :goto_20

    .line 331
    :cond_58
    const-string v2, "click_start"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 333
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "click_start_detail"

    const/4 v4, 0x0

    invoke-static {v1, v2, p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move v1, v0

    .line 334
    goto :goto_5

    .line 311
    :sswitch_data_6c
    .sparse-switch
        -0x4d5dae82 -> :sswitch_44
        -0x2e50b15f -> :sswitch_4e
        0x21b2e025 -> :sswitch_26
        0x6442087f -> :sswitch_3a
        0x6474a6eb -> :sswitch_30
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method
