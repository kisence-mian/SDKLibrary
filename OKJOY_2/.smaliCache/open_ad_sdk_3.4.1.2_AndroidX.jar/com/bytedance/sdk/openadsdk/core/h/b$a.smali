.class Lcom/bytedance/sdk/openadsdk/core/h/b$a;
.super Ljava/lang/Object;
.source "ApplistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/b;

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/b;Landroid/content/Context;)V
    .registers 4

    .line 570
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const-string p1, "tt_sp_app_list"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    .line 572
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 601
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "day_update_time"

    if-eqz v0, :cond_16

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "tt_sp_app_list"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 603
    return-void

    .line 605
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 608
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 577
    return-void

    .line 579
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "old_app_list"

    if-eqz v0, :cond_15

    .line 580
    const-string v0, "tt_sp_app_list"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void

    .line 583
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 584
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 585
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 586
    return-void
.end method

.method b()Ljava/lang/String;
    .registers 4

    .line 614
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, ""

    const-string v2, "old_app_list"

    if-eqz v0, :cond_11

    .line 615
    const-string v0, "tt_sp_app_list"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 617
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .registers 5

    .line 642
    nop

    .line 643
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "day_update_time"

    if-eqz v0, :cond_12

    .line 644
    const-string v0, "tt_sp_app_list"

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_18

    .line 646
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 648
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 649
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(JJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
