.class Ltool/HotUpdate$3;
.super Ljava/lang/Object;
.source "HotUpdate.java"

# interfaces
.implements LsdkInterface/tool/ActResultRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/HotUpdate;->InstallAPK(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltool/HotUpdate;


# direct methods
.method constructor <init>(Ltool/HotUpdate;)V
    .registers 2
    .param p1, "this$0"    # Ltool/HotUpdate;

    .line 273
    iput-object p1, p0, Ltool/HotUpdate$3;->this$0:Ltool/HotUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Ltool/HotUpdate$3;->this$0:Ltool/HotUpdate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartForResult resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltool/HotUpdate;->SendLog(Ljava/lang/String;)V

    .line 279
    const/4 v0, -0x1

    if-ne p2, v0, :cond_22

    .line 281
    iget-object v0, p0, Ltool/HotUpdate$3;->this$0:Ltool/HotUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltool/HotUpdate;->SendInstallResult(Z)V

    goto :goto_28

    .line 285
    :cond_22
    iget-object v0, p0, Ltool/HotUpdate$3;->this$0:Ltool/HotUpdate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltool/HotUpdate;->SendInstallResult(Z)V

    .line 287
    :goto_28
    return-void
.end method
