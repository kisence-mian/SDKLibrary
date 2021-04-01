.class Lcom/JoyFramework/module/user/fragment/account/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/h;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/h;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->finish()V

    .line 89
    return-void
.end method
