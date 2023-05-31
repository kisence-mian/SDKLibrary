.class Lcom/JoyFramework/module/b/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/b/c/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/c/c;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/d;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/d;->a:Lcom/JoyFramework/module/b/c/c;

    iget-object v1, p0, Lcom/JoyFramework/module/b/c/d;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v1}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/b/c/c;->b(Landroid/app/Activity;)V

    .line 68
    return-void
.end method
