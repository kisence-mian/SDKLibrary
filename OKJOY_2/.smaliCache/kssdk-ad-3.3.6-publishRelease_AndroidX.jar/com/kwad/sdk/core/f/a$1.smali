.class final Lcom/kwad/sdk/core/f/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/f/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_188

    goto/16 :goto_b2

    :sswitch_10
    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    move v1, v2

    goto/16 :goto_b3

    :sswitch_1b
    const-string v1, "FERRMEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xd

    goto/16 :goto_b3

    :sswitch_27
    const-string v1, "MOTOLORA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x7

    goto/16 :goto_b3

    :sswitch_32
    const-string v1, "NUBIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0x9

    goto/16 :goto_b3

    :sswitch_3e
    const-string v1, "MEIZU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0x8

    goto/16 :goto_b3

    :sswitch_4a
    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x5

    goto :goto_b3

    :sswitch_54
    const-string v1, "SSUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xe

    goto :goto_b3

    :sswitch_5f
    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x3

    goto :goto_b3

    :sswitch_69
    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xb

    goto :goto_b3

    :sswitch_74
    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xc

    goto :goto_b3

    :sswitch_7f
    const-string v1, "ONEPLUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x4

    goto :goto_b3

    :sswitch_89
    const-string v1, "BLACKSHARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x2

    goto :goto_b3

    :sswitch_93
    const-string v1, "XIAOMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x1

    goto :goto_b3

    :sswitch_9d
    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xa

    goto :goto_b3

    :sswitch_a8
    const-string v1, "LENOVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x6

    goto :goto_b3

    :cond_b2
    :goto_b2
    const/4 v1, -0x1

    :goto_b3
    packed-switch v1, :pswitch_data_1c6

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->c()Z

    move-result v1

    if-nez v1, :cond_13f

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->d()Z

    move-result v1

    if-eqz v1, :cond_147

    goto/16 :goto_13f

    :pswitch_c4
    new-instance v1, Lcom/kwad/sdk/core/f/a/j;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/j;-><init>(Landroid/content/Context;)V

    :goto_cb
    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/j;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_d0
    new-instance v1, Lcom/kwad/sdk/core/f/a/a;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_dc
    new-instance v1, Lcom/kwad/sdk/core/f/a/g;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/g;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_e8
    new-instance v1, Lcom/kwad/sdk/core/f/a/e;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/e;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_f4
    new-instance v1, Lcom/kwad/sdk/core/f/a/d;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/d;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_100
    new-instance v1, Lcom/kwad/sdk/core/f/a/c;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/c;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_10c
    new-instance v1, Lcom/kwad/sdk/core/f/a/h;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/h;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_118
    new-instance v1, Lcom/kwad/sdk/core/f/a/f;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/f;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_124
    new-instance v1, Lcom/kwad/sdk/core/f/a/i;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/i;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_13b

    :pswitch_130
    new-instance v1, Lcom/kwad/sdk/core/f/a/b;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/f/a/b;->a()Ljava/lang/String;

    move-result-object v1

    :goto_13b
    invoke-static {v1}, Lcom/kwad/sdk/core/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_147

    :cond_13f
    :goto_13f
    new-instance v1, Lcom/kwad/sdk/core/f/a/j;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kwad/sdk/core/f/a/j;-><init>(Landroid/content/Context;)V

    goto :goto_cb

    :cond_147
    :goto_147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manufacturer:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--OAID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAIDHelper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, p0, Lcom/kwad/sdk/core/f/a$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/aa;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_180
    invoke-static {}, Lcom/kwad/sdk/core/f/a;->f()V

    invoke-static {v2}, Lcom/kwad/sdk/core/f/a;->a(Z)Z

    return-void

    nop

    :sswitch_data_188
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_a8
        -0x660bb426 -> :sswitch_9d
        -0x65b21745 -> :sswitch_93
        -0x43a32cba -> :sswitch_89
        -0x23e7db20 -> :sswitch_7f
        0x15c4b -> :sswitch_74
        0x1ece50 -> :sswitch_69
        0x251fa0 -> :sswitch_5f
        0x26fcf4 -> :sswitch_54
        0x2834ac -> :sswitch_4a
        0x45d8cac -> :sswitch_3e
        0x472cdb3 -> :sswitch_32
        0x259adc0f -> :sswitch_27
        0x3a35353b -> :sswitch_1b
        0x7fa995e7 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_130
        :pswitch_124
        :pswitch_124
        :pswitch_118
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
        :pswitch_c4
        :pswitch_c4
        :pswitch_c4
    .end packed-switch
.end method
