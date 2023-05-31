.class public Lcom/qq/gdt/action/f/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILorg/json/JSONObject;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->f()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :cond_15
    :goto_15
    :pswitch_15
    return v0

    :pswitch_16
    if-eqz p1, :cond_15

    const-string v2, "TICKET"

    const-string v3, "actionType"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_15

    :pswitch_28
    move v0, v1

    goto :goto_15

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_28
        :pswitch_15
    .end packed-switch
.end method

.method public static a(Lcom/qq/gdt/action/a/a;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->e()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    :cond_15
    :goto_15
    :pswitch_15
    return v0

    :pswitch_16
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TICKET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_24
    move v0, v1

    goto :goto_15

    :pswitch_26
    if-eqz p0, :cond_3e

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_3e
    move v0, v1

    goto :goto_15

    :pswitch_40
    move v0, v1

    goto :goto_15

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_16
        :pswitch_26
        :pswitch_40
        :pswitch_15
    .end packed-switch
.end method
