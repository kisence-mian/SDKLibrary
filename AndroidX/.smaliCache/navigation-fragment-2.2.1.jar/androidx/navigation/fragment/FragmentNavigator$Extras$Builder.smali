.class public final Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;
.super Ljava/lang/Object;
.source "FragmentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/FragmentNavigator$Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mSharedElements:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;->mSharedElements:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;
    .registers 4
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;->mSharedElements:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    return-object p0
.end method

.method public addSharedElements(Ljava/util/Map;)Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;"
        }
    .end annotation

    .line 398
    .local p1, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    .local v1, "sharedElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 400
    .local v2, "view":Landroid/view/View;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 401
    .local v3, "name":Ljava/lang/String;
    if-eqz v2, :cond_27

    if-eqz v3, :cond_27

    .line 402
    invoke-virtual {p0, v2, v3}, Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;

    .line 404
    .end local v1    # "sharedElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "name":Ljava/lang/String;
    :cond_27
    goto :goto_8

    .line 405
    :cond_28
    return-object p0
.end method

.method public build()Landroidx/navigation/fragment/FragmentNavigator$Extras;
    .registers 3

    .line 432
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;->mSharedElements:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/FragmentNavigator$Extras;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
