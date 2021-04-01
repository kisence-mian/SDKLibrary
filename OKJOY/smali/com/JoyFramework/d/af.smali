.class final Lcom/JoyFramework/d/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$d;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$d;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/JoyFramework/d/af;->a:Lcom/JoyFramework/d/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/JoyFramework/d/af;->a:Lcom/JoyFramework/d/e$d;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/JoyFramework/d/af;->a:Lcom/JoyFramework/d/e$d;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$d;->d()V

    .line 197
    :cond_9
    return-void
.end method
