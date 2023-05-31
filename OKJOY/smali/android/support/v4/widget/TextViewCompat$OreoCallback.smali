.class Landroid/support/v4/widget/TextViewCompat$OreoCallback;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OreoCallback"
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    .line 549
    iput-object p2, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    .line 551
    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "textView11"    # Landroid/widget/TextView;

    .prologue
    .line 657
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 658
    invoke-direct {p0, p2}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->isEditable(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 659
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 658
    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v2, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    instance-of v0, p1, Landroid/app/Activity;

    .line 630
    .local v0, "canStartActivityForResult":Z
    if-nez v0, :cond_a

    .line 640
    :cond_9
    return-object v2

    .line 634
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 635
    .local v3, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 636
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1, p1}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 637
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .registers 3
    .param p1, "textView11"    # Landroid/widget/TextView;

    .prologue
    .line 663
    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_12

    .line 664
    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 665
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 644
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    .line 651
    :cond_11
    :goto_11
    return v0

    .line 647
    :cond_12
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_11

    .line 650
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 651
    invoke-virtual {p2, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    :cond_28
    move v0, v1

    goto :goto_11
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .registers 15
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 575
    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 576
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 578
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    if-nez v8, :cond_2e

    .line 579
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    .line 581
    :try_start_11
    const-string v8, "com.android.internal.view.menu.MenuBuilder"

    .line 582
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 583
    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    const-string v9, "removeItemAt"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 584
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 585
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_2e} :catch_6e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_2e} :catch_c0

    .line 594
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    if-eqz v8, :cond_79

    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 595
    invoke-virtual {v8, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    iget-object v6, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 599
    .local v6, "removeItemAtMethod":Ljava/lang/reflect/Method;
    :goto_3c
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_42
    if-ltz v2, :cond_8e

    .line 600
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 601
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_6b

    const-string v8, "android.intent.action.PROCESS_TEXT"

    .line 602
    invoke-interface {v4}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 603
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_6b} :catch_bc
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_6b} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_6b} :catch_be

    .line 599
    :cond_6b
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    .line 586
    .end local v2    # "i":I
    .end local v4    # "item":Landroid/view/MenuItem;
    .end local v6    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    :catch_6e
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_6f
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    .line 588
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 589
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    goto :goto_2e

    .line 597
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_79
    :try_start_79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "removeItemAt"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 598
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_79 .. :try_end_8a} :catch_bc
    .catch Ljava/lang/IllegalAccessException; {:try_start_79 .. :try_end_8a} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_79 .. :try_end_8a} :catch_be

    move-result-object v6

    goto :goto_3c

    .line 606
    :catch_8c
    move-exception v1

    .line 624
    :cond_8d
    :goto_8d
    return-void

    .line 615
    .restart local v2    # "i":I
    .restart local v6    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    :cond_8e
    invoke-direct {p0, v0, v5}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    .line 616
    .local v7, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    :goto_93
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_8d

    .line 617
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 618
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v2, 0x64

    .line 620
    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 618
    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    .line 621
    invoke-direct {p0, v3, v9}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    .line 622
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 606
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    .end local v7    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_bc
    move-exception v1

    goto :goto_8d

    :catch_be
    move-exception v1

    goto :goto_8d

    .line 586
    :catch_c0
    move-exception v1

    goto :goto_6f
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 572
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 560
    invoke-direct {p0, p2}, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    .line 561
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
