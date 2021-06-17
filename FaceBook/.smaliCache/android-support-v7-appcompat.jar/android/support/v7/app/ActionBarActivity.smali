.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActionBarActivity.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$Callback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroid/support/v7/app/ActionBarDrawerToggle$TmpDelegateProvider;


# instance fields
.field private mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;
    .registers 2

    .line 556
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;

    if-nez v0, :cond_a

    .line 557
    invoke-static {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->createDelegate(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;

    .line 559
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 117
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .line 504
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 466
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getV7DrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .line 513
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getV7DrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 206
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->supportInvalidateOptionsMenu()V

    .line 207
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 297
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 298
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 300
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public final onContentChanged()V
    .registers 2

    .line 534
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onContentChanged()V

    .line 535
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 233
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .line 146
    if-nez p1, :cond_b

    .line 147
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 149
    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;

    .line 385
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 386
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 547
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 549
    return-object v0

    .line 552
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivityDelegate;->createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDestroy()V
    .registers 2

    .line 169
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 170
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->destroy()V

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 524
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 525
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 518
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 155
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 160
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_24

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_24

    .line 162
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->onSupportNavigateUp()Z

    move-result v1

    return v1

    .line 164
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 248
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 243
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    .line 244
    return-void
.end method

.method protected onPostResume()V
    .registers 2

    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 141
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPostResume()V

    .line 142
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 256
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 238
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;

    .line 404
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 135
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onStop()V

    .line 136
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .line 225
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .line 216
    return-void
.end method

.method public onSupportContentChanged()V
    .registers 1

    .line 542
    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 4

    .line 430
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 432
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_27

    .line 433
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 434
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 435
    .local v1, "b":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Landroid/support/v7/app/ActionBarActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 436
    invoke-virtual {p0, v1}, Landroid/support/v7/app/ActionBarActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 437
    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 440
    :try_start_19
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 445
    goto :goto_21

    .line 441
    :catch_1d
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 446
    .end local v1    # "b":Landroid/support/v4/app/TaskStackBuilder;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_21
    goto :goto_25

    .line 449
    :cond_22
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    .line 451
    :goto_25
    const/4 v1, 0x1

    return v1

    .line 453
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 175
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 176
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 102
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setContentView(I)V

    .line 103
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .registers 3
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 93
    return-void
.end method

.method public setSupportProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .line 358
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgress(I)V

    .line 359
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .registers 3
    .param p1, "indeterminate"    # Z

    .line 342
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminate(Z)V

    .line 343
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 327
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 328
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 313
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgressBarVisibility(Z)V

    .line 314
    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .line 228
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method superAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 272
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method

.method superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "frameworkMenu"    # Landroid/view/Menu;

    .line 276
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 292
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 288
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 289
    return-void
.end method

.method superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 284
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superSetContentView(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 260
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 261
    return-void
.end method

.method superSetContentView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 264
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 268
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 2

    .line 199
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->supportInvalidateOptionsMenu()V

    .line 200
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .registers 2
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 499
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 500
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .line 194
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->supportRequestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 483
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
