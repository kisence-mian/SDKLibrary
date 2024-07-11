.class Ltool/HotUpdate$2;
.super Ljava/lang/Object;
.source "HotUpdate.java"

# interfaces
.implements LsdkInterface/tool/ActResultRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/HotUpdate;->openFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltool/HotUpdate;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Ltool/HotUpdate;Ljava/io/File;)V
    .registers 3
    .param p1, "this$0"    # Ltool/HotUpdate;

    .line 238
    iput-object p1, p0, Ltool/HotUpdate$2;->this$0:Ltool/HotUpdate;

    iput-object p2, p0, Ltool/HotUpdate$2;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Ltool/HotUpdate$2;->this$0:Ltool/HotUpdate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7533\u8bf7\u6743\u9650 resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltool/HotUpdate;->SendLog(Ljava/lang/String;)V

    .line 243
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1d

    if-nez p2, :cond_24

    .line 244
    :cond_1d
    iget-object v0, p0, Ltool/HotUpdate$2;->this$0:Ltool/HotUpdate;

    iget-object v1, p0, Ltool/HotUpdate$2;->val$f:Ljava/io/File;

    invoke-virtual {v0, v1}, Ltool/HotUpdate;->InstallAPK(Ljava/io/File;)V

    .line 246
    :cond_24
    return-void
.end method
