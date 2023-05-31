.class Lcom/JoyFramework/module/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/a/h;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/h;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/JoyFramework/module/a/i;->a:Lcom/JoyFramework/module/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/JoyFramework/module/a/i;->a:Lcom/JoyFramework/module/a/h;

    iget-object v0, v0, Lcom/JoyFramework/module/a/h;->b:Lcom/JoyFramework/module/a/c;

    invoke-static {v0}, Lcom/JoyFramework/module/a/c;->b(Lcom/JoyFramework/module/a/c;)V

    .line 207
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 211
    return-void
.end method
