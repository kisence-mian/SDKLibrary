.class public final Landroidx/cardview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_android_minHeight:I = 0x1

.field public static final CardView_android_minWidth:I = 0x0

.field public static final CardView_cardBackgroundColor:I = 0x2

.field public static final CardView_cardCornerRadius:I = 0x3

.field public static final CardView_cardElevation:I = 0x4

.field public static final CardView_cardMaxElevation:I = 0x5

.field public static final CardView_cardPreventCornerOverlap:I = 0x7

.field public static final CardView_cardUseCompatPadding:I = 0x6

.field public static final CardView_contentPadding:I = 0x8

.field public static final CardView_contentPaddingBottom:I = 0xc

.field public static final CardView_contentPaddingLeft:I = 0x9

.field public static final CardView_contentPaddingRight:I = 0xa

.field public static final CardView_contentPaddingTop:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 185
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroidx/cardview/R$styleable;->CardView:[I

    return-void

    :array_a
    .array-data 4
        0x101013f
        0x1010140
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
