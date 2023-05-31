.class Lcom/JoyFramework/wight/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/wight/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/a;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 141
    iput-object p1, p0, Lcom/JoyFramework/wight/c;->b:Lcom/JoyFramework/wight/a;

    iput-object p2, p0, Lcom/JoyFramework/wight/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/JoyFramework/wight/c;->b:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/JoyFramework/wight/c;->b:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/wight/c;->a:Landroid/content/Context;

    const-string v1, "key_saveUsers"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/JoyFramework/wight/c;->b:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/JoyFramework/wight/c;->b:Lcom/JoyFramework/wight/a;

    invoke-static {v0}, Lcom/JoyFramework/wight/a;->b(Lcom/JoyFramework/wight/a;)V

    .line 149
    :cond_29
    return-void
.end method
