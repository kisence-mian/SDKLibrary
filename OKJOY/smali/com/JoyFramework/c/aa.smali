.class Lcom/JoyFramework/c/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/a/n$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/common/LoginListener;

.field final synthetic c:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 4

    .prologue
    .line 780
    iput-object p1, p0, Lcom/JoyFramework/c/aa;->c:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/aa;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/JoyFramework/c/aa;->b:Lcom/JoyFramework/common/LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 783
    if-eqz p1, :cond_13

    .line 785
    const-string v0, "success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 787
    iget-object v0, p0, Lcom/JoyFramework/c/aa;->c:Lcom/JoyFramework/c/e;

    iget-object v1, p0, Lcom/JoyFramework/c/aa;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/c/aa;->b:Lcom/JoyFramework/common/LoginListener;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    .line 789
    :cond_13
    return-void
.end method
