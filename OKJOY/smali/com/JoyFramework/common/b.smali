.class Lcom/JoyFramework/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/JoyFramework/common/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/common/a;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/JoyFramework/common/b;->a:Lcom/JoyFramework/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 53
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/common/b;->a:Lcom/JoyFramework/common/a;

    iget-object v1, v1, Lcom/JoyFramework/common/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/common/b;->a:Lcom/JoyFramework/common/a;

    iget-object v2, v2, Lcom/JoyFramework/common/a;->b:Lcom/JoyFramework/common/LoginListener;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    .line 54
    return-void
.end method
