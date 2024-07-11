.class public Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "DialogFragmentNavigator.java"

# interfaces
.implements Landroidx/navigation/FloatingWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/DialogFragmentNavigator;
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
            "Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "fragmentNavigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;>;"
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .registers 3
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    .line 171
    const-class v0, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    .line 172
    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 3

    .line 219
    iget-object v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 222
    return-object v0

    .line 220
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment class was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 190
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/fragment/R$styleable;->DialogFragmentNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/fragment/R$styleable;->DialogFragmentNavigator_android_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 195
    invoke-virtual {p0, v1}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->setClassName(Ljava/lang/String;)Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    .line 197
    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return-void
.end method

.method public final setClassName(Ljava/lang/String;)Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;
    .registers 2
    .param p1, "className"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->mClassName:Ljava/lang/String;

    .line 209
    return-object p0
.end method
