.class public Landroid/support/v7/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    iput p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 79
    return-void
.end method

.method private getResourcesInternal()Landroid/content/res/Resources;
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_e

    .line 114
    iget-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_11

    .line 115
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 121
    :cond_e
    :goto_e
    iget-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    return-object v1

    .line 116
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_e

    .line 117
    iget-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Landroid/support/v7/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "resContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_e
.end method

.method private initializeTheme()V
    .registers 5

    .prologue
    .line 181
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_28

    const/4 v0, 0x1

    .line 182
    .local v0, "first":Z
    :goto_5
    if-eqz v0, :cond_20

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 184
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 185
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_20

    .line 186
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 189
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_20
    iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/support/v7/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 190
    return-void

    .line 181
    .end local v0    # "first":Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_c

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getResources() or getAssets() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_c
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_18

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Override configuration has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_18
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 105
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 157
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1a

    .line 158
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 160
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 162
    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 151
    :goto_6
    return-object v0

    .line 146
    :cond_7
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v0, :cond_f

    .line 147
    sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_Light:I

    iput v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 149
    :cond_f
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 151
    iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_6
.end method

.method public getThemeResId()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 178
    return-void
.end method

.method public setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .prologue
    .line 126
    iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-eq v0, p1, :cond_9

    .line 127
    iput p1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 128
    invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 130
    :cond_9
    return-void
.end method
