.class final Lcom/JoyFramework/d/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/JoyFramework/d/ba$b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V
    .registers 4

    .prologue
    .line 144
    iput-object p1, p0, Lcom/JoyFramework/d/bb;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/d/bb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/d/bb;->c:Lcom/JoyFramework/d/ba$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/JoyFramework/d/bb;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bb;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/d/bb;->c:Lcom/JoyFramework/d/ba$b;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 148
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/JoyFramework/d/bb;->c:Lcom/JoyFramework/d/ba$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/ba$b;->b()V

    .line 153
    return-void
.end method
