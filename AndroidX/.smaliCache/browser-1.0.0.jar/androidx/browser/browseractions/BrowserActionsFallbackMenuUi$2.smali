.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->initMenuView(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

.field final synthetic val$urlTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    .line 107
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_19

    .line 111
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_24

    .line 114
    :cond_19
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 115
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    :goto_24
    return-void
.end method
