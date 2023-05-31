.class Lcom/taptap/TapTapSDK$2;
.super Ljava/lang/Object;
.source "TapTapSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/TapTapSDK;->Login(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/TapTapSDK;


# direct methods
.method constructor <init>(Lcom/taptap/TapTapSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/TapTapSDK;

    .line 115
    iput-object p1, p0, Lcom/taptap/TapTapSDK$2;->this$0:Lcom/taptap/TapTapSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/taptap/TapTapSDK$2;->this$0:Lcom/taptap/TapTapSDK;

    const-string v1, "UI\u4e3b\u7ebf\u7a0b\u53bb\u6267\u884c "

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/taptap/TapTapSDK$2;->this$0:Lcom/taptap/TapTapSDK;

    invoke-virtual {v0}, Lcom/taptap/TapTapSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "public_profile"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/TapLoginHelper;->startTapLogin(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/taptap/TapTapSDK$2;->this$0:Lcom/taptap/TapTapSDK;

    const-string v1, "TapTap login finish"

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 124
    return-void
.end method
