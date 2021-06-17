.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserActionsFallbackMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    .line 42
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 47
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 52
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/browser/browseractions/BrowserActionItem;

    .line 64
    .local v0, "menuItem":Landroidx/browser/browseractions/BrowserActionItem;
    const/4 v1, 0x0

    if-nez p2, :cond_34

    .line 65
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/browser/R$layout;->browser_actions_context_menu_row:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;

    invoke-direct {v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;-><init>()V

    .line 68
    .local v2, "viewHolder":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    sget v3, Landroidx/browser/R$id;->browser_actions_menu_item_icon:I

    .line 69
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mIcon:Landroid/widget/ImageView;

    .line 70
    sget v3, Landroidx/browser/R$id;->browser_actions_menu_item_text:I

    .line 71
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mText:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3a

    .line 74
    .end local v2    # "viewHolder":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    :cond_34
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;

    .line 77
    .restart local v2    # "viewHolder":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    :goto_3a
    iget-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/browser/browseractions/BrowserActionItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v3

    if-eqz v3, :cond_5d

    .line 79
    iget-object v3, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v4

    .line 79
    invoke-static {v3, v4, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_62

    .line 83
    :cond_5d
    iget-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :goto_62
    return-object p2
.end method
