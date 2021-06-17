.class public final Lcom/facebook/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_com_facebook_auxiliary_view_position:I = 0x4

.field public static final com_facebook_like_view_com_facebook_foreground_color:I = 0x0

.field public static final com_facebook_like_view_com_facebook_horizontal_alignment:I = 0x5

.field public static final com_facebook_like_view_com_facebook_object_id:I = 0x1

.field public static final com_facebook_like_view_com_facebook_object_type:I = 0x2

.field public static final com_facebook_like_view_com_facebook_style:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 203
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/common/R$styleable;->com_facebook_like_view:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f0103e8
        0x7f0103e9
        0x7f0103ea
        0x7f0103eb
        0x7f0103ec
        0x7f0103ed
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
