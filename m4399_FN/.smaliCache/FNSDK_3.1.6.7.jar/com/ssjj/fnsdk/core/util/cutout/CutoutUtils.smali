.class public Lcom/ssjj/fnsdk/core/util/cutout/CutoutUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCutoutAdapter()Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/cutout/CutoutUtils;->createCutoutAdapter(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static createCutoutAdapter(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manufacturer is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance p0, Lcom/ssjj/fnsdk/core/util/cutout/a;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/a;-><init>()V

    return-object p0

    :cond_1e
    const-string v0, "Huawei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance p0, Lcom/ssjj/fnsdk/core/util/cutout/b;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/b;-><init>()V

    goto :goto_5b

    :cond_2c
    const-string v0, "Xiaomi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance p0, Lcom/ssjj/fnsdk/core/util/cutout/c;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/c;-><init>()V

    goto :goto_5b

    :cond_3a
    const-string v0, "OPPO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance p0, Lcom/ssjj/fnsdk/core/util/cutout/d;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/d;-><init>()V

    goto :goto_5b

    :cond_48
    const-string v0, "vivo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_56

    new-instance p0, Lcom/ssjj/fnsdk/core/util/cutout/e;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/e;-><init>()V

    goto :goto_5b

    :cond_56
    new-instance p0, Lcom/ssjj/fnsdk/core/util/cutout/a;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/cutout/a;-><init>()V

    :goto_5b
    return-object p0
.end method

.method public static getCutoutDirection(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const-string v0, "left"

    packed-switch p0, :pswitch_data_1c

    return-object v0

    :pswitch_12
    const-string p0, "right"

    return-object p0

    :pswitch_15
    const-string p0, "bottom"

    return-object p0

    :pswitch_18
    return-object v0

    :pswitch_19
    const-string p0, "top"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method
