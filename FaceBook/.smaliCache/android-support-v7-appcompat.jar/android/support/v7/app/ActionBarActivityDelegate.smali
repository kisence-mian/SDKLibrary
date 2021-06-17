.class abstract Landroid/support/v7/app/ActionBarActivityDelegate;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegate"


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field final mActivity:Landroid/support/v7/app/ActionBarActivity;

.field final mDefaultWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 3
    .param p1, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegate$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegate$1;-><init>(Landroid/support/v7/app/ActionBarActivityDelegate;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mDefaultWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    .line 112
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 113
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    .line 114
    return-void
.end method

.method static createDelegate(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/ActionBarActivityDelegate;
    .registers 3
    .param p0, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    .line 51
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateHC;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateHC;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-object v0

    .line 53
    :cond_c
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-object v0
.end method


# virtual methods
.method abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract createSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method

.method abstract createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method final destroy()V
    .registers 2

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mIsDestroyed:Z

    .line 324
    return-void
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    .line 258
    const/4 v0, 0x0

    .line 261
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 262
    .local v1, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v1, :cond_b

    .line 263
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    :cond_b
    if-nez v0, :cond_f

    .line 267
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 269
    :cond_f
    return-object v0
.end method

.method final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .registers 3

    .line 228
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegate;Landroid/support/v7/app/ActionBarActivityDelegate$1;)V

    return-object v0
.end method

.method abstract getHomeAsUpIndicatorAttrId()I
.end method

.method getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    .line 141
    new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    .line 143
    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method final getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mHasActionBar:Z

    if-eqz v0, :cond_e

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_e

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->createSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 126
    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final getUiOptionsFromMetadata()Ljava/lang/String;
    .registers 6

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 242
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 245
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 246
    .local v2, "uiOptions":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_20

    .line 247
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.support.UI_OPTIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1f} :catch_21

    move-object v2, v3

    .line 249
    :cond_20
    return-object v2

    .line 250
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "uiOptions":Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 251
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionBarActivityDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    return-object v1
.end method

.method final getV7DrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .registers 3

    .line 232
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegate;Landroid/support/v7/app/ActionBarActivityDelegate$1;)V

    return-object v0
.end method

.method final getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    return-object v0
.end method

.method final isDestroyed()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mIsDestroyed:Z

    return v0
.end method

.method abstract onBackPressed()Z
.end method

.method abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method abstract onContentChanged()V
.end method

.method onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 147
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 155
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 156
    iput-boolean v3, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mHasActionBar:Z

    .line 158
    :cond_1c
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 159
    iput-boolean v3, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mOverlayActionBar:Z

    .line 161
    :cond_26
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 162
    iput-boolean v3, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mOverlayActionMode:Z

    .line 164
    :cond_30
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mIsFloating:Z

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    return-void

    .line 150
    :cond_3c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method abstract onCreatePanelView(I)Landroid/view/View;
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method abstract onPostResume()V
.end method

.method onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_d

    .line 202
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 204
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method abstract onStop()V
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method abstract setContentView(I)V
.end method

.method abstract setContentView(Landroid/view/View;)V
.end method

.method abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method protected final setSupportActionBar(Landroid/support/v7/app/ActionBar;)V
    .registers 2
    .param p1, "actionBar"    # Landroid/support/v7/app/ActionBar;

    .line 134
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 135
    return-void
.end method

.method abstract setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.end method

.method abstract setSupportProgress(I)V
.end method

.method abstract setSupportProgressBarIndeterminate(Z)V
.end method

.method abstract setSupportProgressBarIndeterminateVisibility(Z)V
.end method

.method abstract setSupportProgressBarVisibility(Z)V
.end method

.method final setWindowCallback(Landroid/support/v7/internal/app/WindowCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/support/v7/internal/app/WindowCallback;

    .line 312
    if-eqz p1, :cond_5

    .line 315
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    .line 316
    return-void

    .line 313
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method abstract startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method abstract supportInvalidateOptionsMenu()V
.end method

.method abstract supportRequestWindowFeature(I)Z
.end method
