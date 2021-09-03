.class Lcom/tds/common/permission/ForwardSettingDialog$1;
.super Ljava/lang/Object;
.source "ForwardSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/permission/ForwardSettingDialog;->onStart()V
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

    .line 58
    iput-object p1, p0, Lcom/tds/common/permission/ForwardSettingDialog$1;->this$0:Lcom/tds/common/permission/ForwardSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 61
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
