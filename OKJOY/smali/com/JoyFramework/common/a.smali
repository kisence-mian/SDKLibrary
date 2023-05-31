.class final Lcom/JoyFramework/common/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/common/InitListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/common/LoginListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcom/JoyFramework/common/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/common/a;->b:Lcom/JoyFramework/common/LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    return-void
.end method

.method public initSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/JoyFramework/common/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/JoyFramework/common/b;

    invoke-direct {v1, p0}, Lcom/JoyFramework/common/b;-><init>(Lcom/JoyFramework/common/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
