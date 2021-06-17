.class public Landroidx/navigation/NavDestination;
.super Ljava/lang/Object;
.source "NavDestination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavDestination$DeepLinkMatch;,
        Landroidx/navigation/NavDestination$ClassType;
    }
.end annotation


# static fields
.field private static final sClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavAction;",
            ">;"
        }
    .end annotation
.end field

.field private mArguments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation
.end field

.field private mDeepLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/navigation/NavDeepLink;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mIdName:Ljava/lang/String;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mNavigatorName:Ljava/lang/String;

.field private mParent:Landroidx/navigation/NavGraph;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/navigation/NavDestination;->sClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavDestination;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/NavigatorProvider;->getNameForNavigator(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/NavDestination;-><init>(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "navigatorName"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Landroidx/navigation/NavDestination;->mNavigatorName:Ljava/lang/String;

    .line 214
    return-void
.end method

.method static getDisplayName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 166
    const v0, 0xffffff

    if-gt p1, v0, :cond_a

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_12} :catch_13

    return-object v0

    .line 171
    :catch_13
    move-exception v0

    .line 172
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static parseClassFromName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TC;>;)",
            "Ljava/lang/Class<",
            "+TC;>;"
        }
    .end annotation

    .line 136
    .local p2, "expectedClassType":Ljava/lang/Class;, "Ljava/lang/Class<+TC;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1e

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_1e
    sget-object v0, Landroidx/navigation/NavDestination;->sClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 140
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3d

    .line 142
    const/4 v2, 0x1

    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 143
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_35} :catch_36

    .line 146
    goto :goto_3d

    .line 144
    :catch_36
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3d
    :goto_3d
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 152
    return-object v1

    .line 149
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a subclass of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V
    .registers 4
    .param p1, "argumentName"    # Ljava/lang/String;
    .param p2, "argument"    # Landroidx/navigation/NavArgument;

    .line 482
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    .line 485
    :cond_b
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public final addDeepLink(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriPattern"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mDeepLinks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDestination;->mDeepLinks:Ljava/util/ArrayList;

    .line 355
    :cond_b
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mDeepLinks:Ljava/util/ArrayList;

    new-instance v1, Landroidx/navigation/NavDeepLink;

    invoke-direct {v1, p1}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;

    .line 507
    if-nez p1, :cond_e

    iget-object v0, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 508
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v0, "defaultArgs":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    if-eqz v1, :cond_3b

    .line 512
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 513
    .local v2, "argument":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavArgument;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroidx/navigation/NavArgument;->putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 514
    .end local v2    # "argument":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    goto :goto_1f

    .line 516
    :cond_3b
    if-eqz p1, :cond_a8

    .line 517
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 518
    iget-object v1, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    if-eqz v1, :cond_a8

    .line 519
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 520
    .restart local v2    # "argument":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavArgument;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroidx/navigation/NavArgument;->verify(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 526
    .end local v2    # "argument":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    goto :goto_4c

    .line 521
    .restart local v2    # "argument":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong argument type for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 522
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in argument bundle. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 524
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavArgument;

    invoke-virtual {v4}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    .end local v2    # "argument":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/navigation/NavArgument;>;"
    :cond_a8
    return-object v0
.end method

.method buildDeepLinkIds()[I
    .registers 9

    .line 390
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 391
    .local v0, "hierarchy":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/navigation/NavDestination;>;"
    move-object v1, p0

    .line 393
    .local v1, "current":Landroidx/navigation/NavDestination;
    :goto_6
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 394
    .local v2, "parent":Landroidx/navigation/NavGraph;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v3

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-eq v3, v4, :cond_19

    .line 395
    :cond_16
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 397
    :cond_19
    move-object v1, v2

    .line 398
    .end local v2    # "parent":Landroidx/navigation/NavGraph;
    if-nez v1, :cond_3e

    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 400
    .local v2, "deepLinkIds":[I
    const/4 v3, 0x0

    .line 401
    .local v3, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    .line 402
    .local v5, "destination":Landroidx/navigation/NavDestination;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getId()I

    move-result v7

    aput v7, v2, v3

    .line 403
    .end local v5    # "destination":Landroidx/navigation/NavDestination;
    move v3, v6

    goto :goto_27

    .line 404
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_3d
    return-object v2

    .line 398
    .end local v2    # "deepLinkIds":[I
    .end local v3    # "index":I
    :cond_3e
    goto :goto_6
.end method

.method public final getAction(I)Landroidx/navigation/NavAction;
    .registers 5
    .param p1, "id"    # I

    .line 425
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mActions:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavAction;

    .line 427
    .local v0, "destination":Landroidx/navigation/NavAction;
    :goto_d
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_1f

    .line 429
    :cond_11
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v1

    .line 427
    :cond_1f
    :goto_1f
    return-object v1
.end method

.method public final getArguments()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/navigation/NavArgument;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    .line 197
    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 196
    :goto_d
    return-object v0
.end method

.method getDisplayName()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mIdName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 271
    iget v0, p0, Landroidx/navigation/NavDestination;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavDestination;->mIdName:Ljava/lang/String;

    .line 273
    :cond_c
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mIdName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .registers 2

    .line 254
    iget v0, p0, Landroidx/navigation/NavDestination;->mId:I

    return v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 290
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getNavigatorName()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mNavigatorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Landroidx/navigation/NavGraph;
    .registers 2

    .line 243
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mParent:Landroidx/navigation/NavGraph;

    return-object v0
.end method

.method public hasDeepLink(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "deepLink"    # Landroid/net/Uri;

    .line 319
    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 366
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mDeepLinks:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 367
    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_6
    const/4 v1, 0x0

    .line 370
    .local v1, "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDeepLink;

    .line 371
    .local v2, "deepLink":Landroidx/navigation/NavDeepLink;
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/navigation/NavDeepLink;->getMatchingArguments(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    .line 372
    .local v3, "matchingArguments":Landroid/os/Bundle;
    if-eqz v3, :cond_33

    .line 373
    new-instance v4, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 374
    invoke-virtual {v2}, Landroidx/navigation/NavDeepLink;->isExactDeepLink()Z

    move-result v5

    invoke-direct {v4, p0, v3, v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Z)V

    .line 375
    .local v4, "newMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v1, :cond_32

    invoke-virtual {v4, v1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result v5

    if-lez v5, :cond_33

    .line 376
    :cond_32
    move-object v1, v4

    .line 379
    .end local v2    # "deepLink":Landroidx/navigation/NavDeepLink;
    .end local v3    # "matchingArguments":Landroid/os/Bundle;
    .end local v4    # "newMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    :cond_33
    goto :goto_b

    .line 380
    :cond_34
    return-object v1
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/common/R$styleable;->Navigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/common/R$styleable;->Navigator_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavDestination;->setId(I)V

    .line 227
    iget v1, p0, Landroidx/navigation/NavDestination;->mId:I

    invoke-static {p1, v1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigation/NavDestination;->mIdName:Ljava/lang/String;

    .line 228
    sget v1, Landroidx/navigation/common/R$styleable;->Navigator_android_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavDestination;->setLabel(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    return-void
.end method

.method public final putAction(II)V
    .registers 4
    .param p1, "actionId"    # I
    .param p2, "destId"    # I

    .line 439
    new-instance v0, Landroidx/navigation/NavAction;

    invoke-direct {v0, p2}, Landroidx/navigation/NavAction;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 440
    return-void
.end method

.method public final putAction(ILandroidx/navigation/NavAction;)V
    .registers 6
    .param p1, "actionId"    # I
    .param p2, "action"    # Landroidx/navigation/NavAction;

    .line 449
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->supportsActions()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 455
    if-eqz p1, :cond_19

    .line 458
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mActions:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_13

    .line 459
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavDestination;->mActions:Landroidx/collection/SparseArrayCompat;

    .line 461
    :cond_13
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mActions:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 462
    return-void

    .line 456
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an action with actionId 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAction(I)V
    .registers 3
    .param p1, "actionId"    # I

    .line 470
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mActions:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_5

    .line 471
    return-void

    .line 473
    :cond_5
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->delete(I)V

    .line 474
    return-void
.end method

.method public final removeArgument(Ljava/lang/String;)V
    .registers 3
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Landroidx/navigation/NavDestination;->mArguments:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 495
    return-void

    .line 497
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public final setId(I)V
    .registers 3
    .param p1, "id"    # I

    .line 264
    iput p1, p0, Landroidx/navigation/NavDestination;->mId:I

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavDestination;->mIdName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public final setLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 282
    iput-object p1, p0, Landroidx/navigation/NavDestination;->mLabel:Ljava/lang/CharSequence;

    .line 283
    return-void
.end method

.method final setParent(Landroidx/navigation/NavGraph;)V
    .registers 2
    .param p1, "parent"    # Landroidx/navigation/NavGraph;

    .line 233
    iput-object p1, p0, Landroidx/navigation/NavDestination;->mParent:Landroidx/navigation/NavGraph;

    .line 234
    return-void
.end method

.method supportsActions()Z
    .registers 2

    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v1, p0, Landroidx/navigation/NavDestination;->mIdName:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 539
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Landroidx/navigation/NavDestination;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 542
    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :goto_2b
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v1, p0, Landroidx/navigation/NavDestination;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3e

    .line 546
    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Landroidx/navigation/NavDestination;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 549
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
