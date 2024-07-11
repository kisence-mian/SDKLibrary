.class public Landroidx/navigation/fragment/FragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "FragmentNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/FragmentNavigator$Extras;,
        Landroidx/navigation/fragment/FragmentNavigator$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_BACK_STACK_IDS:Ljava/lang/String; = "androidx-nav-fragment:navigator:backStackIds"

.field private static final TAG:Ljava/lang/String; = "FragmentNavigator"


# instance fields
.field private mBackStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerId:I

.field private final mContext:Landroid/content/Context;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "containerId"    # I

    .line 69
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 70
    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 72
    iput p3, p0, Landroidx/navigation/fragment/FragmentNavigator;->mContainerId:I

    .line 73
    return-void
.end method

.method private generateBackStackName(II)Ljava/lang/String;
    .registers 5
    .param p1, "backStackIndex"    # I
    .param p2, "destId"    # I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDestId(Ljava/lang/String;)I
    .registers 7
    .param p1, "backStackName"    # Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    .line 259
    .local v1, "split":[Ljava/lang/String;
    :goto_c
    array-length v2, v1

    const/4 v3, 0x2

    const-string v4, "Invalid back stack entry on the NavHostFragment\'s back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph."

    if-ne v2, v3, :cond_26

    .line 267
    :try_start_12
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1e} :catch_1f

    return v0

    .line 269
    :catch_1f
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->createDestination()Landroidx/navigation/fragment/FragmentNavigator$Destination;

    move-result-object v0

    return-object v0
.end method

