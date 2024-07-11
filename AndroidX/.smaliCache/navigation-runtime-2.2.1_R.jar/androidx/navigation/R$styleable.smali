.class public final Landroidx/navigation/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActivityNavigator:[I

.field public static final ActivityNavigator_action:I = 0x1

.field public static final ActivityNavigator_android_name:I = 0x0

.field public static final ActivityNavigator_data:I = 0x2

.field public static final ActivityNavigator_dataPattern:I = 0x3

.field public static final ActivityNavigator_targetPackage:I = 0x4

.field public static final NavHost:[I

.field public static final NavHost_navGraph:I

.field public static final NavInclude:[I

.field public static final NavInclude_graph:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Landroidx/navigation/R$styleable;->ActivityNavigator:[I

    .line 151
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f010004

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroidx/navigation/R$styleable;->NavHost:[I

    .line 174
    new-array v0, v0, [I

    const v1, 0x7f010005

    aput v1, v0, v3

    sput-object v0, Landroidx/navigation/R$styleable;->NavInclude:[I

    return-void

    nop

    :array_1e
    .array-data 4
        0x1010003
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
