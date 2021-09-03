.class Lcom/tapsdk/moment/view/MomentDialog$29;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tds/common/permission/RequestPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->openImageChooserActivity([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;

.field final synthetic val$acceptTypes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 909
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->val$acceptTypes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "allGranted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p2, "grantedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "deniedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_30

    .line 913
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1600(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 914
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1600(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 915
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1602(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 917
    :cond_19
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1800(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 918
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1800(Lcom/tapsdk/moment/view/MomentDialog;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 919
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->uploadMessageAboveL:Landroid/webkit/ValueCallback;
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$1802(Lcom/tapsdk/moment/view/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 921
    :cond_2f
    return-void

    .line 923
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->val$acceptTypes:[Ljava/lang/String;

    if-eqz v1, :cond_4a

    array-length v2, v1

    if-lez v2, :cond_4a

    .line 926
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4f

    .line 928
    :cond_4a
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    :goto_4f
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "Image Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/tapsdk/moment/view/MomentDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 931
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$29;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const/4 v2, 0x1

    # setter for: Lcom/tapsdk/moment/view/MomentDialog;->isRequestFile:Z
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$2002(Lcom/tapsdk/moment/view/MomentDialog;Z)Z

    .line 932
    return-void
.end method
