.class final Lcom/anythink/china/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/china/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anythink/china/a/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 108
    iput-object p1, p0, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    iput-object p2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/china/a/b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 110
    new-instance v0, Lcom/anythink/china/a/b$1$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/b$1$1;-><init>(Lcom/anythink/china/a/b$1;)V

    .line 125
    :try_start_5
    iget-object v1, p0, Lcom/anythink/china/a/b$1;->c:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_e4

    :cond_f
    goto/16 :goto_82

    :sswitch_11
    const-string v3, "HUAWEI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x6

    goto/16 :goto_82

    :sswitch_1c
    const-string v3, "FERRMEOS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x4

    goto :goto_82

    :sswitch_26
    const-string v3, "MOTOLORA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v2, 0x9

    goto :goto_82

    :sswitch_31
    const-string v3, "MEIZU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v2, 0xa

    goto :goto_82

    :sswitch_3c
    const-string v3, "SSUI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x5

    goto :goto_82

    :sswitch_46
    const-string v3, "OPPO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    goto :goto_82

    :sswitch_50
    const-string v3, "ASUS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    goto :goto_82

    :sswitch_5a
    const-string v3, "ZTE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x3

    goto :goto_82

    :sswitch_64
    const-string v3, "ONEPLUS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x2

    goto :goto_82

    :sswitch_6e
    const-string v3, "SAMSUNG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x7

    goto :goto_82

    :sswitch_78
    const-string v3, "LENOVO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v2, 0x8

    :goto_82
    packed-switch v2, :pswitch_data_112

    .line 156
    iget-object v0, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    goto :goto_d2

    .line 153
    :pswitch_88
    new-instance v1, Lcom/anythink/china/a/a/e;

    iget-object v2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anythink/china/a/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/a/a/e;->a(Lcom/anythink/china/a/a;)V

    .line 154
    return-void

    .line 149
    :pswitch_93
    new-instance v1, Lcom/anythink/china/a/a/m;

    iget-object v2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anythink/china/a/a/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/a/a/m;->a(Lcom/anythink/china/a/a;)V

    .line 150
    return-void

    .line 144
    :pswitch_9e
    new-instance v1, Lcom/anythink/china/a/a/j;

    iget-object v2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anythink/china/a/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/a/a/j;->a(Lcom/anythink/china/a/a;)V

    .line 145
    return-void

    .line 141
    :pswitch_a9
    new-instance v1, Lcom/anythink/china/a/a/d;

    iget-object v2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anythink/china/a/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/a/a/d;->a(Lcom/anythink/china/a/a;)V

    .line 142
    return-void

    .line 137
    :pswitch_b4
    iget-object v0, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    invoke-static {v0, v1}, Lcom/anythink/china/a/b;->b(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    .line 138
    return-void

    .line 131
    :pswitch_bc
    new-instance v1, Lcom/anythink/china/a/a/g;

    iget-object v2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anythink/china/a/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/a/a/g;->a(Lcom/anythink/china/a/a;)Ljava/lang/String;

    .line 132
    return-void

    .line 127
    :pswitch_c7
    new-instance v1, Lcom/anythink/china/a/a/b;

    iget-object v2, p0, Lcom/anythink/china/a/b$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/anythink/china/a/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/a/a/b;->a(Lcom/anythink/china/a/a;)V

    .line 128
    return-void

    .line 156
    :goto_d2
    iget-object v1, p0, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    invoke-static {v0, v1}, Lcom/anythink/china/a/b;->b(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    :try_end_d7
    .catchall {:try_start_5 .. :try_end_d7} :catchall_d8

    .line 163
    return-void

    .line 159
    :catchall_d8
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/anythink/china/a/b$1;->a:Lcom/anythink/china/a/a;

    if-eqz v1, :cond_e3

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-interface {v1}, Lcom/anythink/china/a/a;->a()V

    .line 164
    :cond_e3
    return-void

    :sswitch_data_e4
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_78
        -0x660bb426 -> :sswitch_6e
        -0x23e7db20 -> :sswitch_64
        0x15c4b -> :sswitch_5a
        0x1ece50 -> :sswitch_50
        0x251fa0 -> :sswitch_46
        0x26fcf4 -> :sswitch_3c
        0x45d8cac -> :sswitch_31
        0x259adc0f -> :sswitch_26
        0x3a35353b -> :sswitch_1c
        0x7fa995e7 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_bc
        :pswitch_bc
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_a9
        :pswitch_9e
        :pswitch_93
        :pswitch_93
        :pswitch_88
    .end packed-switch
.end method
