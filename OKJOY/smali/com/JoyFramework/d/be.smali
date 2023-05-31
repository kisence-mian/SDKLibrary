.class Lcom/JoyFramework/d/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/bd;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bd;)V
    .registers 2

    .prologue
    .line 335
    iput-object p1, p0, Lcom/JoyFramework/d/be;->a:Lcom/JoyFramework/d/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/JoyFramework/d/be;->a:Lcom/JoyFramework/d/bd;

    iget-object v0, v0, Lcom/JoyFramework/d/bd;->a:Lcom/JoyFramework/d/ba$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/ba$b;->a()V

    .line 339
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/JoyFramework/d/be;->a:Lcom/JoyFramework/d/bd;

    iget-object v0, v0, Lcom/JoyFramework/d/bd;->a:Lcom/JoyFramework/d/ba$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/ba$b;->b()V

    .line 344
    return-void
.end method
