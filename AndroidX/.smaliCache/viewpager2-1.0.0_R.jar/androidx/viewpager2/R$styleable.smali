.class public final Landroidx/viewpager2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ViewPager2:[I

.field public static final ViewPager2_android_orientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100c4

    aput v2, v0, v1

    sput-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
