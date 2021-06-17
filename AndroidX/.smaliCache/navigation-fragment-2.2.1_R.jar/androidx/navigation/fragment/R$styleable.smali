.class public final Landroidx/navigation/fragment/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DialogFragmentNavigator:[I

.field public static final DialogFragmentNavigator_android_name:I

.field public static final FragmentNavigator:[I

.field public static final FragmentNavigator_android_name:I

.field public static final NavHostFragment:[I

.field public static final NavHostFragment_defaultNavHost:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010003

    aput v3, v1, v2

    sput-object v1, Landroidx/navigation/fragment/R$styleable;->DialogFragmentNavigator:[I

    .line 54
    new-array v1, v0, [I

    aput v3, v1, v2

    sput-object v1, Landroidx/navigation/fragment/R$styleable;->FragmentNavigator:[I

    .line 73
    new-array v0, v0, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Landroidx/navigation/fragment/R$styleable;->NavHostFragment:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
