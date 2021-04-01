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
    .registers 5

    .prologue
    .line 544
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const-string v0, "tt_sp_app_list"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    .line 546
    return-void
.end method

.method private a(J)J
    .registers 8

    .prologue
    .line 633
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private a(JJ)Z
    .registers 10

    .prologue
    .line 627
    sub-long v0, p3, p1

    .line 628
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    const-wide/32 v2, -0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 629
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a(J)J

    move-result-wide v0

    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 628
    :goto_1d
    return v0

    .line 629
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 575
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 576
    const-string v0, "tt_sp_app_list"

    const-string v1, "day_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    :goto_15
    return-void

    .line 579
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "day_update_time"

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_15
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 560
    :goto_6
    return-void

    .line 553
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 554
    const-string v0, "tt_sp_app_list"

    const-string v1, "old_app_list"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 557
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "old_app_list"

    .line 558
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6
.end method

.method b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 588
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 589
    const-string v0, "tt_sp_app_list"

    const-string v1, "old_app_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    const-string v1, "old_app_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method c()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 616
    .line 617
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 618
    const-string v0, "tt_sp_app_list"

    const-string v1, "day_update_time"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 622
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 623
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_1b
    return v0

    .line 620
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b:Landroid/content/SharedPreferences;

    const-string v1, "day_update_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_10

    .line 623
    :cond_25
    const/4 v0, 0x0

    goto :goto_1b
.end method
