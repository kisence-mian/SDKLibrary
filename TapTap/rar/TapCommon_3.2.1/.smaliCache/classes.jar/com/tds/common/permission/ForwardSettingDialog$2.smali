.class Lcom/tds/common/permission/ForwardSettingDialog$2;
.super Ljava/lang/Object;
.source "ForwardSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/permission/ForwardSettingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/permission/ForwardSettingDialog;


# direct methods
.method constructor <init>(Lcom/tds/common/permission/ForwardSettingDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/permission/ForwardSettingDialog;

    .line 85
    iput-object p1, p0, Lcom/tds/common/permission/ForwardSettingDialog$2;->this$0:Lcom/tds/common/permission/ForwardSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/tds/common/permission/ForwardSettingDialog$2;->this$0:Lcom/tds/common/permission/ForwardSettingDialog;

    # getter for: Lcom/tds/common/permission/ForwardSettingDialog;->mCallback:Lcom/tds/common/permission/ForwardSettingCallback;
    invoke-static {v0}, Lcom/tds/common/permission/ForwardSettingDialog;->access$000(Lcom/tds/common/permission/ForwardSettingDialog;)Lcom/tds/common/permission/ForwardSettingCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/common/permission/ForwardSettingCallback;->forwardSetting()V

    .line 89
    iget-object v0, p0, Lcom/tds/common/permission/ForwardSettingDialog$2;->this$0:Lcom/tds/common/permission/ForwardSettingDialog;

    invoke-virtual {v0}, Lcom/tds/common/permission/ForwardSettingDialog;->dismiss()V

    .line 90
    return-void
.end method
