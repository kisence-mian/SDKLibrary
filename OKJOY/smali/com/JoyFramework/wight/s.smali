.class Lcom/JoyFramework/wight/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/JoyFramework/wight/s;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/s;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog;->dismiss()V

    .line 67
    return-void
.end method
