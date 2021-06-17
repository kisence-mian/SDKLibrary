.class public Landroidx/navigation/fragment/FragmentNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "FragmentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/FragmentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Destination"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "fragmentNavigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/fragment/FragmentNavigator$Destination;>;"
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .registers 3
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    .line 293
    const-class v0, Landroidx/navigation/fragment/FragmentNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    .line 294
    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 3

    .line 341
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$Destination;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 344
    return-object v0

    .line 342
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment class was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 312
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/fragment/R$styleable;->FragmentNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/fragment/R$styleable;->FragmentNavigator_android_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 317
    invoke-virtual {p0, v1}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->setClassName(Ljava/lang/String;)Landroidx/navigation/fragment/FragmentNavigator$Destination;

    .line 319
    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    return-void
.end method

.method public final setClassName(Ljava/lang/String;)Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .registers 2
    .param p1, "className"    # Ljava/lang/String;

    .line 330
    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator$Destination;->mClassName:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, " class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator$Destination;->mClassName:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 354
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 356
    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
