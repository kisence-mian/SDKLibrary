.class Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z

.field private static sConsumedField:Ljava/lang/reflect/Field;

.field private static sConsumedFieldFetched:Z


# instance fields
.field private mInsets:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1670
    const/4 v0, 0x0

    sput-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1673
    sput-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1677
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1678
    invoke-static {}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    .line 1679
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 3
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1681
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1682
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    .line 1683
    return-void
.end method

.method private static createWindowInsetsInstance()Landroid/view/WindowInsets;
    .registers 7

    .line 1708
    sget-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_1a

    .line 1710
    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    .line 1713
    goto :goto_18

    .line 1711
    :catch_12
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_18
    sput-boolean v1, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1716
    :cond_1a
    sget-object v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_34

    .line 1718
    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1719
    .local v0, "consumed":Landroid/view/WindowInsets;
    if-eqz v0, :cond_2d

    .line 1720
    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2e

    return-object v4

    .line 1724
    .end local v0    # "consumed":Landroid/view/WindowInsets;
    :cond_2d
    goto :goto_34

    .line 1722
    :catch_2e
    move-exception v0

    .line 1723
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_34
    :goto_34
    sget-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    const/4 v4, 0x0

    if-nez v0, :cond_50

    .line 1731
    :try_start_39
    const-class v0, Landroid/view/WindowInsets;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_47
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_39 .. :try_end_47} :catch_48

    .line 1734
    goto :goto_4e

    .line 1732
    :catch_48
    move-exception v0

    .line 1733
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1735
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_4e
    sput-boolean v1, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    .line 1737
    :cond_50
    sget-object v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_6a

    .line 1739
    :try_start_54
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_63
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_54 .. :try_end_63} :catch_64

    return-object v0

    .line 1740
    :catch_64
    move-exception v0

    .line 1741
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1746
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_6a
    return-object v3
.end method


# virtual methods
.method build()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1696
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    .line 1697
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 7
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1687
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_12

    .line 1688
    iget v1, p1, Ltds/androidx/core/graphics/Insets;->left:I

    iget v2, p1, Ltds/androidx/core/graphics/Insets;->top:I

    iget v3, p1, Ltds/androidx/core/graphics/Insets;->right:I

    iget v4, p1, Ltds/androidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    .line 1691
    :cond_12
    return-void
.end method
