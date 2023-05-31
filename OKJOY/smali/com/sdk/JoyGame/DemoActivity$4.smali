.class Lcom/sdk/JoyGame/DemoActivity$4;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/IShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/JoyGame/DemoActivity;->share(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdk/JoyGame/DemoActivity;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sdk/JoyGame/DemoActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$4;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shared(Lcom/JoyFramework/common/IShareCallback$Type;)V
    .registers 5
    .param p1, "type"    # Lcom/JoyFramework/common/IShareCallback$Type;

    .prologue
    const/4 v2, 0x0

    .line 299
    sget-object v0, Lcom/sdk/JoyGame/DemoActivity$8;->$SwitchMap$com$JoyFramework$common$IShareCallback$Type:[I

    invoke-virtual {p1}, Lcom/JoyFramework/common/IShareCallback$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 319
    :goto_c
    return-void

    .line 301
    :pswitch_d
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$4;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u8c03\u8d77QQ\u5206\u4eab\u540e\u8fd4\u56de"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 304
    :pswitch_19
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$4;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u8c03\u8d77QQ\u7a7a\u95f4\u5206\u4eab\u540e\u8fd4\u56de"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 307
    :pswitch_25
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$4;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u8c03\u8d77\u5fae\u4fe1\u597d\u53cb\u5206\u4eab\u540e\u8fd4\u56de"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 310
    :pswitch_31
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$4;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u8c03\u8d77\u5fae\u4fe1\u670b\u53cb\u5708\u5206\u4eab\u540e\u8fd4\u56de"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 313
    :pswitch_3d
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$4;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u8c03\u8d77\u65b0\u6d6a\u5fae\u535a\u5206\u4eab\u540e\u8fd4\u56de"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 299
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_19
        :pswitch_25
        :pswitch_31
        :pswitch_3d
    .end packed-switch
.end method
