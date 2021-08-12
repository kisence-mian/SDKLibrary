.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/a/b;
.super Ljava/lang/Object;
.source "DynamicViewFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;
    .registers 5

    .line 23
    const/4 v0, 0x0

    if-eqz p0, :cond_4c

    if-eqz p1, :cond_4c

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->e()Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_4c

    .line 26
    :cond_e
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->e()Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;->a()I

    move-result v1

    .line 27
    nop

    .line 28
    packed-switch v1, :pswitch_data_4e

    goto :goto_4b

    .line 51
    :pswitch_1b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    goto :goto_4b

    .line 48
    :pswitch_21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 49
    goto :goto_4b

    .line 45
    :pswitch_27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoUnion;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoUnion;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 46
    goto :goto_4b

    .line 42
    :pswitch_2d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 43
    goto :goto_4b

    .line 39
    :pswitch_33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicDislike;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicDislike;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 40
    goto :goto_4b

    .line 36
    :pswitch_39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 37
    goto :goto_4b

    .line 33
    :pswitch_3f
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 34
    goto :goto_4b

    .line 30
    :pswitch_45
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 31
    nop

    .line 54
    :goto_4b
    return-object v0

    .line 24
    :cond_4c
    :goto_4c
    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method
