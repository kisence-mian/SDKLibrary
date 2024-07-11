.class Lcom/bytedance/sdk/openadsdk/d/a$4;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/a;ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 5

    .line 356
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->d:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 9

    .line 359
    const/4 p5, 0x3

    const/4 v0, 0x1

    if-eq p1, p5, :cond_5

    .line 361
    return v0

    .line 363
    :cond_5
    if-eqz p2, :cond_75

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_75

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto/16 :goto_75

    .line 367
    :cond_15
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->a:Z

    const-string p2, "click_start_detail"

    const-string v1, "click_start"

    if-nez p1, :cond_65

    .line 369
    nop

    .line 370
    const/4 p1, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_76

    :cond_27
    goto :goto_55

    :sswitch_28
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    move p5, v0

    goto :goto_56

    :sswitch_30
    const-string p2, "click_pause"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    const/4 p5, 0x2

    goto :goto_56

    :sswitch_3a
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    move p5, v2

    goto :goto_56

    :sswitch_42
    const-string p2, "click_open"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    const/4 p5, 0x4

    goto :goto_56

    :sswitch_4c
    const-string p2, "click_continue"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    goto :goto_56

    :goto_55
    move p5, p1

    :goto_56
    packed-switch p5, :pswitch_data_8c

    goto :goto_64

    .line 383
    :pswitch_5a
    move v0, v2

    goto :goto_64

    .line 380
    :pswitch_5c
    nop

    .line 381
    move v0, v2

    goto :goto_64

    .line 377
    :pswitch_5f
    nop

    .line 378
    move v0, v2

    goto :goto_64

    .line 374
    :pswitch_62
    nop

    .line 375
    move v0, v2

    .line 387
    :goto_64
    return v0

    .line 390
    :cond_65
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 392
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->b:Landroid/content/Context;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/a$4;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 p5, 0x0

    invoke-static {p1, p4, p3, p2, p5}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 393
    return v0

    .line 396
    :cond_74
    return v0

    .line 364
    :cond_75
    :goto_75
    return v0

    :sswitch_data_76
    .sparse-switch
        -0x4d5dae82 -> :sswitch_4c
        -0x2e50b15f -> :sswitch_42
        0x21b2e025 -> :sswitch_3a
        0x6442087f -> :sswitch_30
        0x6474a6eb -> :sswitch_28
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_62
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_5a
    .end packed-switch
.end method
