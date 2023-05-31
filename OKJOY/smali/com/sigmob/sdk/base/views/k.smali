.class public Lcom/sigmob/sdk/base/views/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x4

.field public static final c:I = -0x1

.field public static final d:I = 0x80

.field public static final e:Landroid/graphics/Paint$Style;

.field public static final f:I

.field public static final g:I = 0xff

.field public static final h:Landroid/graphics/Paint$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/k;->e:Landroid/graphics/Paint$Style;

    sget v0, Lcom/sigmob/sdk/base/views/i;->a:I

    sput v0, Lcom/sigmob/sdk/base/views/k;->f:I

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/k;->h:Landroid/graphics/Paint$Style;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
