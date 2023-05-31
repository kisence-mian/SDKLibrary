.class Lcom/JoyFramework/wight/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/JoyFramework/wight/t;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/JoyFramework/wight/t;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->a(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/wight/t;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->a(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;

    move-result-object v1

    iget-object v0, p0, Lcom/JoyFramework/wight/t;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->b(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/m;

    invoke-interface {v1, v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;->a(Lcom/JoyFramework/remote/bean/m;)V

    .line 86
    :cond_1d
    iget-object v0, p0, Lcom/JoyFramework/wight/t;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->dismiss()V

    .line 87
    return-void
.end method
