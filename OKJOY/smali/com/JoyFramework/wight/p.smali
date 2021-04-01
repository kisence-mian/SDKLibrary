.class Lcom/JoyFramework/wight/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/wight/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/n;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 138
    iput-object p1, p0, Lcom/JoyFramework/wight/p;->b:Lcom/JoyFramework/wight/n;

    iput-object p2, p0, Lcom/JoyFramework/wight/p;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/JoyFramework/wight/p;->b:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/JoyFramework/wight/p;->b:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 142
    iget-object v0, p0, Lcom/JoyFramework/wight/p;->a:Landroid/content/Context;

    const-string v1, "key_saveUsers_of_phone"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/wight/p;->b:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/wight/p;->b:Lcom/JoyFramework/wight/n;

    invoke-static {v0}, Lcom/JoyFramework/wight/n;->b(Lcom/JoyFramework/wight/n;)V

    .line 146
    :cond_29
    return-void
.end method
