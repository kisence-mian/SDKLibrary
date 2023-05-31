.class final Lcom/kwad/sdk/c/e/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/e/a;->a(Landroid/content/Context;Lcom/kwad/sdk/c/e/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/kwad/sdk/c/e/a$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/c/e/a$b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwad/sdk/c/e/a$a;->b:Lcom/kwad/sdk/c/e/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_130

    :cond_e
    :goto_e
    packed-switch v0, :pswitch_data_156

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manufacturer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--OAID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/e/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAIDHelper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/e/a$a;->b:Lcom/kwad/sdk/c/e/a$b;

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/kwad/sdk/c/e/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/e/a$b;->a(Ljava/lang/String;)V

    :cond_42
    return-void

    :sswitch_43
    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    :sswitch_4d
    const-string v2, "NUBIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x6

    goto :goto_e

    :sswitch_57
    const-string v2, "MEIZU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x5

    goto :goto_e

    :sswitch_61
    const-string v2, "VIVO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x3

    goto :goto_e

    :sswitch_6b
    const-string v2, "OPPO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x2

    goto :goto_e

    :sswitch_75
    const-string v2, "ASUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v0, 0x8

    goto :goto_e

    :sswitch_80
    const-string v2, "XIAOMI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :sswitch_8a
    const-string v2, "SAMSUNG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x7

    goto/16 :goto_e

    :sswitch_95
    const-string v2, "LENOVO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x4

    goto/16 :goto_e

    :pswitch_a0
    new-instance v0, Lcom/kwad/sdk/c/e/b/a;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_b0
    new-instance v0, Lcom/kwad/sdk/c/e/b/g;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_c0
    new-instance v0, Lcom/kwad/sdk/c/e/b/e;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_d0
    new-instance v0, Lcom/kwad/sdk/c/e/b/d;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_e0
    new-instance v0, Lcom/kwad/sdk/c/e/b/c;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_f0
    new-instance v0, Lcom/kwad/sdk/c/e/b/h;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_100
    new-instance v0, Lcom/kwad/sdk/c/e/b/f;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_110
    new-instance v0, Lcom/kwad/sdk/c/e/b/i;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_120
    new-instance v0, Lcom/kwad/sdk/c/e/b/b;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/a$a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kwad/sdk/c/e/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_11

    :sswitch_data_130
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_95
        -0x660bb426 -> :sswitch_8a
        -0x65b21745 -> :sswitch_80
        0x1ece50 -> :sswitch_75
        0x251fa0 -> :sswitch_6b
        0x2834ac -> :sswitch_61
        0x45d8cac -> :sswitch_57
        0x472cdb3 -> :sswitch_4d
        0x7fa995e7 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_120
        :pswitch_110
        :pswitch_100
        :pswitch_f0
        :pswitch_e0
        :pswitch_d0
        :pswitch_c0
        :pswitch_b0
        :pswitch_a0
    .end packed-switch
.end method
