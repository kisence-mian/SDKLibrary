.class Lcom/JoyFramework/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/y;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/y;)V
    .registers 2

    .prologue
    .line 657
    iput-object p1, p0, Lcom/JoyFramework/c/z;->a:Lcom/JoyFramework/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/JoyFramework/c/z;->a:Lcom/JoyFramework/c/y;

    iget-object v0, v0, Lcom/JoyFramework/c/y;->a:Lcom/JoyFramework/module/a/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/a/c;->a()V

    .line 661
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/JoyFramework/c/z;->a:Lcom/JoyFramework/c/y;

    iget-object v0, v0, Lcom/JoyFramework/c/y;->b:Lcom/JoyFramework/c/e;

    iget-object v1, p0, Lcom/JoyFramework/c/z;->a:Lcom/JoyFramework/c/y;

    iget-object v1, v1, Lcom/JoyFramework/c/y;->a:Lcom/JoyFramework/module/a/c;

    invoke-static {v0, v1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/module/a/c;)V

    .line 666
    return-void
.end method
