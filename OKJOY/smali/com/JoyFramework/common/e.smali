.class final Lcom/JoyFramework/common/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/common/PaymentInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V
    .registers 3

    .prologue
    .line 103
    iput-object p1, p0, Lcom/JoyFramework/common/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/common/e;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/common/e;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/common/e;->b:Lcom/JoyFramework/common/PaymentInfo;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V

    .line 107
    return-void
.end method
