.class Lcom/taptap/TapTapSDK$1;
.super Ljava/lang/Object;
.source "TapTapSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/TapTapSDK;->Init(Lorg/json/JSONObject;)V
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

    .line 57
    iput-object p1, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init run pid >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init run thread id >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init run main thread id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    invoke-virtual {v0}, Lcom/taptap/TapTapSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    iget-object v1, v1, Lcom/taptap/TapTapSDK;->Client_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taptap/sdk/TapLoginHelper;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/taptap/TapTapSDK$1$1;

    invoke-direct {v0, p0}, Lcom/taptap/TapTapSDK$1$1;-><init>(Lcom/taptap/TapTapSDK$1;)V

    .line 93
    .local v0, "loginCallback":Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;
    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->registerLoginCallback(Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V

    .line 95
    iget-object v1, p0, Lcom/taptap/TapTapSDK$1;->this$0:Lcom/taptap/TapTapSDK;

    const-string v2, "TapTapSDK init finish "

    invoke-virtual {v1, v2}, Lcom/taptap/TapTapSDK;->SendLog(Ljava/lang/String;)V

    .line 96
    return-void
.end method
