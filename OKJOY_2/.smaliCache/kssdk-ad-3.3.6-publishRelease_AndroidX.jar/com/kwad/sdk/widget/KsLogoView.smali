.class public Lcom/kwad/sdk/widget/KsLogoView;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_logo_layout:I

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/widget/KsLogoView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_logo_text:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/widget/KsLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_logo_icon:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/widget/KsLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kwad/sdk/widget/KsLogoView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-boolean v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->c:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_logo_gray:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    const v0, -0x636364

    goto :goto_4f

    :cond_3b
    iget-object v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_logo_white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    const v0, -0x66000001

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 8

    sget v0, Lcom/kwad/sdk/R$id;->ksad_logo_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/widget/KsLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->r(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    :cond_26
    iget-object v2, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2b
    iget-boolean v2, p0, Lcom/kwad/sdk/widget/KsLogoView;->c:Z

    if-eqz v2, :cond_34

    iget-object v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adGrayMarkIcon:Ljava/lang/String;

    goto :goto_38

    :cond_34
    iget-object v2, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adMarkIcon:Ljava/lang/String;

    :goto_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v3, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-static {v3, v2, p1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadFeeImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4e

    :cond_49
    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4e
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-object p1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceDescription:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->r(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/widget/KsLogoView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->c:Z

    if-eqz v0, :cond_83

    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_logo_gray:I

    goto :goto_85

    :cond_83
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_logo_white:I

    :goto_85
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/widget/KsLogoView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8e
    return-void
.end method
