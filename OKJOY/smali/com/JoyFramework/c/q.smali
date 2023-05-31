.class Lcom/JoyFramework/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/JoyFramework/c/q;->b:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/JoyFramework/c/q;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->g(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/common/IPaymentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/c/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/IPaymentCallback;->paySuccess(Ljava/lang/String;)V

    .line 1818
    return-void
.end method
