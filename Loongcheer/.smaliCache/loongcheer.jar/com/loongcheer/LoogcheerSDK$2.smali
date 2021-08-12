.class Lcom/loongcheer/LoogcheerSDK$2;
.super Ljava/lang/Object;
.source "LoogcheerSDK.java"

# interfaces
.implements Lcom/loongcheer/appsflyersdk/callback/PlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/LoogcheerSDK;->AfPlayValidation(Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/LoogcheerSDK;


# direct methods
.method constructor <init>(Lcom/loongcheer/LoogcheerSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/LoogcheerSDK;

    .line 212
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$2;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateInApp()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$2;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "AfPlayValidation onValidateInApp"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onValidateInAppFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$2;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AfPlayValidation onValidateInAppFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 221
    return-void
.end method
