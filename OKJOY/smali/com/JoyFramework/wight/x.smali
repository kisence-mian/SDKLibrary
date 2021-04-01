.class Lcom/JoyFramework/wight/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/UnderlinePageIndicator;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/JoyFramework/wight/x;->a:Lcom/JoyFramework/wight/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/JoyFramework/wight/x;->a:Lcom/JoyFramework/wight/UnderlinePageIndicator;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a(IZ)V

    .line 124
    iget-object v1, p0, Lcom/JoyFramework/wight/x;->a:Lcom/JoyFramework/wight/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a(Lcom/JoyFramework/wight/UnderlinePageIndicator;)Lcom/JoyFramework/wight/UnderlinePageIndicator$a;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 125
    iget-object v1, p0, Lcom/JoyFramework/wight/x;->a:Lcom/JoyFramework/wight/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a(Lcom/JoyFramework/wight/UnderlinePageIndicator;)Lcom/JoyFramework/wight/UnderlinePageIndicator$a;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator$a;->a(Landroid/view/View;I)V

    .line 127
    :cond_21
    return-void
.end method