.method public createDestination()Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .registers 2

    .line 107
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public instantiateFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1, p3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .registers 5

    .line 58
    check-cast p1, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/fragment/FragmentNavigator;->navigate(Landroidx/navigation/fragment/FragmentNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public navigate(Landroidx/navigation/fragment/FragmentNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .registers 23
    .param p1, "destination"    # Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_17

    .line 154
    const-string v3, "FragmentNavigator"

    const-string v5, "Ignoring navigate() call: FragmentManager has already saved its state"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v4

    .line 158
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "className":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3b

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Landroidx/navigation/fragment/FragmentNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    :cond_3b
    iget-object v6, v0, Landroidx/navigation/fragment/FragmentNavigator;->mContext:Landroid/content/Context;

    iget-object v7, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v6, v7, v3, v1}, Landroidx/navigation/fragment/FragmentNavigator;->instantiateFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 164
    .local v6, "frag":Landroidx/fragment/app/Fragment;
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 165
    iget-object v7, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 167
    .local v7, "ft":Landroidx/fragment/app/FragmentTransaction;
    const/4 v8, -0x1

    if-eqz p3, :cond_54

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result v9

    goto :goto_55

    :cond_54
    const/4 v9, -0x1

    .line 168
    .local v9, "enterAnim":I
    :goto_55
    if-eqz p3, :cond_5c

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result v10

    goto :goto_5d

    :cond_5c
    const/4 v10, -0x1

    .line 169
    .local v10, "exitAnim":I
    :goto_5d
    if-eqz p3, :cond_64

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v11

    goto :goto_65

    :cond_64
    const/4 v11, -0x1

    .line 170
    .local v11, "popEnterAnim":I
    :goto_65
    if-eqz p3, :cond_6c

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result v12

    goto :goto_6d

    :cond_6c
    const/4 v12, -0x1

    .line 171
    .local v12, "popExitAnim":I
    :goto_6d
    if-ne v9, v8, :cond_75

    if-ne v10, v8, :cond_75

    if-ne v11, v8, :cond_75

    if-eq v12, v8, :cond_90

    .line 172
    :cond_75
    if-eq v9, v8, :cond_79

    move v13, v9

    goto :goto_7a

    :cond_79
    const/4 v13, 0x0

    :goto_7a
    move v9, v13

    .line 173
    if-eq v10, v8, :cond_7f

    move v13, v10

    goto :goto_80

    :cond_7f
    const/4 v13, 0x0

    :goto_80
    move v10, v13

    .line 174
    if-eq v11, v8, :cond_85

    move v13, v11

    goto :goto_86

    :cond_85
    const/4 v13, 0x0

    :goto_86
    move v11, v13

    .line 175
    if-eq v12, v8, :cond_8b

    move v8, v12

    goto :goto_8c

    :cond_8b
    const/4 v8, 0x0

    :goto_8c
    move v12, v8

    .line 176
    invoke-virtual {v7, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 179
    :cond_90
    iget v8, v0, Landroidx/navigation/fragment/FragmentNavigator;->mContainerId:I

    invoke-virtual {v7, v8, v6}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 180
    invoke-virtual {v7, v6}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getId()I

    move-result v8

    .line 183
    .local v8, "destId":I
    iget-object v13, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    .line 185
    .local v13, "initialNavigation":Z
    const/4 v14, 0x1

    if-eqz p3, :cond_bd

    if-nez v13, :cond_bd

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v15

    if-eqz v15, :cond_bd

    iget-object v15, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 187
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v8, :cond_bd

    const/4 v5, 0x1

    goto :goto_be

    :cond_bd
    nop

    .line 190
    .local v5, "isSingleTopReplacement":Z
    :goto_be
    if-eqz v13, :cond_c2

    .line 191
    const/4 v15, 0x1

    .local v15, "isAdded":Z
    goto :goto_107

    .line 192
    .end local v15    # "isAdded":Z
    :cond_c2
    if-eqz v5, :cond_f7

    .line 194
    iget-object v15, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v15}, Ljava/util/ArrayDeque;->size()I

    move-result v15

    if-le v15, v14, :cond_f5

    .line 199
    iget-object v15, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v4, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    iget-object v14, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v0, v4, v14}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v4

    .line 199
    const/4 v14, 0x1

    invoke-virtual {v15, v4, v14}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 202
    iget-object v4, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-direct {v0, v4, v8}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 204
    :cond_f5
    const/4 v15, 0x0

    .restart local v15    # "isAdded":Z
    goto :goto_107

    .line 206
    .end local v15    # "isAdded":Z
    :cond_f7
    iget-object v4, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    const/4 v14, 0x1

    add-int/2addr v4, v14

    invoke-direct {v0, v4, v8}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 207
    const/4 v15, 0x1

    .line 209
    .restart local v15    # "isAdded":Z
    :goto_107
    instance-of v4, v2, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    if-eqz v4, :cond_13e

    .line 210
    move-object v4, v2

    check-cast v4, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    .line 211
    .local v4, "extras":Landroidx/navigation/fragment/FragmentNavigator$Extras;
    invoke-virtual {v4}, Landroidx/navigation/fragment/FragmentNavigator$Extras;->getSharedElements()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 212
    .local v16, "sharedElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Landroid/view/View;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 213
    .end local v16    # "sharedElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    goto :goto_11a

    .line 215
    .end local v4    # "extras":Landroidx/navigation/fragment/FragmentNavigator$Extras;
    :cond_13e
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    .line 216
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 218
    if-eqz v15, :cond_151

    .line 219
    iget-object v1, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 220
    return-object p1

    .line 222
    :cond_151
    const/4 v1, 0x0

    return-object v1
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 241
    if-eqz p1, :cond_21

    .line 242
    const-string v0, "androidx-nav-fragment:navigator:backStackIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 243
    .local v0, "backStack":[I
    if-eqz v0, :cond_21

    .line 244
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 245
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget v3, v0, v2

    .line 246
    .local v3, "destId":I
    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v3    # "destId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 250
    .end local v0    # "backStack":[I
    :cond_21
    return-void
.end method

.method public onSaveState()Landroid/os/Bundle;
    .registers 8

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 231
    .local v1, "backStack":[I
    const/4 v2, 0x0

    .line 232
    .local v2, "index":I
    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 233
    .local v4, "id":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 234
    .end local v4    # "id":Ljava/lang/Integer;
    move v2, v5

    goto :goto_14

    .line 235
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_2a
    const-string v3, "androidx-nav-fragment:navigator:backStackIds"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 236
    return-object v0
.end method

.method public popBackStack()Z
    .registers 4

    .line 89
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 90
    return v1

    .line 92
    :cond_a
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 93
    const-string v0, "FragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v1

    .line 97
    :cond_1a
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 100
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 101
    return v2
.end method
