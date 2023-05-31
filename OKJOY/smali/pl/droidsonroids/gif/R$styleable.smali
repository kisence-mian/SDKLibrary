.class public final Lpl/droidsonroids/gif/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GifTextureView:[I

.field public static final GifTextureView_gifSource:I = 0x0

.field public static final GifTextureView_isOpaque:I = 0x1

.field public static final GifView:[I

.field public static final GifView_freezesAnimation:I = 0x0

.field public static final GifView_loopCount:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    return-void

    .line 17
    :array_10
    .array-data 4
        0x7f0100cf
        0x7f0100d0
    .end array-data

    .line 20
    :array_18
    .array-data 4
        0x7f0100d1
        0x7f0100d2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
