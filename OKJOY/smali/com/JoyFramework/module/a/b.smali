.class Lcom/JoyFramework/module/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/common/ExtraDataInfo;

.field final synthetic b:Lcom/JoyFramework/module/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/a;Lcom/JoyFramework/common/ExtraDataInfo;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/JoyFramework/module/a/b;->b:Lcom/JoyFramework/module/a/a;

    iput-object p2, p0, Lcom/JoyFramework/module/a/b;->a:Lcom/JoyFramework/common/ExtraDataInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/a/b;->a:Lcom/JoyFramework/common/ExtraDataInfo;

    invoke-virtual {v0}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string v0, ""

    .line 68
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5e

    :cond_10
    :goto_10
    packed-switch v1, :pswitch_data_6c

    .line 79
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 80
    const-string v1, "$$$$"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_35
    return-void

    .line 68
    :sswitch_36
    const-string v3, "createRole"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :sswitch_40
    const-string v3, "enterServer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    :sswitch_4a
    const-string v3, "levelUp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x2

    goto :goto_10

    .line 70
    :pswitch_54
    const-string v0, "\u521b\u89d2\u5931\u8d25"

    goto :goto_13

    .line 73
    :pswitch_57
    const-string v0, "\u8fdb\u5165\u670d\u52a1\u5668\u5931\u8d25"

    goto :goto_13

    .line 76
    :pswitch_5a
    const-string v0, "\u89d2\u8272\u5347\u7ea7\u5931\u8d25"

    goto :goto_13

    .line 68
    nop

    :sswitch_data_5e
    .sparse-switch
        0x28fa03b -> :sswitch_40
        0x428d53f -> :sswitch_4a
        0x519bb792 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_54
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/a/b;->a:Lcom/JoyFramework/common/ExtraDataInfo;

    invoke-virtual {v0}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string v0, ""

    .line 88
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6c

    :cond_10
    :goto_10
    packed-switch v1, :pswitch_data_7a

    .line 99
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 100
    const-string v1, "$$$$"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1e
    sget-boolean v0, Lcom/JoyFramework/a/a;->H:Z

    if-eqz v0, :cond_41

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/module/a/b;->a:Lcom/JoyFramework/common/ExtraDataInfo;

    invoke-virtual {v0}, Lcom/JoyFramework/common/ExtraDataInfo;->getScene_Id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "levelUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 108
    :try_start_30
    iget-object v0, p0, Lcom/JoyFramework/module/a/b;->a:Lcom/JoyFramework/common/ExtraDataInfo;

    invoke-virtual {v0}, Lcom/JoyFramework/common/ExtraDataInfo;->getLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/applog/GameReportHelper;->onEventUpdateLevel(I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_69

    .line 117
    :cond_41
    :goto_41
    return-void

    .line 88
    :sswitch_42
    const-string v3, "createRole"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :sswitch_4c
    const-string v3, "enterServer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    :sswitch_56
    const-string v3, "levelUp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x2

    goto :goto_10

    .line 90
    :pswitch_60
    const-string v0, "\u521b\u89d2\u6210\u529f"

    goto :goto_13

    .line 93
    :pswitch_63
    const-string v0, "\u8fdb\u5165\u670d\u52a1\u5668\u6210\u529f"

    goto :goto_13

    .line 96
    :pswitch_66
    const-string v0, "\u89d2\u8272\u5347\u7ea7\u6210\u529f"

    goto :goto_13

    .line 112
    :catch_69
    move-exception v0

    goto :goto_41

    .line 88
    nop

    :sswitch_data_6c
    .sparse-switch
        0x28fa03b -> :sswitch_4c
        0x428d53f -> :sswitch_56
        0x519bb792 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_60
        :pswitch_63
        :pswitch_66
    .end packed-switch
.end method
