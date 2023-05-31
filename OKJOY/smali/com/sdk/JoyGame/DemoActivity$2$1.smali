.class Lcom/sdk/JoyGame/DemoActivity$2$1;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/IPaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/JoyGame/DemoActivity$2;->initSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdk/JoyGame/DemoActivity$2;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sdk/JoyGame/DemoActivity$2;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$2$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paySuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "billNo"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$2$1;->this$1:Lcom/sdk/JoyGame/DemoActivity$2;

    iget-object v0, v0, Lcom/sdk/JoyGame/DemoActivity$2;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method
