.class Lcom/JoyFramework/module/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/b/c/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/c/a;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/b;->a:Lcom/JoyFramework/module/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/b;->a:Lcom/JoyFramework/module/b/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/b/c/b;->a:Lcom/JoyFramework/module/b/c/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/b/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/b/c/a;->b(Landroid/app/Activity;)V

    .line 70
    return-void
.end method
