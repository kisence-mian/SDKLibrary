.class final Lcom/JoyFramework/common/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/common/IRealNameCallbackAdapter;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V
    .registers 3

    .prologue
    .line 545
    iput-object p1, p0, Lcom/JoyFramework/common/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/common/h;->b:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 548
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/common/h;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/common/h;->b:Lcom/JoyFramework/common/IRealNameCallbackAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V

    .line 549
    return-void
.end method
