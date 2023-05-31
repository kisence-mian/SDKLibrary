.class Lcom/taptap/pay/sdk/library/TapIconTitle;
.super Ljava/lang/Object;
.source "TapIconTitle.java"


# instance fields
.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapIconTitle;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, Lcom/taptap/pay/sdk/library/TapIconTitle;->label:Ljava/lang/CharSequence;

    .line 15
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapIconTitle;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p2, p0, Lcom/taptap/pay/sdk/library/TapIconTitle;->label:Ljava/lang/CharSequence;

    .line 17
    return-void
.end method


# virtual methods
.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapIconTitle;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapIconTitle;->label:Ljava/lang/CharSequence;

    return-object v0
.end method
